package net.lightwing.shirojwt.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.List;

@TableName("l_user")
@Data
public class LUser {

  private long uid;
  private String account;
  private String password;
  private String name;
  private long rid;

  /**
   * 角色
   */
  private LRole role;

  /**
   * 权限列表
   */
  private List<LPermission> permissions;

}
