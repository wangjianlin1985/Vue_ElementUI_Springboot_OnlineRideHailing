package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.CheliangDao;
import com.entity.CheliangEntity;
import com.service.CheliangService;
import com.entity.vo.CheliangVO;
import com.entity.view.CheliangView;

@Service("cheliangService")
public class CheliangServiceImpl extends ServiceImpl<CheliangDao, CheliangEntity> implements CheliangService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CheliangEntity> page = this.selectPage(
                new Query<CheliangEntity>(params).getPage(),
                new EntityWrapper<CheliangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CheliangEntity> wrapper) {
		  Page<CheliangView> page =new Query<CheliangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<CheliangVO> selectListVO(Wrapper<CheliangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public CheliangVO selectVO(Wrapper<CheliangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<CheliangView> selectListView(Wrapper<CheliangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CheliangView selectView(Wrapper<CheliangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
