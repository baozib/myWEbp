package com.baozi.utils.myframe;


import com.baozi.pojo.gereral.User;
import lombok.SneakyThrows;
import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;
import java.util.function.Consumer;


/**
 *
 * @desc   web层和service层提供服务的pojo工具类
 * @author baozi
 * @data   2021/5/20
 */
public class AffluxPojo {

    private static final String FINE_ERROR = "没有找到方法";
    private static final String SEPARATOR = "-";
    private static final String SPACE = "";
    private static final String Path = "\\webFinalWork\\src\\main\\webapp\\avatar\\";

    /**
     * 对构造器进行私有化 不让外部访问
     */
    private AffluxPojo(){}

    /**
     * 实现注入Pojo类数据
     * @param t    参数t作为依赖的Pojo类
     * @param map  map作为前端传递的参数
     * @param <T>  可接受任何pojo类的数据
     */
    public static <T> void affluxResult(T t, Map<String, String[]> map) {
        Class obj = t.getClass();
        for (Map.Entry<String, String[]> en : map.entrySet()) {
            try {
                String s = gainString(en.getKey());
                Field field = obj.getDeclaredField(en.getKey());
                Optional.ofNullable(field).ifPresent((f) -> {
                        f.setAccessible(true);
                        String simpleName = f.getType().getSimpleName();
                        clsFactory(simpleName, obj, s, t, en.getValue()[0]);
                    }
                );
            } catch (Exception e) {
                System.out.println(FINE_ERROR);
            }
        }
    }

    /**
     * 内部方法 不允许外部调用
     * @param param 进行字符串拼接
     * @return 返回setXxxx
     */
    private static String gainString(String param) {
        StringBuffer key = new StringBuffer("set");
        key.append(param.substring(0, 1).toUpperCase() + param.substring(1, param.length()));
        return key.toString();
    }

    /**
     * 用于用户设置主键的UUID，过滤掉‘-’,从36位减到32位
     * @return  返回对应的字符串实例
     */
    public static String gainUUID(){
        return UUID.randomUUID().toString().replaceAll(SEPARATOR,SPACE);
    }

    /**
     * 生成用户传入头像的File文件地址
     * @param s  接受文件名字
     * @return   返回生成的文件
     */
    @SneakyThrows
    public static File gainAvatarFile(String s) {
        StringBuilder sb = new StringBuilder();
        sb.append(Path);
        sb.append(s);
        File file = new File(sb.toString());
        if (!file.exists()) {
            file.createNewFile();
        }
        return file;
    }

    /**
     * 对map进行赋值传递给前端
     * @param map 用户所给的map
     * @param t   用户所赋予的pojo对象
     */
    public static<T> void affluxMap(Map<String, String> map, T t){}

    /**
     *
     * @param clsname 参数的类型
     * @param obj     类的反射对象
     * @param method  方法名称
     * @param t       调用此方法的对象
     * @param param   赋值参数
     * @param <T>     可为任意对象实例
     * @return        返回Method 赋值失败为null
     */
    @SneakyThrows
    private static <T> void clsFactory(String clsname, Class obj, String method, T t, String param) {
        Method m = null;
        if (StringUtils.equals("Integer", clsname)) {
            m = obj.getDeclaredMethod(method, Integer.class);
            m.invoke(t, Integer.parseInt(param));
        } else if (StringUtils.equals("String", clsname)) {
            m = obj.getDeclaredMethod(method, String.class);
            m.invoke(t, param);
        }
    }

}
