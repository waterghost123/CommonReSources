package com.itcase.service;

import com.itcase.domain.Permission;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface IPermissionService {
    List<Permission> findAll() throws Exception;

    void save(Permission permission)throws Exception;

    List<Permission> findOtherPermission(String roleId)throws Exception;
}
