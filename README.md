# 合约账本：去中心化智能分账引擎


## 1. 需求分析

随着旅游业发展，景区收入管理问题凸显。门票销售、餐饮商品、广告赞助等多领域收入分配，存在不透明、效率低、易纠纷等问题。传统方式下，门票收入多方分账不透明且到账延迟；餐饮商品销售账目不清易引发矛盾；广告赞助分配流程繁琐影响合作；活动演出分配易现人为错误；住宿交通收入分配不透明导致数据管理难。​
而区块链技术去中心化、不可篡改、可追溯的特性，恰能解决这些难题。我们计划打造基于区块链的分账系统，实现各类销售数据实时同步与透明化，通过自动化分账精准保障各方收益，优化流程、降低成本、增强信任，推动景区运营高效运转与旅游业可持续发展。


## 2. 概要设计

为攻克景区运营中门票销售与分账管理不透明、效率低等难题，我们基于 FISCO BCOS 区块链平台，打造 “合约账本：去中心化智能分账引擎”。该引擎以智能合约为核心，构建去中心化分账体系，重塑景区收入管理模式。​
在系统架构层面，依托 FISCO BCOS 平台，通过智能合约实现自动化分账。其核心模块包括用户信息管理、景区信息管理、票务销售、收入分配及数据查询五大模块。功能设计上，用户信息管理模块支持用户注册登录，并可创建、管理景区信息；票务销售模块提供便捷的票务销售服务；收入分配模块借助智能合约自动执行分账规则，用户可实时追踪分配进程，确保比例精准；数据查询模块则利用区块链浏览器，让每一笔交易记录公开可溯，以去中心化特性保障数据真实可靠。该引擎凭借智能合约与去中心化优势，为景区收入管理带来高效、透明的解决方案。系统具体架构如下图所示：
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/27dfe763-2a4c-477c-ae41-30eeca9bf178)


## 3. 详细设计

###  3.1 系统架构
```
本作品系统架构如下图所示：
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/5e9163bc-2f78-47a5-b476-b5a133dc6ff9)

```

###  3.2 业务流程
  #### 新建供应链流程图
  ![image](https://github.com/rockyhancs/supply-chain/assets/20641831/4f9443cd-efbc-4ba5-b450-0e25550e283f)

  #### 多方签名流程图
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/2ce711ff-43a7-4339-b482-9ff9df70303d)

  #### 模拟支付流程图
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/615f0271-2e25-4869-907e-f5f04a10cb46)

###  3.3 数据表设计
数据库supplychain共包括7个表，各个表设计和字段描述如下：
用于存储用户信息，主要包括用户id、用户名、解密后的密码、创建时间、更新时间以及参与链的ID等6个字段，字段名和类型如图所示：
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/fa2ac1bc-fe3b-426a-9fae-9ab36f84646c)
用于存储已创建供应链信息，主要包括供应链id、供应链名称、供应链描述、创建时间、更新时间、签名状态以及参与链的用户ID等7个字段，字段名和类型如图所示：
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/1515fc0d-7b71-4034-a38f-0ccb62abe703)
用于存储供应链参与者信息，主要包括供应链id、组织名、组织描述、链上分布式身份、创建时间、更新时间、用户id、余额、在webase中的名称、用户链上地址以及用户签名id等11个字段，字段名和类型如图所示：
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/308623cb-a798-4d39-a3f1-6b7187ffe891)
用于存储项目信息，主要包括项目id、供应链id、最近一个项目id、链上等级、参与者id、创建时间、更新时间、分成比例、角色、以及是否签名等10个字段，字段名和类型如图所示：
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/ec7376d8-e911-4fc5-969f-f544af1d237e)
用于存储使用到的存证合约和积分合约信息，主要包括合约id、合约名称、合约abi文件、合约的bin文件和合约的base64编码等5个字段，字段名和类型如图所示：
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/437427fd-ea04-48de-944d-698a1e490d23)
用于存储已部署的合约信息，主要包括id、合约名称、合约链上地址、合约类型、合约描述、部署时间、更新时间、链ID和拥有者did等9个字段，字段名和类型如图所示：
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/d033f960-a11d-4866-9827-3b5590a9adeb)
用于存储已存证的信息，主要id、存证的key、存证的value、存证描述、合约id、证据所有者、创建时间、更新时间、交易id和签名者等10个字段，字段名和类型如图所示：
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/eff5acc4-4f94-47c8-ab92-1d6b820e7bc6)



## 4. 主要测试
测试用例：景区活动分账
### 4.1 首先注册并登录账号
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/8fa9d8cd-daed-442a-af36-4770f2edb653)

  
### 4.2 测试案例中我们注册为某景区，并将景区，广告商、赞助商的分成比例录入系统
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/aeab27a5-6bcf-4caa-8659-71b3271f314b)
### 4.3 由于广告商和赞助商没有签名，某景区不能成功支付，表面这款区块链平台需要 经过多方签名验证才可以记录交易
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/beb55edb-108f-426b-8a42-20f6c9a52fa2)
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/b2369220-05b8-40fa-9590-7c735b603f0b)
### 4.4 广告商和赞助商签名确认后，我们模拟支付 10000 元，款项立即按照签名确认 的比例汇入各方账户，效率极高。
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/fdac559c-ee51-41ed-b8d5-e7186a598b31)
### 4.5 通过 WeBASE 管理平台可以查看到我们演示的这笔交易，已经被记录上链
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/31bf945d-5d87-404c-9c99-8529ccbcc643)
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/96ea65c1-08da-4845-a920-265b09b04369)

总结：通过以上测试，我们验证了该平台的运行速度达到预期，通过交易上链也验证了安全性，能够对供应链上各方提供公平、公正、公开、高效的交易记录服务

## 5. 部署和使用
### 5.1 基础环境介绍
本实验环境依赖以下环境和版本，IP 地址设置为静态固定地址：
①操作系统版本 Centos 7.9.2009
②FISCO BCOS 2.7.2
③WeBASE 1.5.1
④MySQL 5.6.27(Tar 包安装)
⑤maven 3.8.8
⑥node 10.16.2(Wget)
⑦npm 6.9.0
⑧jdk 1.8.0_361
⑨python 3.6

### 5.2  密码说明
① 操作系统账密：root/ibwedu123
② MySQL 数据库密码：root/123456
③ WeBASE 管理平台地址为 http://ip:5000，账密 admin/Ibwedu123（首字母 i 大写）
④ 供应链支付结算平台地址为 http://ip:9528，含三个账户，分别是： 
· supplier/123456
·core/123456
·dealer/123456

### 5.3 操作手册
①启动fiscobcos区块链网络
cd /root/fisco 
bash nodes/127.0.0.1/start_all.sh
② 启动WeBASE中间件管理平台
cd webase-deploy/ 
python3 deploy.py startAll 
输入平台账密和验证码：admin/Ibwedu123 
③启动供应链财管分布式平台前端服务： 
cd ~/fisco/supply-chain-demo/frontend/supplychain/ 
npm run dev
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/1cd51ca4-037f-4573-a6f6-a9144f24b5f4)
④再打开一个终端，启动供应链财管分布式平台后端服务：
cd ~/fisco/supply-chain-demo/backend/supply-chain-demo/target 
nohup java -jar supply-chain-demo-0.0.1-SNAPSHOT.jar & 
  查看本机IP地址 
ip addr
⑤登录供应链财管分布式平台 
打开浏览器，根据ip addr查看的IP地址，输入http://ip:9528访问平台。 

### 5.4 登录供应链支付结算平台
打开浏览器，根据ipaddr查看的IP地址，输入http://ip:9528访问平台。 后续操作见附件《基于 FISCO BCOS 的供应链支付结算案例》第4.6节。 平台账密：
supplier/123456
core/123456
dealer/123456
### 5.5 关闭服务
①关闭后端服务
ps -ef | grep "supply" 
如图，找到红框标注的进程的ID，使用kill命令关闭进程；
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/9339d0fc-d0fd-424b-95ad-10d7dc3ffd61)
kill -9 7159
②关闭前端服务
切换到刚才打开前端的终端对话框，同时按键盘ctrl+c退出服务即可
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/ca4fbdc9-0b3b-4fa1-beb0-df13ace5067c)
③ 关闭WeBASE和区块链网络 
cd ~/fisco/webase-deploy/ 
python3 deploy.py stopAll 
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/4845360a-54cb-4b52-90b1-6bcff325a5bf)

### 5.6 运行演示
①进入首页
切换到浏览器，地址栏输入 http://192.168.169.129:9528，显示当前平台链路的数量和用户统计数量。
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/df201362-01c0-40ec-9bff-ae8a353965aa)
点击右上角【注册】，分别注册三个账户，zhangsan0623,lisi0623,wangwu0623
③登录
默认打开的是“自建链列表”，“参与链列表”是自己参与别人也包括自己的列表信息
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/f17fa7c0-c19d-4bab-8c24-f6a6e6537eb6)
④建链
在“自建链列表”新建链，如图所示，输入标题和分成比例。 
![image](https://github.com/rockyhancs/supply-chain/assets/20641831/7381b692-e9d8-42c3-bdf8-a04359b38c3f)
⑤模拟各方签名
⑥各方签名确认完成，模拟支付 
⑦查看WeBASE管理平台交易情况：切换到WeBASE平台，查看数据概览中交易信息



#### 5 编译打包

编译项目，回到`backend/supply-chain-demo`目录，目录下有`pom.xml`的maven配置文件
```Bash
cd backend/supply-chain-demo
# maven 编译
mvn clean package -Dmaven.test.skip=true
```
打包完成后会得到`target`目录
- 若修改了`application.properties`，需要重新打包并运行

## 6 项目总结
至此，我们已全面介绍了 “合约账本：去中心化智能分账引擎” 项目。在开发过程中，诸多经历与收获值得深入总结与反思。​
项目启动初期，团队依据景区收入管理痛点，进行了详细的任务分解。通过明确各成员在需求分析、系统设计、代码开发、测试部署等环节的职责，确保项目有序推进。在项目协调上，定期开展线上线下会议，同步开发进度、解决分歧，有效提升了协作效率。开发过程中，困难接踵而至。例如，在基于 FISCO BCOS 平台实现智能合约自动化分账时，因对区块链底层逻辑理解不足，导致合约执行出现偏差；在数据表设计与业务流程整合方面，也面临数据兼容性与逻辑衔接的难题。团队通过查阅官方文档、请教技术专家、反复调试测试，逐步攻克了这些技术难关，成员的区块链开发与系统整合能力也在实践中得到显著提升。​
完成基础开发后，为提升系统性能与用户体验，团队对作品进行了多轮升级演进。在优化智能合约代码的同时，改进数据库结构以增强数据读写效率；重新设计交互界面，简化操作流程，使系统操作更加便捷直观。未来，我们计划进一步拓展系统功能，对接更多景区业务场景，探索与第三方支付平台的深度合作，增强系统商业适配性。在商业推广方面，将通过参加行业展会、与景区管理机构洽谈合作等方式，逐步扩大系统应用范围，让 “合约账本：去中心化智能分账引擎” 为更多景区提供透明、高效的收入管理解决方案，推动区块链技术在旅游行业的创新应用。​
这份成果凝聚着团队的智慧与汗水，也离不开指导老师的专业指导与各方支持。未来，我们将持续深耕，为区块链技术赋能景区运营贡献更多力量。

#### 参考文献
[1] 张作昌，陈超。区块链技术在旅游景区票务管理中的应用研究 [J]. 电子技术与软件工程，2023 (11):205-208.​
[2] FISCO BCOS 官方文档. FISCO BCOS v2.0 开发指南 [EB/OL]. https://fisco-bcos-documentation.readthedocs.io/zh_CN/latest/docs/develop/index.html,2024-12-15.​
[3] 邓建鹏，陈寒溪。区块链与供应链金融：理论、实践与监管 [M]. 中国法制出版社，2021.​
[4] 郭佳鑫。基于区块链的景区票务管理系统设计与实现 [D]. 河北大学，2023.DOI:10.27103/d.cnki.ghbad.2023.001327.​
[5] 陈俊良。基于区块链的智能合约应用研究与实践 [D]. 南京邮电大学，2022.DOI:10.27251/d.cnki.gnjdc.2022.000843.​
[6] 王宇。区块链技术在旅游行业中的应用模式研究 [J]. 现代商业，2022 (24):121-123.​
[7] WeBASE 官方文档. WeBASE 快速入门 [EB/OL]. https://fisco-bcos-documentation.readthedocs.io/zh_CN/latest/docs/webase/WeBASE-QuickStart.html,2024-12-15.​
[8] 李明阳，周明。区块链赋能景区数字化运营的路径分析 [J]. 旅游纵览，2023 (08):119-121.​
[9] 杨凯。基于区块链的供应链金融系统设计与实现 [D]. 北京邮电大学，2021.DOI:10.26969/d.cnki.gbydu.2021.002068.​
[10] 程平，赵敬凯。基于区块链的智能合约在供应链管理中的应用研究 [J]. 会计之友，2020 (14):137-142.​
[11] 刘振广，王硕，赵一鸣，等。区块链技术在景区运营管理中的创新应用 [J]. 计算机应用与软件，2023,40 (09):183-188.​
[12] 杨峰，徐斌。区块链技术在文旅产业中的应用探索 [J]. 信息与电脑 (理论版),2023,35 (12):136-138.

### © 2025 Rockyhan and Guojingzhu, all rights reserved 重庆对外经贸学院



