package com.itcase.service.impl;

import com.itcase.dao.IUserDao;
import com.itcase.domain.Role;
import com.itcase.domain.UserInfo;
import com.itcase.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao userDao;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;


    @Override
    public List<UserInfo> findAll() throws Exception {
        return userDao.findAll();
    }

    /*@Override
    public void save(UserInfo userInfo) throws Exception{
        userDao.save(userInfo);
    }*/

   @Override
    public void save(UserInfo userInfo) throws Exception {
        userInfo.setPassword(bCryptPasswordEncoder.encode(userInfo.getPassword()));
        userDao.save(userInfo);
    }

    @Override
    public UserInfo findById(String id) throws  Exception{
       UserInfo userInfo=userDao.findById(id);
        return userInfo;
    }

   @Override
    public List<Role> findOtherRoles(String userId) throws Exception{
       List<Role> roleList=userDao.findOtherRoles(userId);
        return roleList;
    }

    @Override
    public void addRoleToUser(Long userId, Long[] roleIds) throws Exception {
        for (Long roleId:roleIds){
            userDao.addRoleToUser(userId,roleId);
        }
    }


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        UserInfo userInfo=null;
        try{
            userInfo=userDao.findByUsername(username);
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println(userInfo+"----------doubi");
        List<Role> roles=userInfo.getRoles();
        System.out.println(roles.size()+"--------出来啊");
        List<SimpleGrantedAuthority> authoritys=getAuthority(roles);
        System.out.println(authoritys);
        //"{noop}"+
        User user=new User(userInfo.getUsername(),userInfo.getPassword(),userInfo.getStatus()==0?false:true,true,true,true,authoritys);
        System.out.println(user+"我起飞了");
        return user;
    }

    private List<SimpleGrantedAuthority> getAuthority(List<Role> roles){
        List<SimpleGrantedAuthority> authorities=new ArrayList();
        for (Role role:roles){
            System.out.println(role.getRoleName());
            authorities.add(new SimpleGrantedAuthority(role.getRoleName()));
        }
        return authorities;
    }


}
