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
@TableName("manager_comm")
@ApiModel("管理用户的评论表")
public class ManagerComm extends Manager{

  @ApiModelProperty("评论表id，自增")
  @TableId(type = IdType.AUTO)
  private Long id;

  @ApiModelProperty("评论者")
  @TableField("evaluator")
  private Long evaluator;

  @ApiModelProperty("评论者名称")
  private String evaluatorName;

  @ApiModelProperty("被评论者")
  @TableField("evaluated")
  private Long evaluated;

  @ApiModelProperty("被评论者名称")
  private String evaluatedName;

  @ApiModelProperty("内容")
  @TableField("content")
  private String content;

}
