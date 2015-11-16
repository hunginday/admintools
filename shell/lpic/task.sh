#!/bin/bash

dbname=task
tablelayout="(id int not null auto_increment, primary key(id), name varchar(255), description text)"
action=$1
listname=$2
taskname=$3
description=$4

function addlist {
    echo create table $listname$tablelayout | mysql $dbname
}

function addtask {
    echo "insert into ${listname} (name, description) values ('${taskname}', '${description}')" | mysql $dbname
}

function lslist {
    echo show tables | mysql $dbname
}

function lstask {
    if [ -z "${listname}" ]
    then
        echo show tables | mysql $dbname
    else
        echo "select * from ${listname}" | mysql $dbname
    fi
}

case $action in
    addlist)
        addlist
        ;;
    dellist)
        dellist
        ;;
    lslist)
        lslist
        ;;
    addtask)
        addtask
        ;;
    deltask)
        deltask
        ;;
    lstask)
        lstask
        ;;
esac
