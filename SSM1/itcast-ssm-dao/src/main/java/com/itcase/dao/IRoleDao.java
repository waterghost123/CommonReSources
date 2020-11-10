package com.itcase.dao;

import com.itcase.domain.Role;
import org.apache.ibatis.annotations.*;
import org.springframework.security.core.parameters.P;

import java.util.List;

public interface IRoleDao {
    //根据用户id查询出所有对应的角色
    @Select("select * from role where id in (select roleId from users_role where userId=#{usersId})")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "roleName", column = "roleName"),
            @Result(property = "roleDesc", column = "roleDesc"),
            @Result(property = "permissions" ,column = "id",javaType = java.util.List.class,many =@Many(select = "com.itcase.dao.IPermissionDao.findPermissionByRoleId"))
    })
    List<Role> findRoleByUserId(String usersId) throws Exception;

    @Select("select * from role")
    List<Role> findAll() throws Exception;

    @Insert("insert into role(roleName,roleDesc) values(#{roleName},#{roleDesc})")
    void save(Role role);

    @Select("select * from role where id =#{roleId}")
    Role findById(String roleId)throws  Exception;

    @Insert("insert into role_permission(permissionId,roleId) values('${permissionId}','${roleId}')")
    void addPermissionToRole( @Param("permissionId")String permissionId,@Param("roleId") String roleId)throws Exception;
}
