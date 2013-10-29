; Bootstrap profile for Collabco
; http://collabco.collabforge.com

core = 7.x
api = 2

; Drupal core
; -----------
; Is there a way to checkout the lastest official release?
projects[drupal][version] = 7.23

; Install profiles
; ----------------
projects[collabco][type] = profile
projects[collabco][download][type] = git
projects[collabco][download][url] = https://github.com/Collabforge/collabco.git
projects[collabco][download][branch] = 'master'
projects[collabco][version] = 7.x-2.x

