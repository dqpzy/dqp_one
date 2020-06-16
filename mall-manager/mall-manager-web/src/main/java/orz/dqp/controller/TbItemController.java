package orz.dqp.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import orz.dqp.pojo.TbItem;
import orz.dqp.service.TbItemService;
import orz.dqp.utils.EasyUIDateGridResult;
import orz.dqp.utils.FjnyResult;
@Controller
@RequestMapping("/item")
public class TbItemController {
	
	@Autowired
	public TbItemService tbItemService;
	
	@RequestMapping("/getItem")
	@ResponseBody
	public EasyUIDateGridResult getTbItemList(@RequestParam(defaultValue="1")Integer page
			,@RequestParam(defaultValue="10")Integer rows){
		
				return tbItemService.getTbItemList(page, rows);
	}

	@RequestMapping("/save")
	@ResponseBody
	public FjnyResult saveTbItem(TbItem tbItem) {
		return null;
	}
}
