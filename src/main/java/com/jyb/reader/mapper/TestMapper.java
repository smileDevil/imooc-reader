package com.jyb.reader.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jyb.entity.Test;

public interface TestMapper extends BaseMapper<Test> {
    public void insertSample();
}
