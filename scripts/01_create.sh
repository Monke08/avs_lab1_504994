#!/bin/bash
set -e

mkdir ~/lab0
cd ~/lab0
git init -b main

mkdir eleon
mkdir eleon/victor
mkdir eleon/victor/kitchen
mkdir eleon/victor/hall
mkdir eleon/hotel_office
mkdir eleon/reception
mkdir eleon/staff_room
mkdir eleon/roof

echo "Блюдо от Виктора Баринова
Закуска от Екатерины Семёновой
Десерт для гостей отеля Eleon
Новое блюдо Дениса на проверке у шефа" > eleon/victor/kitchen/new_menu

echo "На кухне подготовить утиную ножку
В зал отправить две рыбные закуски
Для Софии приготовить особый десерт" > eleon/victor/kitchen/dinner_order

echo "Элеонора Андреевна встречает первых гостей
София Яновна проверяет готовность зала
Виктор Баринов представляет новое меню
Костя помогает команде ресторана" > eleon/victor/hall/opening_guests

echo "Ресторан Victor должен открыться вовремя
Баринов отвечает за кухню
София встречает важных гостей
Персонал отеля помогает в зале" > eleon/hotel_office/eleonora_order

echo "Утром проверить ресторан Victor
Днём провести встречу с Элеонорой
Вечером принять первых гостей" > eleon/reception/sofia_schedule

echo "Гости попросили столик рядом с окном
Один гость хочет поговорить с Бариновым
Постоянные гости ждут знакомое блюдо" > eleon/reception/guest_notes

echo "Новый китель приготовлен для шефа
На форме вышито имя Виктор
Китель находится в комнате персонала" > eleon/staff_room/barinov_uniform

echo "Костя приехал помочь перед открытием
Бар готов к вечернему обслуживанию
После смены он ждёт Настю в холле" > eleon/staff_room/kostya_message

echo "Макс передал привет всей команде
Он помнит работу с Виктором Петровичем
Письмо оставлено на крыше отеля" > eleon/roof/max_letter

echo "Баринов поднялся на крышу после смены
Элеонора нашла его возле старого рояля
Команда ресторана собралась вместе" > eleon/roof/roof_event

echo "Ресторан Victor открывается вечером
Баринов проверяет работу кухни
София встречает гостей в зале" > opening_day

chmod 755 eleon
chmod u=rwx,g=rx,o= eleon/victor
chmod 750 eleon/victor/kitchen
chmod u=rw,g=r,o=r eleon/victor/kitchen/new_menu
chmod 640 eleon/victor/kitchen/dinner_order
chmod u=rwx,g=rwx,o= eleon/victor/hall
chmod 644 eleon/victor/hall/opening_guests
chmod 710 eleon/hotel_office
chmod u=r,g=r,o= eleon/hotel_office/eleonora_order
chmod u=rwx,g=rx,o=x eleon/reception
chmod 640 eleon/reception/sofia_schedule
chmod u=rw,g=r,o= eleon/reception/guest_notes
chmod 750 eleon/staff_room
chmod 600 eleon/staff_room/barinov_uniform
chmod u=r,g=r,o= eleon/staff_room/kostya_message
chmod u=rwx,g=rx,o= eleon/roof
chmod 640 eleon/roof/max_letter
chmod u=r,g=r,o= eleon/roof/roof_event
chmod 644 opening_day
