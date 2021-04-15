#!/bin/bash

# created by Harrisson Biaggio

lynx -dump "http://google.com.br/search?num=500&q=site:"$1"+ext:"$2"" | cut -d "=" -f2 | grep ".$2" | egrep "site|google" | sed s'/...$//'g
