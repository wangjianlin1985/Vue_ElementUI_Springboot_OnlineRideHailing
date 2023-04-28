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


import com.dao.SijiDao;
import com.entity.SijiEntity;
import com.service.SijiService;
import com.entity.vo.SijiVO;
import com.entity.view.SijiView;

@Service("sijiService")
public class SijiServiceImpl extends ServiceImpl<SijiDao, SijiEntity> implements SijiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SijiEntity> page = this.selectPage(
                new Query<SijiEntity>(params).getPage(),
                new EntityWrapper<SijiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<SijiEntity> wrapper) {
		  Page<SijiView> page =new Query<SijiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<SijiVO> selectListVO(Wrapper<SijiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public SijiVO selectVO(Wrapper<SijiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<SijiView> selectListView(Wrapper<SijiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public SijiView selectView(Wrapper<SijiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
