package com.baozi.pojo.manager;


import lombok.*;

@ToString
@Data
@Builder(toBuilder = true)
@AllArgsConstructor
@NoArgsConstructor
public class ManagerAid extends Manager{

  private Integer id;
  private String userId;
  private String aidPic;

}
