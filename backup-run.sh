#!/bin/sh
rsync -av --delete /etc/apache2 /Volumes/StorEDGE/_desktop-backup/apache2
rsync -av --exclude-from '/Users/scottr/bin/backup/excludes.conf' --delete /Users/scottr /Volumes/StorEDGE/_desktop-backup/


##########################################
## excludes.conf file contents

Desktop
*/node_modules
*/.svn/*
*/.git/*
Library/Caches*
Library/Logs*
Library/Developer*
Library/Application Support/MobileSync*
Library/Application Support/com.*
Library/Application Support/NetBeans*
Library/Application Support/Google/Chrome*
Library/Application Support/Bitcoin/blocks*
Library/Application Support/Litecoin/blocks*
Library/Application Support/digitalcoin/blk*
Library/Application Support/Litecoin/chainstate*
Library/Application Support/Bitcoin/chainstate*
Library/Application Support/Feathercoin/blk*
Library/Application Support/Worldcoin/blk*
Documents/Virtual*
Documents/Microsoft*
Downloads
Dropbox
Google Drive
Movies
Music
NetBeansProjects
Pictures
Public
WebstormProjects
temp
tmp
.CF*
.DS_Store
.Scream*
.Trash
.account
.adobe
.anyconnect
.appcfg*
.cache
.cgminer
.cups
.dropbox
.dvdcss
.fontconfig
.gem
.irb_history
.m2
.meteor
.nchsoftware
.netbeans-derby
.node-gyp
.pearrc
.protoshares
.putty
.recently-used
.redis*
.rnd
.subversion*
.wps*
.yeoman
.codeintel
.npm
.nvm
1820OS_CodeBundle
scottr/Sites/clients/
scottr/bin/google_appengine/
*.app

