package com.itcase.service;

import com.itcase.domain.Role;
import com.itcase.domain.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface IUserService extends UserDetailsService {

    List<UserInfo> findAll()throws Exception;

    void save(UserInfo userInfo)throws Exception;

    UserInfo findById(String id)throws  Exception;

    List<Role> findOtherRoles(String userId)throws Exception;

    void addRoleToUser(Long userId, Long[] roleIds) throws Exception;

    /*void save(UserInfo userInfo) throws Exception;*/
}
