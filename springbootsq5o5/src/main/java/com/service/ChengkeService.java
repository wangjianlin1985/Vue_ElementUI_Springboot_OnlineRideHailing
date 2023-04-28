package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChengkeEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChengkeVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChengkeView;


/**
 * 乘客
 *
 * @author 
 * @email 
 * @date 2022-05-07 19:52:19
 */
public interface ChengkeService extends IService<ChengkeEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChengkeVO> selectListVO(Wrapper<ChengkeEntity> wrapper);
   	
   	ChengkeVO selectVO(@Param("ew") Wrapper<ChengkeEntity> wrapper);
   	
   	List<ChengkeView> selectListView(Wrapper<ChengkeEntity> wrapper);
   	
   	ChengkeView selectView(@Param("ew") Wrapper<ChengkeEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChengkeEntity> wrapper);
   	

}

