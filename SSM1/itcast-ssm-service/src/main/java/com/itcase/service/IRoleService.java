package com.itcase.service;

import com.itcase.domain.Role;

import java.util.List;

public interface IRoleService {

    public List<Role> findAll() throws Exception;

    void save(Role role)throws Exception;

    Role findById(String roleId)throws Exception;

    void addPermissionToRole( String[] permissionIds,String roleId)throws Exception;
}
