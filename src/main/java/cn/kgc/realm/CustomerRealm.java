package cn.kgc.realm;

import cn.kgc.pojo.Employee;
import cn.kgc.pojo.Perm;
import cn.kgc.service.IEmployeeService;
import cn.kgc.service.impl.EmployeeService;
import cn.kgc.util.ApplicationContextUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.apache.shiro.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.List;

//自定义realm
public class CustomerRealm extends AuthorizingRealm {

    @Resource
    private EmployeeService employeeService;

    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        //获取身份信息
        String primaryPrincipal=(String)principals.getPrimaryPrincipal();
        System.out.println("调用授权验证："+primaryPrincipal);
        //根据主身份信息获取角色和权限管理

//        Employee employee = employeeService.findRoleByEmpName(primaryPrincipal);
        Employee employee = employeeService.findDeptByEmpName(primaryPrincipal);

        //授权角色信息
        if(!CollectionUtils.isEmpty(employee.getDepartment())){
            SimpleAuthorizationInfo simpleAuthorizationInfo=new SimpleAuthorizationInfo();
           /* employee.getRoles().forEach(role->{
                simpleAuthorizationInfo.addRole(role.getRolename());*/
           //授予部门权限
//            simpleAuthorizationInfo.addRole(employee.getDepartment().getName());
                employee.getDepartment().forEach(role->{
                simpleAuthorizationInfo.addRole(role.getName());
                //权限信息
                List<Perm> perms=employeeService.findPermByDeptId(employee.getDepartmentId());
                if(!CollectionUtils.isEmpty(perms)){
                   perms.forEach(perm->{
                       simpleAuthorizationInfo.addStringPermission(perm.getPermname());
                   });
                }
            });
            return  simpleAuthorizationInfo;
        }


        return null;
    }
    //认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        System.out.println("=======================");
        //根据身份信息
        String principal=(String) token.getPrincipal();

        Employee employee=employeeService.findByEmpName(principal);
        if(employee !=null){

            /*Md5Hash md5Hash=new Md5Hash("0","5^!s",1024);
            String password = md5Hash.toHex();*/
            // 获取盐值，即用户名
            ByteSource salt = ByteSource.Util.bytes(employee.getSalt());
            return  new SimpleAuthenticationInfo(employee.getName(),employee.getPassword(), salt ,this.getName());
        }


       return null;
    }
}
