package com.baozi.domain;


import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @desc   主用户类 包括管理员/贫困者/捐赠者
 * @author baozi
 * @data   2021/6/12
 */
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
@TableName("user")
@ApiModel("公用用户(管理员/贫困者/捐赠者)")
public class User {

  /**
   *   id主键 为赋值填充雪花算法
   */
  @ApiModelProperty("用户标识符")
  @TableId(type = IdType.ASSIGN_ID)
  private Long id;

  @ApiModelProperty("账户")
  @TableField("username")
  private String username;

  @ApiModelProperty("密码")
  @TableField("password")
  private String password;

  @ApiModelProperty("邮箱")
  @TableField("mailbox")
  private String mailbox;

  @ApiModelProperty("用户头像")
  @TableField("avatar")

  private String avatar;
  @ApiModelProperty("用户身份")
  @TableField("career")
  private Long career;

  @ApiModelProperty("用户名称")
  @TableField("alias")
  private String alias;

  /**
   * 使用新版日期API
   */
  @ApiModelProperty("用户创建时间")
  @TableField( fill = FieldFill.INSERT)
  private LocalDate createTime;

  /**
   * 使用新版日期API
   */
  @ApiModelProperty("用户修改时间")
  @TableField( fill = FieldFill.INSERT_UPDATE)
  private LocalDate updateTime;

  @ApiModelProperty("版本控制")
  @TableField("version")
  private Long version;




}
