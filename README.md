# 利用Liquibase来管理数据库版本

## 依赖
> 需要安装jdk1.7、Liquibase3.5.1、Maven3.3.9

## 说明
> demo1为include Example
> demo2为includeAll Example

## 使用方式
#### demo1
进入demo1目录
* 更新sql命令：``` mvn liquibase:update ```
* 回滚到指定tag命令：``` mvn liquibase:rollback -Dliquibase.rollbackTag=v2 ```
#### demo2
进入demo2执行目录
* 更新sql命令：``` mvn liquibase:update ```
* 打tag命令：``` mvn liquibase:tag -Dliquibase.tag=v1 ```
* 回滚到指定tag命令：``` mvn liquibase:rollback -Dliquibase.rollbackTag=v1 ```

[详细教程地址](http://blog.jiunile.com/%E6%95%B0%E6%8D%AE%E5%BA%93%E7%89%88%E6%9C%AC%E7%AE%A1%E7%90%86%E5%B7%A5%E5%85%B7liquibase.html)

