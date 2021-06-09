#!/usr/bin/env python3

import evdev
import sys

dev = evdev.InputDevice('/dev/input/by-id/usb-04d9_USB_Keyboard-event-kbd')

dev.write(evdev.ecodes.EV_KEY, evdev.ecodes.KEY_LEFTALT, 1)
dev.write(evdev.ecodes.EV_KEY, evdev.ecodes.KEY_RIGHTALT, 1)
dev.write(evdev.ecodes.EV_KEY, evdev.ecodes.KEY_LEFTALT, 0)
dev.write(evdev.ecodes.EV_KEY, evdev.ecodes.KEY_RIGHTALT, 0)
dev.write(evdev.ecodes.EV_SYN, 0, 0)
