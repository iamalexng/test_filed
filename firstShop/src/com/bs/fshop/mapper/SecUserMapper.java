package com.bs.fshop.mapper;

import com.bs.fshop.po.SecUser;
import com.bs.fshop.po.SecUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * 
 * @title:
 * @descrption: 
 * @team:
 * @className SecUserMapper.java
 * @author 吴圣(890160)
 * @createDate 创建时间：2015-9-28 上午9:41:54
 */
public interface SecUserMapper {
    int countByExample(SecUserExample example);

    int deleteByExample(SecUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SecUser record);

    int insertSelective(SecUser record);

    List<SecUser> selectByExample(SecUserExample example);

    SecUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SecUser record, @Param("example") SecUserExample example);

    int updateByExample(@Param("record") SecUser record, @Param("example") SecUserExample example);

    int updateByPrimaryKeySelective(SecUser record);

    int updateByPrimaryKey(SecUser record);
}