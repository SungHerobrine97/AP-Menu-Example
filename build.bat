@echo off
echo 作者：MixerWangDev
echo 这个脚本将使用mkisofs工具把本项目打包iso文件。
echo 请确保你已下载mkisofs并解压到非中文目录下。
echo 请确认你是否下载了mkisofs并解压到空白目录？ (Y/N)
set /P answer=
if "%answer%" NEQ "Y" (
    echo 下载mkisofs并解压到空白目录，然后重新运行。
    echo mkisofs程序文件可以在Autoplay Menu builder的安装目录找到，但我们不建议你直接使用这个软件安装目录下的mkisofs。
    echo 请确保运行mkisofs前把cygwin1.dll放到mkisofs所在的目录下。
    echo 你也可以从以下链接下载mkisofs：https://cdrtools.sourceforge.net/private/cdrecord.html
    echo 运行前请确保有cygwin，cygwin可以在此处下载：https://sourceforge.net/projects/cdrtools/files/alpha/win32/
    echo 相关mkisofs指南可以从此处找到：https://mkisofs.cosoft.org.cn/
    pause
    exit /B
)
echo 告诉我，mkisofs在哪里？！ (e.g., C:\path\to\installation):
set /P mkisofs=
echo 给你的iso文件起个名字 (e.g., output.iso):
set /P output_name=
echo 你可能看到了，本脚本是使用Windows批处理文件格式，然而一些人可能只相信流氓软件能够识别ISO文件，但是它们（尤其是百度网盘）却没有能力处理iso文件。
echo 你所看到的仅仅只是某个创作者的观点，但是：
echo 如果你还是信不过（比如泄露隐私、远程控制之类的），你完全可以直接关掉这个窗口，一切都没有被更改。
echo Massgrave.dev的脚本也是cmd格式，而且这个文件可以在Github上找到：https://github.com/massgravel/Microsoft-Activation-Scripts
echo 而且这个脚本本来也可以用记事本打开，是什么就是什么，不用废话。
echo 如果你还是信不过，那只能靠你自己了。
echo 告诉你的客户，iso文件应使用WinRAR/7-zip或者虚拟光驱加载它，然后把它们拷出来。
echo 你也可以使用Windows 10/11自带的功能加载iso文件。
echo 手机用户亦可以使用MT管理器打开iso文件。
echo 接下来按任意键继续，将开始这个过程。
pause
@echo on
%mkisofs% -o "%output_name%".iso --no-iso-translate -R -J -print-size ./
@echo off
echo 一切尘埃落定，按任意键退出即可。
pause