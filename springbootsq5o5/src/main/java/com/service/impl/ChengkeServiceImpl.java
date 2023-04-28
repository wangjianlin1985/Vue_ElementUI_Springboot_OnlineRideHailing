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


import com.dao.ChengkeDao;
import com.entity.ChengkeEntity;
import com.service.ChengkeService;
import com.entity.vo.ChengkeVO;
import com.entity.view.ChengkeView;

@Service("chengkeService")
public class ChengkeServiceImpl extends ServiceImpl<ChengkeDao, ChengkeEntity> implements ChengkeService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChengkeEntity> page = this.selectPage(
                new Query<ChengkeEntity>(params).getPage(),
                new EntityWrapper<ChengkeEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChengkeEntity> wrapper) {
		  Page<ChengkeView> page =new Query<ChengkeView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChengkeVO> selectListVO(Wrapper<ChengkeEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChengkeVO selectVO(Wrapper<ChengkeEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChengkeView> selectListView(Wrapper<ChengkeEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChengkeView selectView(Wrapper<ChengkeEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
