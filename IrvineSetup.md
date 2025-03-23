# Irvine + MASM + SASM Setup on Linux
This Semester, I have a course on x86 Assembly Langugage. We are using Irvine library, which is only available on Windows . Since i daily drive Linux , I couldn't use it natively and so i have searched the internet for a Solution. Following is a working solution that should work on any distribution.

# Table of Contents
1. [Prerequisites](#prereqs)
2. [MASM installation](#setupmasm)


## Prerequisites <a name="prereqs"></a>
To run an Ivrine Assembly program , you need:
- Wine - For running PE executables
- PlayOnLinux -  Wine Facilitator
- MASM - Microsoft Assembler
- SASM - (or any other IDE)

Since Irvine works only on Windows, we are first going to install `Wine`. It's a Linux Utility that converts Windows Syscalls to that of Linux and allows one to run Windows Application. Install `Wine` for your distribution. Since i am using BunsenLabs, and its based on Debian 12, i will be following instructions for debian. Following link describes installation process for different distributions: 

[Install Wine](https://gitlab.winehq.org/wine/wine/-/wikis/Download)

you may also need to install the `winetricks` , `wine-mono` , `wine_gecko` package.

After installing Wine, proceed to installation of PlayOnLinux.

[Install PlayOnLinux](https://www.playonlinux.com/en/download.html)

You also need to download MASM (Microsoft Assembler). Note that the newer versions will not work, so download from following link

[Download MASM](#)


Lastly you will need an IDE. You can use, yet not limited to

- SASM - Crossplatform IDE for NASM, MASM, FASM, GAS
- Visual Studio Express 2005 - MS Visual Studio 2005 IDE (more feature rich than SASM)

These two IDE will work on PlayOnLinux. For SASM, install the Windows version

[Download SASM](https://dman95.github.io/SASM/english.html)


***Note: There are some IDE related problems that are discussed in the last step***

If for some reason these IDE don't work, you can also do development on IDE of your choice and then build the program on Command Prompt.


## MASM installation  <a name="setupmasm"></a>
After downloading all the prerequisites, we will install MASM. To do so

- First create 


# Credits
I would like to thank `Ahmed Elmayyah`. Much of the steps are followed from [their](https://satharus.me/tech/2019/10/06/masm_linux.html) Article. I have replaced the links that were dead with working ones, so you should get exactly the same versions of Software that they are using in the article. 
