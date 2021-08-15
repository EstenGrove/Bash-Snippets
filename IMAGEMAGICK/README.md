# ImageMagick Image Processor


## Quick Access

- [Converting Images](#converting-images)
- [Resizing Images](#)
- [Convert size and Force EXACT dimensions](#convert-size-and-force-exact-dimensions)
- [Combination Commands: Resize & Optimize etc](#resize-and-optimize)
- [Compress/Optimize Image](#compress-or-optimize-image)
  - [Max Amount of Compression](#apply-the-max-amount-of-compression-to-an-image)
  - [Apply 25% Compression to Image](#apply-25-compression-to-image)
- [Rotate Image](#rotate-image)
- [Image Effects](#image-effects)
  - [Charcoal Drawing Effect](#add-a-drawn-effect)
  - [Imploded Swirl Effect](#add-an-imploded-effect)
- [Batch Processing](#batch-processing)
  - [Resize all images in a directory](#resize-all-images-in-a-directory)


-----------


## Converting Images

```bash
# SYNTAX: convert <original-img>.png <output-img>.jpg
```

#### Convert ```.png``` to ```.jpg```

```bash
convert myimage.png myimage.jpg
```

-----------


## Resizing Images
When resizing images, ImageMagick will try to maintain aspect ratio which can slightly change the actual size that gets output.

```bash
# SYNTAX: convert <original-img> -resize <dimensions-in-px> <output-img>
```

#### Convert Size to 200x100 (200px(w) by 100px(h))

```bash
convert example.png -resize 200x100 example.png
```

#### Convert Size and Force EXACT Dimensions

```bash
convert <origin-img> -resize <dimensions>! <output-img>
```

-----------

## Rotate Image

```bash
convert example.jpg -rotate 90 example-rotated.jpg
```

-----------


## Image Effects

There's a series of image *distortion* effects.


#### Add a "Drawn" Effect

```bash
convert <original-img> -charcoal 2 <output-img>
```

#### Add an "Imploded" Effect

```bash
convert <original-img> -implode 1 <output-img>
```

-----------


## Compress or Optimize Image

#### Apply 25% Compression to Image
- The following script will apply a 25% reduction-compression

```bash
convert <original-img> -strip -quality 75% <output-img>
```

#### Apply the Max Amount of Compression to an Image
This script will *actually* resize the image on-the-fly by 50% which will significantly reduce the size of the image.

```bash
convert input.jpg[50%x50%] -quality 70 output.jpg
```


-----------

## Resize and Optimize

```bash
# Resize jpg to 300px wide & optimize by 25% (ie quality = 75%)
convert input.jpg -resize 300 -quality 75 output.jpg
```


-----------


## Batch Processing


#### Resize All Images in a Directory
```bash
# resize all images in a folder
for i in *.jpg; do convert "$i" -resize 450x240 "$i_450x240"; done
```
