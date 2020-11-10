package com.itcase.contorl;

import com.itcase.domain.Product;
import com.itcase.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductControl {

    @Autowired
    private IProductService productService;

    @RequestMapping("/save.do")
    public String saveProduct(Product product) throws Exception {
        System.out.println(product);
        productService.saveProduct(product);
        return "redirect:findAll.do";
    }

    @RequestMapping("/findAll.do")
    public ModelAndView findAll()throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Product> products=productService.findAll();
        mv.addObject("productList",products);
        mv.setViewName("product-list1");
        return mv;
    }

}
