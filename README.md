# ImagePreview

ImagePreview is simple script that can preview images in your terminal without opening any graphical windows.

![Example](https://github.com/MattTheCoder-W/ImagePreview/blob/main/README-images/example.png "Example")

## Requirements

Python:

`pip install -r requirements.txt`

To run ImagePreview you need:
*  opencv-python
*  argparse

## Installation

Make sure that all C scripts are compiled:
`./compile.sh`

## Usage

`./imgprev [-s] [-c] FILE`

| Argument  | Description  |
| :------------: | :------------: |
|  `-s` | Single char mode  |
| `-c`  |  Use `cat` instead of `printout` *(slightly faster)*  |
| `FILE` | Image file to preview |

