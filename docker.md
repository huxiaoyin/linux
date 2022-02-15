##### 设置用户组

```bash
sudo gpasswd -a ${USER} docker #将当前用户加入到docker用户组中
newgrp docker                  #更新用户组
cat /etc/group|grep docker
sudo systemctl restart docker
```


