#!/bin/bash

source $(pwd)/lib/UserAgent.sh

url=()

google="https://google.com"

    req=$(curl --silent \
         --request GET \
         --location \
         "${google}" --compressed --insecure)

string="$req"

  echo "${string}" | html2text
