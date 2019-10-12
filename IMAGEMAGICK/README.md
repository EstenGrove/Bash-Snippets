# ImageMagick Image Processor


## Quick Access

- [Converting Images](#converting-images)
- [Resizing Images](#)
- [Convert size and Force EXACT dimensions](#convert-size-and-force-exact-dimensions)
- [Rotate Image](#rotate-image)
- [Image Effects](#image-effects)
  - [Charcoal Drawing Effect](#add-a-drawn-effect)
  - [Imploded Swirl Effect](#add-an-imploded-effect)
- [Batch Processing](#batch-processing)


## Converting Images

```bash
# SYNTAX: convert <original-img>.png <output-img>.jpg
```

#### Convert ```.png``` to ```.jpg```

```bash
convert myimage.png myimage.jpg
```


## Resizing Images
When resizing images, ImageMagick will try to maintain aspect ratio which can slightly change the actual size that gets output.

```bash
# SYNTAX: convert <original-img> -resize <dimensions-in-px> <output-img>
```

#### Convert Size to 200x100 (200px(w) by 100px(h))

```bash
convert example.png -resize 200x100 example.png
```

#### Convert Size and Force EXACT Dimenstions

```bash
convert <origin-img> -resize <dimensions>! <output-img>
```


## Rotate Image

```bash
convert example.jpg -rotate 90 example-rotated.jpg
```

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

## Batch Processing
