package com.jiuyv.supplychain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jiuyv.supplychain.service.ContractService;


@RestController
@RequestMapping("supplychain/contract")
public class ContractController {
    @Autowired
    private ContractService contractService;



}
