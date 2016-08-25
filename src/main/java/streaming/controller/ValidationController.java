/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.dto.ValidationDTO;

/**
 *
 * @author pro
 */
@Controller
public class ValidationController {
    
    @RequestMapping(value = "/validation", method = RequestMethod.GET)
    public String validationGET(Model m){
        int a=0;
        int b=10/a;
        
        m.addAttribute("validator", new ValidationDTO());
        
        return "validation_form";
        
    }
    
    @RequestMapping(value = "/validation", method = RequestMethod.POST)
    public String validationPOST(@ModelAttribute("validator") @Valid ValidationDTO validDTO, BindingResult result){
        
        //checks validation
        if(result.hasErrors())
            return "validation_form";
        
        return "redirect:/home";
        
    }
    
}
