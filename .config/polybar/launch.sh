#!/bin/env sh

pkill polybar

sleep 1;

polybar one &
polybar two &
polybar three &
