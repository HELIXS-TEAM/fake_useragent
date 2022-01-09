#!/bin/bash

source $(pwd)/lib/UserAgent.sh

ua=$(Bash::Ua.Random)

url=()

google="https://google.com"

    req=$(curl --silent \
         --request GET \
         --location \
         -H "user-agent: ${ua}" --url "${google}" --compressed --insecure)

ping -c1 google.com>/dev/null 2>&1

response(){
    if [[ $? == 0 ]]; then
         echo "${req}" | html2text
       return $?
     else (
            return $?
       )
    fi
}

 (response)
