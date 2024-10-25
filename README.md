# 实验用centos7构建环境
centos7 with GCC 4.8，模拟 ~~残疾~~ 实验环境。拥有现代xmake环境。

嗯……抄作业的话请记得改点代码。

个人自用。

## 用法
在容器中构建，并在work目录下生成Matrix_mul，构建环境会在后台一直运行。
```bash
docker-compose up -d
```

启动compose后进入容器环境（ `docker ps` 查看你的容器名）
```bash
docker exec -it {your_container_name} /bin/bash
```

如果要用xmake，进入容器还要
```bash
source ~/.xmake/profile
```

> [!WARNING]
> 似乎在容器中，在root下使用xmake构建的程序，会有root的执行权限，可能会有安全问题，自己注意。

> 实验环境不能自己装环境就很烦（）
