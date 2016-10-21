# PS3 Voice and Graphics Patch

For Higurashi No Naku Koro Ni - Chapter 3 Tatarigoroshi

This patch aims to combine the efforts of the ps3 voice patch and the ps3 sprites/background patch, and fill in missing voice files not covered by the original voice patch.

1. Installation
  1. [Prerequisites](https://github.com/07th-mod/tatarigoroshi#prerequisites)
  2. [Releases](https://github.com/07th-mod/tatarigoroshi#releases)
  3. [Installing the patch](https://github.com/07th-mod/tatarigoroshi#installing-the-patch)
  4. [Building a symlink (optional)](https://github.com/07th-mod/tatarigoroshi#creating-a-symlink)
2. Development
    * [Known issues](https://github.com/07th-mod/tatarigoroshi#known-issues)
    * [Developing with us](https://github.com/07th-mod/tatarigoroshi#developing-with-us)
3. [Credits](https://github.com/07th-mod/tatarigoroshi#credits)


# Prerequisites

* Higurashi When They Cry Hou - Ch.3 Tatarigoroshi ([Steam](http://store.steampowered.com/app/472870/) or [MangaGamer](http://www.mangagamer.com/detail.php?goods_type=1&product_code=176))
* [HigurashiPS3-Voices01.zip (uses S19, S20 folders)](https://github.com/07th-mod/resources/releases/download/Nipah/HigurashiPS3-Voices01.zip) + [HigurashiPS3-Voices02.zip (uses S03 folder)](https://github.com/07th-mod/resources/releases/download/Nipah/HigurashiPS3-Voices02.zip) [(or create a symlink using your EP1 files)](https://github.com/07th-mod/tatarigoroshi#creating-a-symlink)
* [Graphics mod](https://mega.nz/#!hQ91WYoa!7zWIoJDKMi_6kqK9CqgEomQ5hZU9U4hIvK1sDBBU90w)
* [Voice patch](https://github.com/07th-mod/tatarigoroshi/releases)

# Releases

https://github.com/07th-mod/tatarigoroshi/releases/

This repository is in constant change. Sometimes new releases might get on hold until there is enough content to push a new patch. If the latest patch have a bug that seems to be already fixed in the repository, try downloading the master file. The master file will always have the latest files, regardless of the current release being outdated or not.

# Installing the patch

> Use the previous detailed tutorial to install the patch. See [here](https://github.com/07th-mod/onikakushi#installation).

In this patch we will only use the voice folders S03 (HigurashiPS3-Voices02.zip), S19 and S20 (HigurashiPS3-Voices01.zip). If you already have the first game (Onikakushi) with the patch installed, you don't need to download or copy the s19 and s20 folders. You can save your time creating a symbolic link.

### Creating a symlink

> Reminder: you must have the folders S19, S20 and S03 before following these steps!

###### On Windows:
1. find your SteamLibrary common folder (usually \SteamLibrary\steamapps\common)
2. hold shift and right click on an empty space
3. click on "Open a command line window here" (or similar)
4. run the following commands on the cmd:
```
mklink /J ".\Higurashi 03 - Tatarigoroshi\HigurashiEp03_Data\StreamingAssets\SE\s19" ".\Higurashi When They Cry\HigurashiEp01_Data\StreamingAssets\SE\S19"

mklink /J ".\Higurashi 03 - Tatarigoroshi\HigurashiEp03_Data\StreamingAssets\SE\s20" ".\Higurashi When They Cry\HigurashiEp01_Data\StreamingAssets\SE\S20"
```

* Do not forget to put the folder S03 inside \Higurashi 03 - Tatarigoroshi\HigurashiEp03_Data\StreamingAssets\SE\


###### On Linux/OSX:
Use the ln -s command on terminal
```
ln -s /path/to/original /path/to/symlink
```
>Where /path/to/original is ./Higurashi When They Cry/HigurashiEp01_Data/StreamingAssets/SE/S19 and /path/to/symlink should be ./Higurashi 03 - Tatarigoroshi/HigurashiEp03_Data/StreamingAssets/SE/s19

Repeat the command for the s20 folder.


# Developing with us

Usually, older contributors are welcome to join the repository and push their own changes without supervision. However, you can also aid the development just by forking the repository and working on your own changes. After you are done, commit the changes, make a pull request and if it's good enough, the changes will be merged. Both approaches are more than welcome!

# Credits

- @DoctorDiablo - For making the graphics mod
- @enumag - For coding the new automation script
- Anon - For giving us the PS3 files and scripts
