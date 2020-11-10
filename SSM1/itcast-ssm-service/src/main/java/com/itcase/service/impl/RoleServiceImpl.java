package com.itcase.service.impl;

import com.itcase.dao.IRoleDao;
import com.itcase.domain.Role;
import com.itcase.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RoleServiceImpl implements IRoleService {

    @Autowired
    private IRoleDao roleDao;


    @Override
    public List<Role> findAll() throws Exception {
        return roleDao.findAll();
    }

    @Override
    public void save(Role role)throws Exception {
        roleDao.save(role);
    }

    @Override
    public Role findById(String roleId) throws Exception {
        return roleDao.findById(roleId);
    }

    @Override
    public void addPermissionToRole( String[] permissionIds,String roleId) throws Exception {
        for (String permissionId:permissionIds){
            roleDao.addPermissionToRole(permissionId,roleId);
        }
    }
}
