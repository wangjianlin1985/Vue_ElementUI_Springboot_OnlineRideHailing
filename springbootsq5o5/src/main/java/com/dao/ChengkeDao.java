package com.dao;

import com.entity.ChengkeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChengkeVO;
import com.entity.view.ChengkeView;


/**
 * 乘客
 * 
 * @author 
 * @email 
 * @date 2022-05-07 19:52:19
 */
public interface ChengkeDao extends BaseMapper<ChengkeEntity> {
	
	List<ChengkeVO> selectListVO(@Param("ew") Wrapper<ChengkeEntity> wrapper);
	
	ChengkeVO selectVO(@Param("ew") Wrapper<ChengkeEntity> wrapper);
	
	List<ChengkeView> selectListView(@Param("ew") Wrapper<ChengkeEntity> wrapper);

	List<ChengkeView> selectListView(Pagination page,@Param("ew") Wrapper<ChengkeEntity> wrapper);
	
	ChengkeView selectView(@Param("ew") Wrapper<ChengkeEntity> wrapper);
	

}
