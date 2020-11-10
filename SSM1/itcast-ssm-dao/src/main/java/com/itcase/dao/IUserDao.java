package com.itcase.dao;

import com.itcase.domain.Role;
import com.itcase.domain.UserInfo;
import org.apache.ibatis.annotations.*;


import java.util.List;

public interface IUserDao {

    @Select("select * from users")
    List<UserInfo> findAll()throws Exception;

    @Select("select * from users where username=#{username}")
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(column = "username",property = "username"),
            @Result(column = "email",property = "email"),
            @Result(column = "password",property = "password"),
            @Result(column = "phoneNum",property = "phoneNum"),
            @Result(column = "status",property = "status"),
            @Result(column = "id",property = "roles",javaType = java.util.List.class,many = @Many(select ="com.itcase.dao.IRoleDao.findRoleByUserId"))
    })
    UserInfo findByUsername(String username);

    @Insert(" insert into users(email,username,password,phoneNum,status) values(#{email},#{username},#{password},#{phoneNum},#{status})")
    void save(UserInfo userInfo)throws  Exception;

    @Select("select * from users where id=#{id}")
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(column = "username",property = "username"),
            @Result(column = "email",property = "email"),
            @Result(column = "password",property = "password"),
            @Result(column = "phoneNum",property = "phoneNum"),
            @Result(column = "status",property = "status"),
            @Result(column = "id",property = "roles",javaType = java.util.List.class,many = @Many(select ="com.itcase.dao.IRoleDao.findRoleByUserId"))
    })
    UserInfo findById(String id)throws Exception;

    @Select("select * from role where id not in (select roleId from users_role where userId=#{userId})")
    List<Role> findOtherRoles(String userId);


   @Insert("insert into users_role(userId,roleId) values(${userId),${rolesId})")
    void addRoleToUser( @Param("userId") Long userId,@Param("rolesId") Long rolesId)throws Exception;
}
