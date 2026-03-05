# 大学生入学审核系统

## 📋 项目简介

大学生入学审核系统是一个基于 **Spring Boot + Vue.js** 的前后端分离Web应用，旨在实现大学新生入学审核流程的信息化管理。系统支持**管理员**和**学生**两种角色，涵盖学生信息管理、学籍信息管理、入学办理等核心功能模块。

---

## 🛠️ 技术栈

### 后端（Backend）

| 技术 | 版本 | 说明 |
|------|------|------|
| Spring Boot | 2.2.2.RELEASE | 基础框架 |
| MyBatis-Plus | 2.3 | ORM持久层框架 |
| MySQL | 5.7+ | 关系型数据库 |
| Apache Shiro | 1.3.2 | 安全认证框架 |
| Hutool | 4.0.12 | Java工具类库 |
| FastJSON | 1.2.8 | JSON处理 |
| Maven | - | 项目构建工具 |
| JDK | 1.8 | Java开发环境 |

### 前端（Frontend）

| 技术 | 版本 | 说明 |
|------|------|------|
| Vue.js | 2.6.x | 前端框架 |
| Element UI | 2.13.0 | UI组件库 |
| Axios | 0.19.2 | HTTP请求库 |
| ECharts | 4.6.0 | 数据可视化图表 |
| Vue Router | 3.1.5 | 前端路由 |
| Vue CLI | 4.1.0 | 脚手架工具 |
| Node.js | - | JavaScript运行环境 |

---

## 📁 项目结构

```
大学生入学审核系统的设计与实现/
├── springboot1hme0/                    # 后端项目（Spring Boot）
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/
│   │   │   │   ├── controller/          # 控制器层
│   │   │   │   │   ├── CommonController.java        # 公共接口
│   │   │   │   │   ├── ConfigController.java        # 系统配置
│   │   │   │   │   ├── FileController.java          # 文件上传下载
│   │   │   │   │   ├── RuxuebanliController.java    # 入学办理
│   │   │   │   │   ├── UserController.java          # 管理员用户
│   │   │   │   │   ├── XuejixinxiController.java    # 学籍信息
│   │   │   │   │   └── XueshengController.java      # 学生管理
│   │   │   │   ├── entity/              # 实体类
│   │   │   │   ├── service/             # 业务逻辑层
│   │   │   │   ├── dao/                 # 数据访问层
│   │   │   │   └── utils/               # 工具类
│   │   │   └── resources/
│   │   │       ├── application.yml      # 应用配置文件
│   │   │       └── mapper/              # MyBatis映射文件
│   │   └── test/                        # 单元测试
│   ├── pom.xml                          # Maven依赖配置
│   └── pom-war.xml                      # WAR包构建配置
├── vue/                                 # 前端项目（Vue.js）
│   ├── src/
│   │   ├── views/                       # 页面视图
│   │   │   ├── login.vue                # 登录页
│   │   │   ├── register.vue             # 注册页
│   │   │   ├── home.vue                 # 首页
│   │   │   ├── center.vue               # 个人中心
│   │   │   ├── update-password.vue      # 修改密码
│   │   │   └── modules/                 # 功能模块
│   │   │       ├── xuesheng/            # 学生模块
│   │   │       ├── xuejixinxi/          # 学籍信息模块
│   │   │       ├── ruxuebanli/          # 入学办理模块
│   │   │       ├── config/              # 配置模块
│   │   │       └── users/               # 用户管理模块
│   │   ├── components/                  # 公共组件
│   │   ├── router/                      # 路由配置
│   │   ├── utils/                       # 工具函数
│   │   └── icons/                       # 图标资源
│   ├── package.json                     # 前端依赖配置
│   └── vue.config.js                    # Vue CLI配置
├── db.sql                               # 数据库初始化脚本
└── README.md                            # 项目说明文档
```

---

## 🎯 系统功能

### 角色权限

系统设有两种用户角色，各角色拥有不同的权限：

| 功能模块 | 管理员 | 学生 |
|---------|--------|------|
| 学生管理 | ✅ 新增、查看、修改、删除、入学办理 | ❌ |
| 学籍信息管理 | ✅ 新增、查看、修改、删除 | ✅ 查看 |
| 入学办理管理 | ✅ 查看、修改、删除 | ✅ 查看 |
| 个人信息 | ✅ 查看、修改 | ✅ 查看、修改 |
| 修改密码 | ✅ | ✅ |

### 功能模块详解

#### 1. 🔐 用户认证模块
- **登录**：支持管理员和学生两种角色登录，基于Token认证
- **注册**：新学生自主注册
- **密码管理**：支持修改密码和密码重置
- **个人中心**：查看和编辑个人信息

#### 2. 👨‍🎓 学生管理模块（管理员）
- **学生列表**：分页展示所有学生信息
- **新增学生**：录入学生基本信息（学号、姓名、性别、年龄、学院、专业、电话、邮箱、身份证、照片等）
- **修改学生信息**：编辑学生各项信息
- **删除学生**：支持批量删除
- **入学办理**：为学生办理入学手续

#### 3. 📚 学籍信息管理模块
- **学籍列表**：分页展示学生学籍信息
- **新增学籍**（管理员）：录入学籍详细信息，包括：
  - 基本信息：学号、姓名、性别、年龄、出生日期、身份证号
  - 教育信息：现读学校、最高学历
  - 附件资料：体检表、学生成绩表、党籍关系、荣誉证书、照片
- **修改学籍**（管理员）：编辑学籍信息
- **删除学籍**（管理员）：支持批量删除
- **查看学籍**（学生）：学生可查看自己的学籍信息

#### 4. 🏫 入学办理管理模块
- **入学办理列表**：展示所有入学办理记录
- 办理内容包括：
  - **是否入学**：记录入学状态（已入学/未入学）
  - **生活用品领取**：记录领取状态（已领取/未领取）
  - **宿舍报到**：记录报到状态（已报到/未报到）
- **修改办理状态**（管理员）：更新各项办理进度
- **查看进度**（学生）：学生可查看自己的入学办理进度

#### 5. ⚙️ 系统配置模块
- **轮播图管理**：首页轮播图配置
- **系统参数**：基础系统参数配置

#### 6. 📤 文件管理模块
- **文件上传**：支持图片等文件上传（最大10MB）
- **文件下载**：支持文件下载功能

---

## 🗄️ 数据库设计

### 数据库名：`springboot1hme0`

### E-R关系表

| 表名 | 中文名 | 说明 |
|------|--------|------|
| `users` | 管理员用户表 | 存储管理员账号信息 |
| `xuesheng` | 学生表 | 存储学生基本信息及账号 |
| `xuejixinxi` | 学籍信息表 | 存储学生学籍档案信息 |
| `ruxuebanli` | 入学办理表 | 记录入学办理各环节状态 |
| `config` | 系统配置表 | 存储系统参数和轮播图 |
| `token` | Token表 | 用户登录凭证存储 |

### 主要表结构

#### 学生表（xuesheng）
| 字段 | 类型 | 说明 |
|------|------|------|
| id | bigint | 主键 |
| xuehao | varchar(200) | 学号（唯一） |
| mima | varchar(200) | 密码 |
| xingming | varchar(200) | 姓名 |
| xingbie | varchar(200) | 性别 |
| nianling | int | 年龄 |
| xueyuan | varchar(200) | 学院 |
| zhuanye | varchar(200) | 专业 |
| dianhua | varchar(200) | 电话 |
| youxiang | varchar(200) | 邮箱 |
| shenfenzheng | varchar(200) | 身份证 |
| zhaopian | varchar(200) | 照片 |

#### 学籍信息表（xuejixinxi）
| 字段 | 类型 | 说明 |
|------|------|------|
| id | bigint | 主键 |
| xuehao | varchar(200) | 学号 |
| xingming | varchar(200) | 姓名 |
| xingbie | varchar(200) | 性别 |
| nianling | int | 年龄 |
| chushengriqi | date | 出生日期 |
| shenfenzhenghao | varchar(200) | 身份证号 |
| xianduxuexiao | varchar(200) | 现读学校 |
| zuigaoxueli | varchar(200) | 最高学历 |
| tijianbiao | varchar(200) | 体检表 |
| xueshengchengjibiao | varchar(200) | 学生成绩表 |
| dangjiguanxi | varchar(200) | 党籍关系 |
| rongyuzhengshu | varchar(200) | 荣誉证书 |
| zhaopian | varchar(200) | 照片 |

#### 入学办理表（ruxuebanli）
| 字段 | 类型 | 说明 |
|------|------|------|
| id | bigint | 主键 |
| xuehao | varchar(200) | 学号 |
| xingming | varchar(200) | 姓名 |
| shifouruxue | varchar(200) | 是否入学 |
| shenghuoyongpinlingqu | varchar(200) | 生活用品领取 |
| sushebaodao | varchar(200) | 宿舍报到 |

---

## 🚀 快速开始

### 环境要求

- **JDK** 1.8+
- **Maven** 3.x
- **MySQL** 5.7+
- **Node.js** 12+
- **npm** 6+

### 1. 数据库初始化

```bash
# 登录MySQL并创建数据库
mysql -u root -p

# 执行SQL脚本
source db.sql
```

> ⚠️ 默认数据库连接配置：
> - 地址：`127.0.0.1:3306`
> - 用户名：`root`
> - 密码：`123456`
> - 如需修改，请编辑 `springboot1hme0/src/main/resources/application.yml`

### 2. 启动后端

```bash
cd springboot1hme0

# 安装依赖并启动
mvn spring-boot:run
```

后端服务启动在 `http://localhost:8080/springboot1hme0`

### 3. 启动前端

```bash
cd vue

# 安装依赖
npm install

# 启动开发服务器
npm run serve
```

前端开发服务器启动在 `http://localhost:8081`

### 4. 访问系统

浏览器打开 `http://localhost:8081` 即可访问系统。

#### 默认账号

| 角色 | 用户名 | 密码 |
|------|--------|------|
| 管理员 | abo | abo |
| 学生 | 学生1 | 123456 |

---

## 📦 项目部署

### 打包后端

```bash
cd springboot1hme0
mvn clean package
```

生成的JAR包在 `target/` 目录下，使用以下命令启动：

```bash
java -jar target/springboot1hme0-0.0.1-SNAPSHOT.jar
```

如需部署为WAR包，使用 `pom-war.xml`：

```bash
mvn clean package -f pom-war.xml
```

### 打包前端

```bash
cd vue
npm run build
```

生成的静态文件在 `dist/` 目录下，可部署到Nginx等Web服务器。

---

## 🔧 配置说明

### 后端配置（application.yml）

| 配置项 | 默认值 | 说明 |
|--------|--------|------|
| server.port | 8080 | 服务端口 |
| server.servlet.context-path | /springboot1hme0 | 应用上下文路径 |
| spring.datasource.url | jdbc:mysql://127.0.0.1:3306/springboot1hme0 | 数据库连接URL |
| spring.datasource.username | root | 数据库用户名 |
| spring.datasource.password | 123456 | 数据库密码 |
| spring.servlet.multipart.max-file-size | 10MB | 文件上传大小限制 |

### 前端配置（vue.config.js）

| 配置项 | 默认值 | 说明 |
|--------|--------|------|
| devServer.port | 8081 | 开发服务器端口 |
| devServer.proxy | http://localhost:8080/springboot1hme0/ | API代理地址 |

---

## 🔌 API接口

### 公共接口

| 接口路径 | 方法 | 说明 |
|---------|------|------|
| `/{tableName}/login` | POST | 用户登录 |
| `/{tableName}/logout` | POST | 用户退出 |
| `/{tableName}/register` | POST | 用户注册 |
| `/file/upload` | POST | 文件上传 |
| `/file/download` | GET | 文件下载 |

### 学生管理接口（/xuesheng）

| 接口路径 | 方法 | 说明 |
|---------|------|------|
| `/xuesheng/page` | GET | 后端分页列表 |
| `/xuesheng/list` | GET | 前端分页列表 |
| `/xuesheng/info/{id}` | GET | 获取学生详情 |
| `/xuesheng/save` | POST | 新增学生 |
| `/xuesheng/update` | POST | 修改学生信息 |
| `/xuesheng/delete` | POST | 删除学生 |

### 学籍信息接口（/xuejixinxi）

| 接口路径 | 方法 | 说明 |
|---------|------|------|
| `/xuejixinxi/page` | GET | 后端分页列表 |
| `/xuejixinxi/list` | GET | 前端分页列表 |
| `/xuejixinxi/info/{id}` | GET | 获取学籍详情 |
| `/xuejixinxi/save` | POST | 新增学籍信息 |
| `/xuejixinxi/update` | POST | 修改学籍信息 |
| `/xuejixinxi/delete` | POST | 删除学籍信息 |

### 入学办理接口（/ruxuebanli）

| 接口路径 | 方法 | 说明 |
|---------|------|------|
| `/ruxuebanli/page` | GET | 后端分页列表 |
| `/ruxuebanli/list` | GET | 前端分页列表 |
| `/ruxuebanli/info/{id}` | GET | 获取办理详情 |
| `/ruxuebanli/save` | POST | 新增办理记录 |
| `/ruxuebanli/update` | POST | 修改办理状态 |
| `/ruxuebanli/delete` | POST | 删除办理记录 |

---

## 📸 系统截图

> 系统运行后可通过浏览器访问查看界面效果

- **登录页面**：支持管理员/学生角色切换登录
- **首页**：展示系统概览及轮播图
- **学生管理**：学生信息的增删改查
- **学籍信息**：学籍档案详细管理
- **入学办理**：入学各环节进度跟踪
- **个人中心**：个人信息查看与编辑

---

## 📄 许可证

本项目仅供学习参考使用。

---

## 🤝 贡献

欢迎提交 Issue 或 Pull Request 来改进项目。
