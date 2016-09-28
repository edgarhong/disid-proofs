// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.service.impl;

import com.springsource.petclinic.domain.security.LoginRole;
import com.springsource.petclinic.domain.security.UserLogin;
import com.springsource.petclinic.domain.security.UserLoginRole;
import com.springsource.petclinic.repository.GlobalSearch;
import com.springsource.petclinic.repository.security.UserLoginRoleRepository;
import com.springsource.petclinic.service.api.UserLoginRoleService;
import com.springsource.petclinic.service.impl.UserLoginRoleServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserLoginRoleServiceImpl_Roo_Service_Impl {
    
    declare parents: UserLoginRoleServiceImpl implements UserLoginRoleService;
    
    declare @type: UserLoginRoleServiceImpl: @Service;
    
    declare @type: UserLoginRoleServiceImpl: @Transactional(readOnly = true);
    
    public UserLoginRoleRepository UserLoginRoleServiceImpl.userLoginRoleRepository;
    
    @Autowired
    public UserLoginRoleServiceImpl.new(UserLoginRoleRepository userLoginRoleRepository) {
        this.userLoginRoleRepository = userLoginRoleRepository;
    }

    @Transactional(readOnly = false)
    public UserLoginRole UserLoginRoleServiceImpl.save(UserLoginRole entity) {
        return userLoginRoleRepository.save(entity);
    }
    
    @Transactional(readOnly = false)
    public void UserLoginRoleServiceImpl.delete(Long id) {
         userLoginRoleRepository.delete(id);
    }
    
    @Transactional(readOnly = false)
    public List<UserLoginRole> UserLoginRoleServiceImpl.save(Iterable<UserLoginRole> entities) {
        return userLoginRoleRepository.save(entities);
    }
    
    @Transactional(readOnly = false)
    public void UserLoginRoleServiceImpl.delete(Iterable<Long> ids) {
        List<UserLoginRole> toDelete = userLoginRoleRepository.findAll(ids);
        userLoginRoleRepository.deleteInBatch(toDelete);
    }
    
    public List<UserLoginRole> UserLoginRoleServiceImpl.findAll() {
        return userLoginRoleRepository.findAll();
    }
    
    public List<UserLoginRole> UserLoginRoleServiceImpl.findAll(Iterable<Long> ids) {
        return userLoginRoleRepository.findAll(ids);
    }
    
    public UserLoginRole UserLoginRoleServiceImpl.findOne(Long id) {
        return userLoginRoleRepository.findOne(id);
    }
    
    public long UserLoginRoleServiceImpl.count() {
        return userLoginRoleRepository.count();
    }
    
    public Page<UserLoginRole> UserLoginRoleServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return userLoginRoleRepository.findAll(globalSearch, pageable);
    }
    
    public Long UserLoginRoleServiceImpl.countByUserLoginId(Long id) {
        return userLoginRoleRepository.countByUserLoginId(id);
    }
    
    public Long UserLoginRoleServiceImpl.countByLoginRoleId(Long id) {
        return userLoginRoleRepository.countByLoginRoleId(id);
    }
    
    public Page<UserLoginRole> UserLoginRoleServiceImpl.findAllByUserLogin(UserLogin userLoginField, GlobalSearch globalSearch, Pageable pageable) {
        return userLoginRoleRepository.findAllByUserLogin(userLoginField, globalSearch, pageable);
    }
    
    public Page<UserLoginRole> UserLoginRoleServiceImpl.findAllByLoginRole(LoginRole loginRoleField, GlobalSearch globalSearch, Pageable pageable) {
        return userLoginRoleRepository.findAllByLoginRole(loginRoleField, globalSearch, pageable);
    }
    
}
