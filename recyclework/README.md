# 项目结构
    -recyclework                              主项目父工程
        -src                                  程序编写文件
            -baozi-log                        日志文件
            -main                             主包
                -java                         存放java代码
                -resouces                     存放配置信息
                -webapp                       存放用户可视化界面和样式
                    -CSS                      前端页面样式
                    -images                   静态图片
                    -JS                       js语言
                    -json                     虚数据存放
                    -WEB-INF                  WEB项目地，外部不可访问
                        -jsp                  jsp页面
                            -indexPage2.jsp   用户界面
                            -loginPage.jsp    登入界面
                            -manger-page.jsp  管理员界面
                            -registerPage.jsp 注册界面
                        -web.xml              前后端交互配置信息
            -test                             SpringBoot_Junit测试类
        -target                               Class字节码存放位置
        -.gitignore                           上传到代码托管平台的文件控制
        -pom.xml                              版本控制，外部包依赖
        -README.md                            用户手册
# 包结构
    -config     配置层
    -controller 接口层
    -domain     实体类层
    -handle     处理层
    -mapper     数据访问层
    -service    业务逻辑层
    -utils      工具类层
# 项目介绍
    本项目:
        后端基于SpringBoot+SpringSecurity+Mybatis-Plus+swagger2+MySql+Druid
        前端基于**铁牛写**
        外部服务器使用OSS文件存储服务器，第三方邮件服务器
        外部插件使用lombok,common-lang3,guava,
# 接口说明
    使用restFul Api
        GET（SELECT）：从服务器取出资源（一项或多项）。
        POST（CREATE）：在服务器新建一个资源。
        PUT（UPDATE）：在服务器更新资源（客户端提供改变后的完整资源）。完整
        PATCH（UPDATE）：在服务器更新资源（客户端提供改变的属性）。   部分
        DELETE（DELETE）：从服务器删除资源。
    
    开启服务器，在dev(yaml配置文件配置)环境中搜索http://localhost:8585/swagger-ui.html可查看接口说明
# 数据库说明
    -
    -
    -
    -
    -
    -
    -
    -
    -