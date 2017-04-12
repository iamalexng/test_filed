package com.bs.fshop.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.ArrayUtils;
import org.apache.log4j.Logger;


/**
 * 反射工具类
 *
 * @author : 吴圣(890160)
 * @version : 1.0
 */
public abstract class ReflectionUtils {
	
	private static final Logger log = Logger.getLogger(ReflectionUtils.class);
    /**
     * 缓存方法
     */
    private static final Map<Class<?>, Method[]> METHODS_CACHEMAP = new HashMap<Class<?>, Method[]>();

    /**
     * 反射 取值、设值,合并两个对象(Field same only )
     *
     * @param fromobj
     * @param toobj
     * @param fieldspec
     * @param <T>
     */
    public static <T> void copyProperties(T fromobj, T toobj, String... fieldspec) {
        for (String filename : fieldspec) {
            Object val = ReflectionUtils.invokeGetterMethod(fromobj, filename);
            ReflectionUtils.invokeSetterMethod(toobj, filename, val);
        }

    }

    /**
     * 调用Getter方法
     *
     * @param obj
     * @param propertyName
     * @return
     */
    public static Object invokeGetterMethod(Object obj, String propertyName) {
        String getterMethodName = "get" + StringHelper.firstCharToUpperCase(propertyName);
        return invokeMethod(obj, getterMethodName, null, null);
    }

    /**
     * 调用Setter方法,不指定参数的类型
     *
     * @param obj
     * @param propertyName
     * @param value
     */
    public static void invokeSetterMethod(Object obj, String propertyName, Object value) {
        invokeSetterMethod(obj, propertyName, value, null);
    }

    /**
     * 调用Setter方法,指定参数的类型
     *
     * @param obj
     * @param propertyName
     * @param value
     * @param propertyType
     */
    public static void invokeSetterMethod(Object obj, String propertyName, Object value, Class<?> propertyType) {
        propertyType = propertyType != null ? propertyType : value
                .getClass();
        String setterMethodName = "set" + StringHelper.firstCharToUpperCase(propertyName);
        invokeMethod(obj, setterMethodName, new Class<?>[]{propertyType}, new Object[]{value});
    }

    /**
     * 直接调用对象方法，忽视private/protected修饰符
     *
     * @param obj
     * @param methodName
     * @param parameterTypes
     * @param args
     * @return
     */
    public static Object invokeMethod(final Object obj,
                                      final String methodName, final Class<?>[] parameterTypes,
                                      final Object[] args) {
        Method method = obtainAccessibleMethod(obj, methodName, parameterTypes);
        if (method == null) {
            throw new IllegalArgumentException(
                    "Devkit: Could not find method [" + methodName
                            + "] on target [" + obj + "].");
        }
        try {
            return method.invoke(obj, args);
        } catch (Exception e) {
            log.debug(e);
        }
        return null;
    }

    /**
     * 循环向上转型，获取对象的DeclaredMethod,并强制设置为可访问
     * 如向上转型到Object仍无法找到，返回null
     * <p/>
     * 用于方法需要被多次调用的情况，先使用本函数先取得Method,然后调用Method.invoke(Object obj,Object... args)
     *
     * @param obj
     * @param methodName
     * @param parameterTypes
     * @return
     */
    public static Method obtainAccessibleMethod(final Object obj,
                                                final String methodName, final Class<?>... parameterTypes) {
        Class<?> superClass = obj.getClass();
        Class<Object> objClass = Object.class;
        for (; superClass != objClass; superClass = superClass.getSuperclass()) {
            Method method = null;
            try {
                method = superClass.getDeclaredMethod(methodName,
                        parameterTypes);
                method.setAccessible(true);
                return method;
            } catch (Exception e) {
                // Method不在当前类定义，继续向上转型
            }
        }
        return null;
    }

    @SuppressWarnings("rawtypes")
	public static Method obtainMethod(Class klass,String name){
    	Method[] methods = klass.getDeclaredMethods();
		for(Method m:methods){
			if(m.getName().equals(name)){
				return m;
			}
		}
		return null;
    }
    /**
     * 不能确定方法是否包含参数时，通过方法名匹配获得方法
     *
     * @param obj
     * @param methodName
     * @return
     */
    public static Method obtainMethod(final Object obj,
                                      final String methodName) {
        Class<?> clazz = obj.getClass();
        Method[] methods = METHODS_CACHEMAP.get(clazz);
        if (methods == null) { // 尚未缓存
            methods = clazz.getDeclaredMethods();
            METHODS_CACHEMAP.put(clazz, methods);
        }
        for (Method method : methods) {
            if (method.getName().equals(methodName))
                return method;
        }
        return null;

    }

    /**
     * 直接读取对象属性值
     * 忽视private/protected修饰符，不经过getter函数
     *
     * @param obj
     * @param fieldName
     * @return
     */
    public static Object obtainFieldValue(final Object obj, final String fieldName) {
        Field field = obtainAccessibleField(obj, fieldName);
        if (field == null) {
            throw new IllegalArgumentException("Devkit: could not find field [" + fieldName + "] on target [" + obj + "]");
        }
        Object retval = null;
        try {
            retval = field.get(obj);
        } catch (Exception e) {
            log.debug(e);
        }
        return retval;

    }

    /**
     * 直接设置对象属性值
     * 忽视private/protected修饰符，不经过setter函数
     *
     * @param obj
     * @param fieldName
     * @param value
     */
    public static void setFieldValue(final Object obj, final String fieldName, final Object value) {
        Field field = obtainAccessibleField(obj, fieldName);
        if (field == null) {
            throw new IllegalArgumentException("Devkit: could not find field [" + fieldName + "] on target [" + obj + "]");
        }
        try {
            field.set(obj, value);
        } catch (Exception e) {
            log.debug(e);
        }
    }

    /**
     * 循环向上转型，获取对象的DeclaredField,并强制设为可访问
     * 如向上转型Object仍无法找到，返回null
     *
     * @param obj
     * @param fieldName
     * @return
     */
    public static Field obtainAccessibleField(final Object obj,
                                              final String fieldName) {
        Class<?> superClass = obj.getClass();
        Class<Object> objClass = Object.class;
        for (; superClass != objClass; superClass = superClass.getSuperclass()) {
            try {
                Field field = superClass.getDeclaredField(fieldName);
                field.setAccessible(true);
                return field;
            } catch (Exception e) {
                log.debug(e);
            }
        }
        return null;
    }
    
    public static Field[] getAllFields(Object obj){
		Field[] fields = new Field[]{};
		for (Class<?> clazz = obj.getClass(); clazz != Object.class; clazz = clazz
				.getSuperclass()) {
			fields = (Field[]) ArrayUtils.addAll(fields, clazz.getDeclaredFields());
		}
		return fields;
	}
}
