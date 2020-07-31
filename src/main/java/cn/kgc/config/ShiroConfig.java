package cn.kgc.config;

import cn.kgc.realm.CustomerRealm;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;

/*
用来整合shiro框架相关的配置类
 */
//@Configuration
public class ShiroConfig {
    //1. 创建shiroFilter 负责拦截所有请求
    @Bean
    public ShiroFilterFactoryBean getshiroFilterFactoryBean(DefaultSecurityManager defaultSecurityManager){
        ShiroFilterFactoryBean shiroFilterFactoryBean=new ShiroFilterFactoryBean();
        //给filter设置安全管理器
        shiroFilterFactoryBean.setSecurityManager(defaultSecurityManager);
        //配置系统受限资源
        //配置系统公共资源
        Map<String,String> map=new HashMap<String,String>();
        map.put("/user/login","anon"); //为公共资源 放行
        map.put("/user/register","anon"); //为公共资源 放行
        map.put("/register.jsp","anon"); //为公共资源 放行*/
        map.put("/**","authc");//auth(即要做认证也要做授权)请求这个资源需要认证和权限 anon
        //默认认证界面路径
        shiroFilterFactoryBean.setLoginUrl("/login.jsp");

        shiroFilterFactoryBean.setFilterChainDefinitionMap(map);

        return shiroFilterFactoryBean;
    }
    //2.创建安全管理器
    @Bean
    public DefaultWebSecurityManager getdefaultWebSecurityManager(Realm realm){
        DefaultWebSecurityManager defaultWebSecurityManager=new DefaultWebSecurityManager();
        //给安全管理器设置realm
        defaultWebSecurityManager.setRealm(realm);
        return defaultWebSecurityManager;
    }

    //3. 创建自定义realm
    @Bean
    public Realm getRealm(){
        CustomerRealm customerRealm=new CustomerRealm();
        //修改凭证校验匹配器
        HashedCredentialsMatcher credentialsMatcher=new HashedCredentialsMatcher();
        //设置加密算法为md5
        credentialsMatcher.setHashAlgorithmName("MD5");
        //设置散列次数
        credentialsMatcher.setHashIterations(1024);
        customerRealm.setCredentialsMatcher(credentialsMatcher);
       return  customerRealm;
    };
}
