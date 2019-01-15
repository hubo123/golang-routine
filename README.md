# 《颂情》小程序的 api server
```bash
# dev
cd 7yue_api_server
cp config/config.yaml.default config/config.yaml
make install
make dev

# pro
make
./admin.sh start
# 之后可打开 localhost:8886 注册 key 以及查看 api 文档
```

![/](images/1.png)

![book api](images/2.png)

![classic api](images/3.png)

![like and user api](images/4.png)

用户注册
/v1/user/register

获取点赞信息
/favor/list/:type/:id
