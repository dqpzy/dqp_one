package orz.dqp.service;

import orz.dqp.pojo.TbItem;
import orz.dqp.utils.EasyUIDateGridResult;
import orz.dqp.utils.FjnyResult;

public interface TbItemService {
	public EasyUIDateGridResult getTbItemList(Integer page, Integer rows);
	
	public  FjnyResult saveTbItem(TbItem tbItem) ;
}
