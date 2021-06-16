package com.baozi.domain.manager;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;

@Builder(toBuilder = true)
@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
@TableName("manager_career")
@ApiModel("管理用户的身份")
public class ManagerCareer extends Manager{

  @ApiModelProperty("管理用户身份的编号")
  @TableId(type = IdType.AUTO)
  private Long id;

  @ApiModelProperty("用户的ID")
  @TableField("userId")
  private Long userId;

  @ApiModelProperty("用户的名称")
  private String name;

  @ApiModelProperty("用户的职位")
  @TableField("careerId")
  private Long careerId;

  @ApiModelProperty("用户提供的图片证明路径")
  @TableField("prove")
  private String prove;

}
