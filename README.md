# QLockerFix-Windows
Attempt to clear out the damage done by QLocker on my QNAP NAS.

# Preface
My QNAP NAS was hit by the QLocker ransomware and had compressed all my files with a ".7z" extension and left a "!!!READ_ME.txt" file in each folder. Apparently this ransomware first began 8 months ago (roughly May of 2020) but it is evident that there still exists a script that is running from the ransomware team that still looks for internet exposed devices and attempts to encrypt them for Bitcoin.

An important note is that I have had this NAS for a few years now without having any problems but just recently I attempted to use QNAP's "smartshare" feature to share some files on my NAS with family that are not on my local network and a few days later the ransomware got into my system. From my own reading, it had to do with some security breaches within a couple applications installed on the NAS which they have since fixed in updates. I have now made sure eveything is up to date and I installed their own "Malware Remover" which identified QLocker on my device and removed it promptly. 

Luckily, I read that QNAP too has their own script running that looks for this ransomware and stops it from encrypting your files though depending on how quick it reaches QLocker before it gets to all your files, it may still compress your files. I've heard of others that only have the "!!!READ_ME.txt" file littered throughout their folders with no compression or passwords. Some only have compression and encryptions on files under 20.5mb so it varies depending on the time these scripts fight each other aha.

In my situation, I had almost all of my files compressed with no encryption with the "!!!READ_ME.txt" littered everywhere.

# Aims
The aim of this script is to do the following:
* Search for all ".7z" and extract them.
     * Luckily I never use any ".7z" files when compressing or downloading anything. I typically use ".zip" and ".rar" files. So in my case I can just search for these files and delete them all. If you do use ".7z" this script may not be the best idea for you :'(
* Remove every files that has the extension ".7z".
* Remove all the "!!!READM_ME.txt" files.

# Usage
NOTE: This is a Windows batch script and will only work when run a CMD terminal. 
NOTE: This script also assumes you have 7-Zip installed in the default location. You can change it's directory within the script before running if you don't.

I have set this file so that you can:
* Insert this file in whatever folders that are affected
* Double click it to run
    * It will look through the current directory and any sub-directories to decompress, and delete relevant files.

I initially put this in some git repository folders to test before running on my entire NAS to ensure it didn't delete the wrong files accidentally and it worked in my case. If you're scared to do this then you may want to do the same.


