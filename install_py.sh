#!/bin/bash
function install_py()
{
	# 切换为root用户
	# sudo -
	# sudo pip install -i https://pypi.tuna.tsinghua.edu.cn/simple uuid 
	# pip install json build in module
	pip install rsa
	pip install uuid
	pip install requests
}

install_py
