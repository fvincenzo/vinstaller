#!/bin/bash

jpegtopnm $1 | ppmquant 256 | ppmtobmp --bpp 8 > ubootimg-8.bmp

