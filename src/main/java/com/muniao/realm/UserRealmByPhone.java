package com.muniao.realm;

import com.muniao.dao.UserMapper;
import com.muniao.entity.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;

/**
 * 手机号码登陆realm
 * 林浩20180606
 */
public class UserRealmByPhone extends AuthorizingRealm {


    @Override
    public String getName() {
        return "MyBatisRealm";
    }

    @Autowired
    private UserMapper userDAO;
    /**
     * 获取授权信息（获取权限和角色信息）
     * @param principals 封装用户名的对象
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {


        //查询角色信息
        String phone = principals.getPrimaryPrincipal().toString();
        //角色集合
        List<String> roleList = null;
        try {
            roleList = userDAO.queryRolesByPhone(phone);
        } catch (Exception e) {
            e.printStackTrace();
        }
        HashSet<String> roles = new HashSet<String>(roleList);

        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(roles);


        return authorizationInfo;
    }

    /**
     * 登录认证
     * @param token 就是用户名和密码的封装类
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {


        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) token;
        //是用户输入的用户名
        String userInput = usernamePasswordToken.getUsername();

        System.out.println("userInput==========="+userInput);

            User tbUser = null;
            if(!userInput.endsWith(".com")){
                try {
                    tbUser = userDAO.checkTelephone(userInput);
                } catch (Exception e) {
                    e.printStackTrace();

                }

                if (tbUser == null) {
                    throw new UnknownAccountException("没有用户名：" + userInput);
                }

                String dbPassword = tbUser.getPassword();
                char[] tokenPassword = usernamePasswordToken.getPassword();
                String userPassword = new String(tokenPassword);
                SimpleHash simpleHash = new SimpleHash("MD5", userPassword, "12345");
                System.out.println("userPassword==="+userPassword+"---------------"+"dbPassword==="+dbPassword);
                if (null == dbPassword || !dbPassword.equals(simpleHash.toString())) {
                    throw new IncorrectCredentialsException("密码错误");
                }

                SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(userInput, userPassword, getName());

                return authenticationInfo;

            }else {
                System.out.println("userInput================"+userInput);
                try {
                    tbUser = userDAO.checkEmail(userInput);
                } catch (Exception e) {
                    e.printStackTrace();

                }

                if (tbUser == null) {
                    throw new UnknownAccountException("没有用户名：" + userInput);
                }

                String dbPassword = tbUser.getPassword();

                char[] tokenPassword = usernamePasswordToken.getPassword();
                String userPassword = new String(tokenPassword);



                SimpleHash simpleHash = new SimpleHash("MD5", userPassword, tbUser.getPasswordSalt());
                System.out.println("userPassword==="+userPassword+"---------------"+"dbPassword==="+dbPassword);
                if (null == dbPassword || !dbPassword.equals(simpleHash.toString())) {
                    throw new IncorrectCredentialsException("密码错误");
                }

                SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(userInput, userPassword, getName());

                return authenticationInfo;

            }



    }
}
