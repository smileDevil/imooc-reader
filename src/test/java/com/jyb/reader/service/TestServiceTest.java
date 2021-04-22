package com.jyb.reader.service;

import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

//JUnit4运行时自动初始化class容器
//将Junit4的执行权交由SpringTest ，在测试用例执行前自动初始化IOC容器
@RunWith(SpringJUnit4ClassRunner.class)
//JUnit4初始化时 会根据中括号中文件 完成初始化工作
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class TestServiceTest extends TestCase {
    @Resource
    private TestService testService;
    @Test
    public void testBatchImport() {
        testService.batchImport();
    }
}