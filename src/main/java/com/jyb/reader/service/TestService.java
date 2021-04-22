package com.jyb.reader.service;

import com.jyb.reader.mapper.TestMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
public class TestService {
    @Resource
    private TestMapper testMapper;
    @Transactional(propagation = Propagation.REQUIRED)
    public void batchImport(){
        for(int i = 0 ; i<5; i++){
//            if(i==3){
//                throw  new RuntimeException("预料之外的错误");
//            }
            testMapper.insertSample();
        }
    }
}
