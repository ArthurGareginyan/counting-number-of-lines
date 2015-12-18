#!/bin/bash
#=============================================================#
# Name:         Counting the number of lines                  #
# Description:  Counting the number of lines in CSS and PHP   #
#               files, recursively in catalog.                #
# Version:      1.1                                           #
# Data:         7.2.2014-28.10.2014                           #
# Author:       Arthur (Berserkr) Gareginyan                  #
# Author URI:   http://mycyberuniverse.com/author.html        #
# Email:        arthurgareginyan@gmail.com                    #
# License:      GNU General Public License, version 3 (GPLv3) #
# License URI:  http://www.gnu.org/licenses/gpl-3.0.html      #
#=============================================================#
  
#                   USAGE:
#       ~/count_num_lines.sh /example_directory
 
 
################### SETUP VARIABLES #######################
place="$1"
 
 
################## DECLARE FUNCTIONS ######################
 
# Поиск файлов PHP и вывод списка
function listPHPFiles() {
    list_php=`find ./ -name "*php"`
    for php_file in $list_php
    do
            echo $php_file
    done
}
 
# Поиск файлов CSS и вывод списка
function listCSSFiles() {
    list_css=`find ./ -name "*css"`
    for css_file in $list_css
    do
            echo $css_file
    done
}
 
# Подсчёт PHP файлов
function countingPHPFiles() {
    count=$(find ./ -name "*php" | wc -l | sed 's/^ *//')
    PHPFiles=$count
}
 
# Подсчёт CSS файлов
function countingCSSFiles() {
    count=$(find ./ -name "*css" | wc -l | sed 's/^ *//')
    CSSFiles=$count
}
 
# Сложение всех строк
function additionFiles() {
    numFiles=$[$PHPFiles+$CSSFiles]
}
 
# Подсчёт строк в PHP файлах
function countingPHPLines() {
    for php_file in $list_php
    do
            cmd_php=`awk 'END { print NR }' $php_file`
            num_php=$[$num_php+$cmd_php]
    done
}
 
# Подсчёт строк в CSS файлах
function countingCSSLines() {
    for css_file in $list_css
    do
            cmd_css=`awk 'END { print NR }' $css_file`
            num_css=$[$num_css+$cmd_css]
    done
}
 
# Сложение всех строк
function additionLines() {
    numLines=$[$num_php+$num_css]
}
 
######################## GO ###############################
# Переход в рабочюю директорию
pushd $place >/dev/null 2>&1
 
echo -e "\nLIST OF All FOUNDED FILES:"
listPHPFiles
listCSSFiles
countingPHPFiles
countingCSSFiles
additionFiles
countingPHPLines
countingCSSLines
additionLines
 
popd >/dev/null 2>&1
 
# Результат
echo -e "\nIN $PHPFiles PHP FILES: $num_php lines"
echo -e "IN $CSSFiles CSS FILES: $num_css lines"
echo -e "\nIN ALL $numFiles FILES: $numLines lines"
 
exit 0
