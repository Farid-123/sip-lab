#!/bin/bash

git clone https://github.com/Farid-123/sip-lab
cd sip-lab
docker compose build
docker compose up -d
