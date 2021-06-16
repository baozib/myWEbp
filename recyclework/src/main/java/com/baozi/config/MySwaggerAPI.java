package com.baozi.config;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger.web.*;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;


/**
 *
 * 接口文档 供测试人员(前端使用)
 * @author baozi
 * @data   2021/6/14
 */
@EnableSwagger2
@Configuration
public class MySwaggerAPI {

    /**
     * 查看当前项目的状态
     */
    @Value("${spring.profiles.active}")
    private String environment;

    /**
     * 配置Swagger
     * @return
     */
    @Bean
    public Docket createRestApi() {

        if(!StringUtils.equals(environment, "dev")){
            return null;
        }

        return new Docket(DocumentationType.SWAGGER_2)
                //select()可以进行过滤和扫描
                .select()
                //接受所有接口
                .apis(RequestHandlerSelectors.any())
                .build()
                .groupName("recycle-platform")
                //添加info信息
                .apiInfo(apiInfo());
    }

    /**
     * 过滤无用信息[model]
     */
    @Bean
    public UiConfiguration getUiConfiguration(){
        return   UiConfigurationBuilder.builder().deepLinking(true)
                .displayOperationId(false)
                // 隐藏UI上的Models模块
                .defaultModelsExpandDepth(-1)
                .defaultModelExpandDepth(0)
                .defaultModelRendering(ModelRendering.EXAMPLE)
                .displayRequestDuration(false)
                .docExpansion(DocExpansion.NONE)
                .filter(false)
                .maxDisplayedTags(null)
                .operationsSorter(OperationsSorter.ALPHA)
                .showExtensions(false)
                .tagsSorter(TagsSorter.ALPHA)
                .validatorUrl(null).build();
    }

    /**
     * 个人信息
     */
    public ApiInfo apiInfo() {
        return new ApiInfo(
                //最顶部的信息
                "包子的Api文档",
                //描述
                "测试环境的接口页面展示\n" +
                        "  测试人员可进行自定义接口调用 \n\n" +
                        "  [Terms of service]  跳转到github\n" +
                        "  [Send email]  向我发送邮件",
                //版本
                "V1.0",
                //GitHub仓库
                "https://github.com/baozib/WeWebWork",
                //个人信息
                new Contact("baozi", "http://localhost:8585/recycle-form", "1293612832@qq.com"),
                "https://github.com/baozib/WeWebWork",
                "3",
                new ArrayList<>()
        );
    }
}
