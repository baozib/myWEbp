package com.baozi.pojo.manager;


import lombok.*;

@Data
@ToString
@Builder(toBuilder = true)
@NoArgsConstructor
@AllArgsConstructor
public class ManagerCareer extends Manager{

  private Integer id;
  private String userId;
  private Integer careerId;
  private String prove;

}
