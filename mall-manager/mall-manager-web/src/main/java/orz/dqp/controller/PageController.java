package orz.dqp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping("/")
	public String showIndex(){
		return "index";
		
	}
	@RequestMapping("/{page}")
	public String page(@PathVariable String page){//形参为上面映射的page的值前面加上@pathVariable
		return page;
	}
}
