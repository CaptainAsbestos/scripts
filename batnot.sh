#!/bin/bash

acpi |  while read OUT ; do notify-send -u low "$OUT"; done


