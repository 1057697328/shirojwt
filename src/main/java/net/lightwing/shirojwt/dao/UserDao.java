package net.lightwing.shirojwt.dao;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import net.lightwing.shirojwt.pojo.LUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserDao extends BaseMapper<LUser>
{
    LUser getUserWithPermission(@Param("account") String account);
}
