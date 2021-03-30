# vscodium and neovim

![vscode插件](https://kktt007.top/img/2021_03_30_033.jpg)

https://xu3352.github.io/tags.html#vim-plugin-ref
[别人的效果](https://github.com/joshukraine/dotfiles/blob/master/nvim/init.vim)
vscode似乎只有简单的插件来完成，vim插件到是可以, 百合说，vscode什么都能做，还要vim干嘛

[vscodium](https://vscodium.com)

| 插件 |               vscode               | neovim |
| :--: | :--------------------------------: | :----: |
| 对齐 | [Better Align](#a1)<a id="1a"></a>, [multi-command](#a2)<a id="2a"></a>|[Tabular.vim], [vim-easy-align]      |
| 注释 |[Comment Anchors]                                    |       - |
|snippets for all|[Tabnine]|-|
|snippets for md|[markdown-formatter]|-|
|[user snippets](#a3)<a id="3a"></a>|自定义片段|-|
|图床|[vs-picgo](#a4)<a id="4a"></a>|-|
|标签跳转|[Bookmarks](#a5)<a id="5a"></a>|-|
---

* ## [Better Align](#1a) <a id="a1"></a> 
  + [marketplace](https://marketplace.visualstudio.com/items?itemName=wwm.better-align) 需要额外配置

* ## [multi-command](#2a)<a id="a2"></a>

  + [marketplace](https://marketplace.visualstudio.com/items?itemName=ryuta46.multi-command)

* ## [Tabular.vim]

https://docs.w3cub.com/cheatsheets/tabular.html
https://wklken.me/posts/2015/06/07/vim-plugin-easyalign.html

## [user snippets](#3a)<a id="a3"></a>

[参考](https://adamtheautomator.com/vs-code-snippets/#Finding_VS_Code_Snippets)

C:\Users\Administrator\AppData\Roaming\VSCodium\User\snippets\markdown.json
ctrl+shift+p 输入snippets自行添加

``` 

	 "an an markdown anchor": {
	 	"prefix": "an",
	 	"body": [
			"<a id=\"$1\"></a>"
	 	],
	 	"description": "anchor"
	 }
```

[vs-picgo](#4a)<a id="a4"></a>

``` 

![${uploadedName}](${url})

${mdFileName}${extName}
LTAI4G5KKM1hqJT6bwn3nrqy
UTbDEASUnAagpaZc8kv1zJZ7cjJ2rm
oss-cn-shanghai
kktt007
https://kktt007.top
img/
```

- ## 标签跳转
[Bookmarks](#5a)<a id="a5"></a>

参考
https://zhuanlan.zhihu.com/p/111004160
https://blog.csdn.net/techfield/article/details/84186402
