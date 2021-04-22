package com.jyb.reader.service;

import com.jyb.entity.Test;
import com.jyb.reader.mapper.TestMapper;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class MyBatisPlusTest {
    @Resource
    private TestMapper testMapper;
    @org.junit.Test
    public  void testInsert(){
        Test test = new Test();
        test.setContent("MyBatisPlus测试");
        testMapper.insert(test);
    }
}
