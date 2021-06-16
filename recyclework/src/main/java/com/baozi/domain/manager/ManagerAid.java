package com.baozi.domain.manager;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import org.apache.ibatis.type.Alias;

@Builder(toBuilder = true)
@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
@TableName("manager_aid")
@ApiModel("管理贫困者的贫困资源申请")
public class ManagerAid extends Manager{

  @ApiModelProperty("资源申请编号")
  @TableId(type = IdType.AUTO)
  private Long id;

  @ApiModelProperty("捐赠者id")
  @TableField("user_id")
  private Long userId;

  @ApiModelProperty("用户名称")
  private String name;

  @ApiModelProperty("捐赠者图片证明路径")
  @TableField("aid_pic")
  private String aidPic;

}
