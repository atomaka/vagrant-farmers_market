#!/bin/bash

git clone git@git.atomaka.com:talks/vagrant-farmers\_market.git
cd vagrant-farmers_market
git clone https://github.com/atomaka/farmers_markets.git code
vagrant up
vagrant ssh -c "cd app && rackup -o 0.0.0"
