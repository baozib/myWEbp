package com.baozi.pojo.manager;


import lombok.*;

@ToString
@Data
@Builder(toBuilder = true)
@AllArgsConstructor
@NoArgsConstructor
public class ManagerComm extends Manager{

  private Integer id;
  private String evaluator;
  private String evaluated;
  private String content;

}
