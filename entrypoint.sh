#!/bin/bash
function cloneRepository {
    git clone https://$USER:$PASS@bitbucket.org/Giugiur/lpe-generic-bot.git $NAME
}

function dependencies {
        npm install
}

function run {
    LANG=$1 ESPORT=$2 NAME=$3 ID=$4 VOUCH=$5 TOKEN=$6 npm run index
}

cd /home/bot && mkdir $NAME
cloneRepository
cd $NAME
dependencies
run $LANG $ESPORT $NAME $ID $VOUCH $TOKEN