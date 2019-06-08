#!/bin/bash


# convert all .png images to webp in a specific directory

parallel cwebp -q 80 {} -o {.}.webp ::: *.png
