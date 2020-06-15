package orz.dqp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import orz.dqp.mapper.TbItemMapper;
import orz.dqp.pojo.TbItem;
import orz.dqp.pojo.TbItemExample;
import orz.dqp.service.TbItemService;
import orz.dqp.utils.EasyUIDateGridResult;

@Service
public class TbItemServiceImpl implements TbItemService {

	@Resource
	private TbItemMapper tbItemMapper;

	@Override
	public EasyUIDateGridResult getTbItemList(Integer page, Integer rows) {
		PageHelper.startPage(page, rows);
		TbItemExample example = new TbItemExample();
		List<TbItem> list = tbItemMapper.selectByExample(example);
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).toString());
		}
		PageInfo<TbItem> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		EasyUIDateGridResult easyUIDateGridResult = new EasyUIDateGridResult(total, list);
		return easyUIDateGridResult;

	}

}
