#!/usr/bin/python
import this

def decode_zen(this):
    text = ""
    for letter in this.s:
        text += this.d[letter] if letter in this.d else letter

    return text

print decode_zen(this)
