package com.baozi.pojo.gereral;


import com.baozi.utils.myframe.AffluxPojo;
import lombok.*;

import java.util.Map;

@Data
@Builder(toBuilder = true)
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class User {

  private String uuid;
  private String id;
  private String username;
  private String password;
  private String mailbox;
  private String avatar;
  private Integer career;

  /**
   * 链式编程
   */
  public User Assignment(Map map) {
    AffluxPojo.affluxResult(this,map);
    return this;
  }

}
