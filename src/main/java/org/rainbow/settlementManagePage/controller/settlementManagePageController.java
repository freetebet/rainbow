package org.rainbow.settlementManagePage.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class settlementManagePageController {

	@RequestMapping(value = "/settlementManagePage", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		
//		return "/settlementManagePage/OrderStatement";
		return "/settlementManagePage/OrderStatementEdit";
		
	}
}
