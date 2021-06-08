package com.baozi.pojo.poor;

import lombok.*;

@Builder(toBuilder = true)
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class PoorApply {

  private Integer id;
  private Integer poorFundid;
  private String eviPic;
  private String content;
  private Boolean isUse;

}
