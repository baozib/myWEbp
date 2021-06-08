package com.baozi.pojo.poor;

import lombok.*;


@Builder(toBuilder = true)
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Poor {

  private String id;
  private String poorName;
  private String poorSex;
  private String poorTele;
  private java.sql.Date poorBirth;
  private Integer poorFundid;

}
