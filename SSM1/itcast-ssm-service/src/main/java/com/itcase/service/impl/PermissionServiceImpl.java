package com.itcase.service.impl;

import com.itcase.dao.IPermissionDao;
import com.itcase.domain.Permission;
import com.itcase.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class PermissionServiceImpl implements IPermissionService {


    @Autowired
    IPermissionDao permissionDao;

    @Override
    public List<Permission> findAll() throws Exception {
        List<Permission> permissions=permissionDao.findAll();
        return permissions;
    }

    @Override
    public void save(Permission permission) throws Exception {
        permissionDao.save(permission);
    }

    @Override
    public List<Permission> findOtherPermission(String roleId) throws Exception {
        return permissionDao.findOtherPermission(roleId);
    }
}
