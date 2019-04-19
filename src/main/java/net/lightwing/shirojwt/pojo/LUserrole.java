package net.lightwing.shirojwt.pojo;

import com.baomidou.mybatisplus.annotation.TableName;

public class LUserrole {

  private long urid;
  private long uid;
  private long rid;


  public long getUrid() {
    return urid;
  }

  public void setUrid(long urid) {
    this.urid = urid;
  }


  public long getUid() {
    return uid;
  }

  public void setUid(long uid) {
    this.uid = uid;
  }


  public long getRid() {
    return rid;
  }

  public void setRid(long rid) {
    this.rid = rid;
  }

}
