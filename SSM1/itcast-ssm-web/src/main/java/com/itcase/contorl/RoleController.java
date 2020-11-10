package com.itcase.contorl;

import com.itcase.domain.Permission;
import com.itcase.domain.Role;
import com.itcase.service.IPermissionService;
import com.itcase.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private IRoleService roleService;
    @Autowired
    private IPermissionService permissionService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv=new ModelAndView();
        List<Role> roleList=roleService.findAll();
        mv.addObject("roleList",roleList);
        mv.setViewName("role-list");
        return mv;
    }
    @RequestMapping("/save.do")
    public String save(Role role) throws Exception {
        roleService.save(role);
        return "redirect:findAll.do";
    }

    @RequestMapping("/findRoleByAllPermission.do")
    public ModelAndView findRoleByIdAndAllPermission(@RequestParam(name = "id",required = true) String roleId)throws Exception{
        ModelAndView mv=new ModelAndView();
        System.out.println("--------------"+roleId+"-----------出去");
        Role role=roleService.findById(roleId);
        mv.addObject("role",role);
        List<Permission> permissionList=permissionService.findOtherPermission(roleId);
        System.out.println(permissionList);
        mv.addObject("permissionList",permissionList);
        mv.setViewName("role-permission-add");
        return mv;
    }
    @RequestMapping("/addPermissionToRole.do")
    public String addPermissionToRole(@RequestParam(name = "ids",required = true) String [] ids,@RequestParam(name ="roleId",required = true) String roleId)throws Exception{
        roleService.addPermissionToRole(ids,roleId);
        return "redirect:findAll.do";
    }
}
