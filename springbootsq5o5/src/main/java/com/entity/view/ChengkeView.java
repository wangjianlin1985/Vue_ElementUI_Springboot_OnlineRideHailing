package com.entity.view;

import com.entity.ChengkeEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 乘客
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-05-07 19:52:19
 */
@TableName("chengke")
public class ChengkeView  extends ChengkeEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ChengkeView(){
	}
 
 	public ChengkeView(ChengkeEntity chengkeEntity){
 	try {
			BeanUtils.copyProperties(this, chengkeEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
