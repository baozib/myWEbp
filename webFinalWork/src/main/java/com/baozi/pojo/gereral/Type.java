package com.baozi.pojo.gereral;


import lombok.*;

@Builder(toBuilder = true)
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Type {

  private Integer id;
  private String typeName;

}
