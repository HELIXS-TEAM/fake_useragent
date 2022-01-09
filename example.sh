#!/bin/bash

source $(pwd)/lib/UserAgent.sh

ua=$(Bash::Ua.Random)

url=()

Uri="https://example.com"

    req=$(curl --silent \
         --request GET \
         --location \
         -H "user-agent: ${ua}" --url "${Uri}" --compressed --insecure)

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
