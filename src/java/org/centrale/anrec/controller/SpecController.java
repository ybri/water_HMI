/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.centrale.anrec.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Collection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.centrale.anrec.items.Water;
import org.centrale.anrec.manager.ItemManager;
import org.centrale.anrec.manager.ItemManagerImpl;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author yann
 */
public class SpecController {
    public SpecController() {
    }

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView handleGET(HttpServletRequest request, 
            HttpServletResponse response) throws Exception{
        ItemManager theItemManager = ItemManagerImpl.getInstance();
        ModelAndView result = new ModelAndView("spec");
        String waterId = request.getParameter("id");
        Collection<Water> list = theItemManager.findByWaterId(Integer.parseInt(waterId));
        
        ObjectMapper mapper = new ObjectMapper();
        String json_list = "";
	try {
		json_list = mapper.writeValueAsString(list);
	} catch (Exception e) {
		e.printStackTrace();
	}

        result.addObject("waters", json_list);
        return result;
    }
    
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView handlePOST(HttpServletRequest request, 
            HttpServletResponse response) throws Exception{
        ModelAndView result = new ModelAndView("redirect: panel.water");
        return result;
    }
}
