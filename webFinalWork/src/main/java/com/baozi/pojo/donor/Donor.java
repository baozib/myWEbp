package com.baozi.pojo.donor;


import lombok.*;



@Builder(toBuilder = true)
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Donor{

  private String id;
  private String donorName;
  private String donorSex;
  private String donorTele;
  private String donorBirth;
  private Integer donorDepotid;

}
