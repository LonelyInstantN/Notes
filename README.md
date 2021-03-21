# Notes

个人笔记归档&PDF生成工作区

## 依赖

- VSCode Markdown编写
	
	- Markdown+Math插件 提供Markdown预览/语法支持,提供LaTex公式支持
	
- Pandoc PDF生成
	
	- MikTex Pandoc Tex支持
	
- Powershell 生成PDF脚本

## 使用

用VSCode打开`".../Notes/"`下具体文件夹`Ctrl+Shift+P`编辑用户代码片段，然后可以开始在工作区下开始书写笔记，笔记完成后用终端运行`Generate.ps1`，会进行PDF生成，会生成`Notes`文件夹下所有的Markdown文件的PDF版本(除READMEmd)，生成文件会存放在其路径下的`Release`文件夹内

