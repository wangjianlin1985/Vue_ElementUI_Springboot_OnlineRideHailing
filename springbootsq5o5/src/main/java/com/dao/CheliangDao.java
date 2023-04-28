package com.dao;

import com.entity.CheliangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.CheliangVO;
import com.entity.view.CheliangView;


/**
 * 车辆
 * 
 * @author 
 * @email 
 * @date 2022-05-07 19:52:19
 */
public interface CheliangDao extends BaseMapper<CheliangEntity> {
	
	List<CheliangVO> selectListVO(@Param("ew") Wrapper<CheliangEntity> wrapper);
	
	CheliangVO selectVO(@Param("ew") Wrapper<CheliangEntity> wrapper);
	
	List<CheliangView> selectListView(@Param("ew") Wrapper<CheliangEntity> wrapper);

	List<CheliangView> selectListView(Pagination page,@Param("ew") Wrapper<CheliangEntity> wrapper);
	
	CheliangView selectView(@Param("ew") Wrapper<CheliangEntity> wrapper);
	

}
