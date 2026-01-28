脚本使用：https://github.com/YunFeng86/pt-gen-universal

由于最近的pt-gen都不好用了，就想自己建一个pt-gen自用

生成的docker镜像工作目录是/app

配置好env文件中的豆瓣cookie和TMDB API

映射到容器/app/pt-gen-universal/.env文件

可以直接使用docker-compose文件创建容器

使用网页获取地址：http://yourip:3000

使用差速器的配置地址是：http://yourip:3000/api/info
