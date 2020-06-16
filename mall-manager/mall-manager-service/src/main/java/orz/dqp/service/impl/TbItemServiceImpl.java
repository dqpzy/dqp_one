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
import orz.dqp.utils.FjnyResult;
import orz.dqp.utils.IDUtils;

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

	@Override
	public FjnyResult saveTbItem(TbItem tbItem) {
		long getItemId = IDUtils.getItemId();
		tbItem.setId(getItemId);
		int insertSelective = tbItemMapper.insertSelective(tbItem);
		if(insertSelective<0) {
			return FjnyResult.build(500, "添加商品失败");
		}
		return FjnyResult.ok(tbItem);
	}

}
