# BeibeiWeekend
快乐地写周报@beibei
## Installation
1. install ruby 2.0.0+
2. `$ gem install specific_install`
3. `$ gem specific_install https://github.com/tailang/beibei_weekend.git`

## Usage

* create workspace  
`$bbweekend -c workspace`   
workspace的名字可以自定义，执行该命令将创建对应的文件夹，进入目录将看到如下文件结构  
```
.
└── resource
    ├── base.css     #markdown解析成html，可以对一些html标签进行样式自定义
    ├── config.yml   #配置一些邮件参数，如用户名等
    └── template.md  #生成周报邮件的模板，可以自定义
```
* 根据自己的环境和团队情况配置config.yml及编写template.md
* 根据模板生成周报   
`bbweekend -g 2017-2-14-周报` 
* 用markdown语法编写周报
* 发送邮件  
`bbweekend -s 2017-2-14-周报.md`

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

