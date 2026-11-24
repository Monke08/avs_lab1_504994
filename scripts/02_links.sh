#!/bin/bash
set -e

cd ~/lab0

cp eleon/hotel_office/eleonora_order eleon/victor/hall/owner_order
cp -r eleon/roof eleon/victor/roof_archive
ln -s ../victor/kitchen/new_menu eleon/staff_room/current_menu
ln -s eleon/reception hotel_reception
ln opening_day eleon/victor/hall/opening_log
cat eleon/victor/hall/opening_guests eleon/reception/guest_notes > eleon/reception/all_guests
cat eleon/staff_room/kostya_message >> opening_day
mv eleon/roof/max_letter eleon/hotel_office/max_message
