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
 * 邮箱登陆realm
 * 林浩20180606
 */
public class UserRealmByEmail extends AuthorizingRealm {

    @Autowired
    private UserMapper userDao;

    public String getName(){
        return "UserRealmByEmail";
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        String email = principalCollection.getPrimaryPrincipal().toString();
        List<String> roles = userDao.queryRolesByEmail(email);
        HashSet<String> roleSet = new HashSet<String>(roles);

        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(roleSet);


        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) authenticationToken;
        //是用户输入的用户名
        String email = usernamePasswordToken.getUsername();



        User tbUser = null;
        try {
            tbUser = userDao.checkEmail(email);
        } catch (Exception e) {
            e.printStackTrace();

        }

        if (tbUser == null) {
            throw new UnknownAccountException("没有用户名：" + email);
        }

        String dbPassword = tbUser.getPassword();

        char[] tokenPassword = usernamePasswordToken.getPassword();
        String userPassword = new String(tokenPassword);
        SimpleHash simpleHash = new SimpleHash("MD5", userPassword, tbUser.getPasswordSalt());
        System.out.println("userPassword==="+userPassword+"---------------"+"dbPassword==="+dbPassword);
        if (null == dbPassword || !dbPassword.equals(simpleHash.toString())) {
            throw new IncorrectCredentialsException("密码错误");
        }

        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(email, userPassword, getName());

        return authenticationInfo;

    }
}
