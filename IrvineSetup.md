# Irvine + MASM + SASM Setup on Linux
This Semester, I have a course on x86 Assembly Langugage. We are using Irvine library, which is only available on Windows . Since i daily drive Linux , I couldn't use it natively and so i have searched the internet for a Solution. Following is a working solution that should work on any distribution.

# Table of Contents
1. [Prerequisites](#prereqs)
2. [MASM installation](#setupmasm)
3. [Irvine32 & SASM Setup](#irvinesetup)
4. [SASM does not work?](#sasmerror)

## Prerequisites <a name="prereqs"></a>
To run an Ivrine Assembly program , you need:
- Wine - For running PE executables
- PlayOnLinux -  Wine Facilitator
- MASM - Microsoft Assembler
- SASM - (or any other IDE)
- Irine32 Setup

Since Irvine works only on Windows, we are first going to install `Wine`. It's a Linux Utility that converts Windows Syscalls to that of Linux and allows one to run Windows Application. Install `Wine` for your distribution. Since i am using BunsenLabs, and its based on Debian 12, i will be following instructions for debian. Following link describes installation process for different distributions: 

[Install Wine](https://gitlab.winehq.org/wine/wine/-/wikis/Download)

you may also need to install the `winetricks` , `wine-mono` , `wine_gecko` package.

- After installing Wine, proceed to installation of PlayOnLinux.

[Install PlayOnLinux](https://www.playonlinux.com/en/download.html)

- You also need to download MASM (Microsoft Assembler). Note that the newer versions will not work, so download from following link

[Download MASM](https://archive.org/details/b64_encoded_blob)

Note that i have uploaded MASM zip on Web Archive as a base64 blob, since Web Archive was always removing it( due to it being a fucking microsoft software probably ). So after downloading the blob, decode using:

````
$ base64 -d b64_encoded_blob.blob > masm32-v11.zip
````


- Download Irvine32 Library from

[Irvine32-Setup](https://archive.org/details/irvine-7th-edition)


Lastly you will need an IDE. You can use, yet not limited to

- SASM - Crossplatform IDE for NASM, MASM, FASM, GAS
- Visual Studio Express 2005 - MS Visual Studio 2005 IDE (more feature rich than SASM)

These two IDE will work on PlayOnLinux. For SASM, install the Windows version

[Download SASM](https://dman95.github.io/SASM/english.html)


***Note: There are some IDE related problems that are discussed in the last step***

If for some reason these IDE don't work, you can also do development on IDE of your choice and then build the program on Command Prompt. This is discussed below.


## MASM installation  <a name="setupmasm"></a>
After downloading all the prerequisites, we will install MASM. To do so:

- Run PlayOnLinux. you can do so, either from terminal(`playonlinux`) or from Apps menu in your distribution
- Follow the installation wizard and install MASM(x64) in a NEW virtual drive. Select the downloaded MASM file and install it in **"C:\"**. Do note down the location that you chose for this new virtual drive
- Continue with the wizard and MASM will be installled


## Irvine32 and SASM Setup  <a name="irvinesetup"></a>
You can install Irvine32 and SASM by running their indivisual setup executables inside the virtual drive that you created for MASM. I show here how to execute an executable inside a virtual drive:

- Click the Configure (gear icon) button. 
- Choose the virtual drive where you installed MASM.
- Click Miscellaneous => run a .exe
- Select the program to run it

##  SASM does not work? <a name="sasmerror"></a>
If like me, you are unable to get SASM working with MASM or you would like to program on IDE/text-editor of your choice. You can follow below steps: 

- Firstly , cd to SASM's Projects directory or YOUR Projects directory on the virtual drive. you will do this on native terminal emulator. The virtual drive directory will be present at the location, that you chose, when creating it.
- Create/Modify the source file in IDE/text-editor of your choice. I use `neovim` so i would do `nvim source.nvim`.
- I have provided a convinience builder + runner batch script called rog.bat in `src/rog.bat`. You will copy this batch script to YOUR Projects directory.
- Now lastly, you will open a `Command Prompt` instance your Projects directory. This can be done by going to `Configure => YOUR_VIRTUAL_DRIVE => Wine => Command Prompt`
- The cmd instance will open in `Z:\`. Change drive using `C:`. Now cd to YOUR projects directory. for example if mine is at `C:\Program Files (x86)\SASM\Projects`, i would cd to that.
- Run `rog.bat`. providing the source file as the argument. It will `build -> execute -> delete` the executable


# Credits
I would like to thank `Ahmed Elmayyah`. Much of the steps are followed from [their](https://satharus.me/tech/2019/10/06/masm_linux.html) Article. I have replaced the links that were dead with working ones, so you should get exactly the same versions of Software that they are using in the article. 
