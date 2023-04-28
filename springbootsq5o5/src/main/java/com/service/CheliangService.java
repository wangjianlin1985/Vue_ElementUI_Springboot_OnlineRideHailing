package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.CheliangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.CheliangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.CheliangView;


/**
 * 车辆
 *
 * @author 
 * @email 
 * @date 2022-05-07 19:52:19
 */
public interface CheliangService extends IService<CheliangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CheliangVO> selectListVO(Wrapper<CheliangEntity> wrapper);
   	
   	CheliangVO selectVO(@Param("ew") Wrapper<CheliangEntity> wrapper);
   	
   	List<CheliangView> selectListView(Wrapper<CheliangEntity> wrapper);
   	
   	CheliangView selectView(@Param("ew") Wrapper<CheliangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CheliangEntity> wrapper);
   	

}

