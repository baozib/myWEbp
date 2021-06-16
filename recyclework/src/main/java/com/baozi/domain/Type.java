package com.baozi.domain;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@ApiModel("可选种类")
@TableName("type")
public class Type {

  @TableId(type = IdType.AUTO)
  @ApiModelProperty("种类id")
  private long id;

  @TableField("type_name")
  @ApiModelProperty("种类详情")
  private String typeName;

}
