package com.itcase.contorl;

import com.itcase.domain.SysLog;
import com.itcase.service.ISysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;
@Component
@Aspect
public class LogAop {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private ISysLogService sysLogService;

    private Date visitTime;
    private Class  clazz;
    private Method method;
    private String url;

    @Before("execution(* com.itcase.contorl.*.*(..))")
    public  void doBefore(JoinPoint jp) throws NoSuchMethodException {
        visitTime=new Date();
        clazz=jp.getTarget().getClass();
        String methodName=jp.getSignature().getName();
        Object[] args=jp.getArgs();
        if(args==null||args.length==0){
            method=clazz.getMethod(methodName);
        }else {
            Class[] classArgs=new Class[args.length];
            for (int i=0;i<args.length;i++){
                classArgs[i]=args[i].getClass();
            }
            clazz.getMethod(methodName,classArgs);
        }
    }

    @After("execution(* com.itcase.contorl.*.*(..))")
    public  void doAfter(JoinPoint jp) throws Exception {
        long time=new Date().getTime()-visitTime.getTime();
        if (clazz!=null&&method!=null&&clazz!=LogAop.class){
            RequestMapping classAnnotation= (RequestMapping) clazz.getAnnotation(RequestMapping.class);
            if(classAnnotation!=null){
                String [] classValue=classAnnotation.value();
                RequestMapping methodAnnotation=method.getAnnotation(RequestMapping.class);
                if (methodAnnotation!=null){
                    String[] methodValue=methodAnnotation.value();
                    url=classValue[0]+methodValue[0];
                    String ip=request.getRemoteAddr();
                    SecurityContext context= SecurityContextHolder.getContext();
                    User user= (User) context.getAuthentication().getPrincipal();
                    String username=user.getUsername();
                    SysLog sysLog=new SysLog();
                    sysLog.setExecutionTime(time);
                    sysLog.setIp(ip);
                    sysLog.setMethod("[类名]"+clazz.getName()+"[方法名]"+method.getName());
                    sysLog.setUrl(url);
                    sysLog.setUsername(username);
                    sysLog.setVisitTime(visitTime);
                    sysLogService.save(sysLog);
                }
            }

        }

    }
}
