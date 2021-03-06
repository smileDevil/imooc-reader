package com.jyb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("test")
public class Test {
    @TableId(type = IdType.AUTO)
    @TableField("id")
    private Integer id;
    @TableField("content")//如果字段名与属性名相同，或者符合驼峰命名转换规则，则TableFile可以省略
    private String content;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
//    https://github.com/smileDevil/imooc-reader.git
}
