#!/bin/bash

git clone https://github.com/atomaka/vagrant-farmers_market.git
cd vagrant-farmers_market
git clone https://github.com/atomaka/farmers_markets.git
vagrant up
vagrant ssh -c "cd app && rackup -o 0.0.0"
