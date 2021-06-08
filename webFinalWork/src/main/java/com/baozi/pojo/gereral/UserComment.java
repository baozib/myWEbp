package com.baozi.pojo.gereral;


import lombok.*;

@Builder(toBuilder = true)
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class UserComment {

  private Integer id;
  private String donor;
  private String poor;
  private String eviPic;
  private String content;
  private Integer starLevel;

}
