/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
        
        m.addAttribute("validator", new ValidationDTO());
        
        return "validation_form";
        
    }
    
}
