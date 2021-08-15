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

## Custom Alias Script for Converting 1 Image to Multiple Sizes w/ Optimization

```bash
# Accepts an image by it's filename & resizes & optimizes it to various sizes:
# Resize(s): 350, 450, 550, 650, 750, 850, 950, 1150, 1250, 1350, 1450
# Optimization(s): Compresses by 10% (ie quality is '90%')
# USAGE: optImgs "MyImage.png"
optImgs(){
	base=$(basename -- "$1") # stores full filename as variable
	ext="${base##*.}"  # extracts file extension without the '.'
	file="${base%.*}"    # extracts just the filename without the extension


	# Convert & notify success!
	convert "$1" -resize 350 -quality 90 "$file"_350x."$ext";
	echo "✓ Compressed & resized: 350px - 90% quality";

	convert "$1" -resize 450 -quality 90 "$file"_450x."$ext";
	echo "✓ Compressed & resized: 450px - 90% quality";

	convert "$1" -resize 550 -quality 90 "$file"_550x."$ext";
	echo "✓ Compressed & resized: 550px - 90% quality";

	convert "$1" -resize 650 -quality 90 "$file"_650x."$ext";
	echo "✓ Compressed & resized: 650px - 90% quality";

	convert "$1" -resize 750 -quality 90 "$file"_750x."$ext";
	echo "✓ Compressed & resized: 750px - 90% quality!";

	convert "$1" -resize 850 -quality 90 "$file"_850x."$ext";
	echo "✓ Compressed & resized: 850px - 90% quality!";

	convert "$1" -resize 950 -quality 90 "$file"_950x."$ext";
	echo "✓ Compressed & resized: 950px - 90% quality!";

	convert "$1" -resize 1150 -quality 90 "$file"_1150x."$ext";
	echo "✓ Compressed & resized: 1150px - 90% quality!";

	convert "$1" -resize 1250 -quality 90 "$file"_1250x."$ext";
	echo "✓ Compressed & resized: 1250px - 90% quality!";

	convert "$1" -resize 1350 -quality 90 "$file"_1350x."$ext";
	echo "✓ Compressed & resized: 1350px - 90% quality!";

	convert "$1" -resize 1450 -quality 90 "$file"_1450x."$ext";
	echo "✓ Compressed & resized: 1450px - 90% quality!";

	convert "$1" -resize 1550 -quality 90 "$file"_1550x."$ext";
	echo "✓ Compressed & resized: 1550px - 90% quality!";

	echo "✅ $1 was converted, resized and optimized.";
	echo " ";
	echo " ";
	echo "Listing directory..."
	ld;
}


## USAGE: optImgs "MyImage.png"

```


---

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
