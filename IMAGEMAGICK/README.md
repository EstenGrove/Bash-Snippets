# ImageMagick Image Processor


## Quick Access

- [Converting Images](#converting-images)
- [Convert size and Force EXACT dimensions](#convert-size-and-force-exact-dimensions)
- [Rotate Image](#rotate-image)


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

#### Conver Size and Force EXACT Dimenstions

```bash
convert <origin-img> -resize <dimensions>! <output-img>
```


## Rotate Image

```bash
convert example.jpg -rotate 90 example-rotated.jpg
```
