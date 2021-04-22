package com.jyb.reader.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jyb.entity.Test;
import com.jyb.reader.mapper.TestMapper;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

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

    @org.junit.Test
    public void testUpdate(){
       Test test = testMapper.selectById(34);
       test.setContent("Mapper更新");
       testMapper.updateById(test);
    }

    @org.junit.Test
    public void testDelete(){
        testMapper.deleteById(35);
    }

    @org.junit.Test
    public void testSelect(){
        QueryWrapper<Test> queryWrapper = new QueryWrapper<>();
//        queryWrapper.eq("id",37); // 等于
        queryWrapper.gt("id",30);// qt大于
       List<Test> list = testMapper.selectList(queryWrapper);
        System.out.println(list.get(0).getContent());
    }
}
