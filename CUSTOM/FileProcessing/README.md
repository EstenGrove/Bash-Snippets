# Converting & Processing Files (ie images, pdf's etc.)

A collection of bash scripts for processing and converting files, either compression, optimization, converting images, and many file types including text files.

---

# **Quick Access**
- [Convert ALL images in a folder](#convert-all-images-in-a-folder)
- [Convert Image to WebP Format](#convert--compress-an-image-to-webp-format)

---

## **Convert ALL Images In a Folder**
The following script will convert *all* ```.jpg```'s in a folder to ```.pdf```'s.

<details>
  <summary>Convert ALL Images in a Folder</summary>

**Details**
- Converts all ```.jpg```'s in a folder to ```.pdf```'s.

```bash
# only works for '.jpg' files
# uses the "convert" util of imagemagick

for f in *.jpg; do
  convert ./"$f" ./"${f%.jpg}.pdf"
done
```

</details>


---

## **Convert & Compress an Image to WebP Format**
The following script will convert an image to webp format and optimize it via lossless compression.

**Helpful Resource for WebP Conversions and Usage**
[Josh Comeau's WebP Resource](https://joshwcomeau.com/performance/embracing-modern-image-formats/)

<details>
  <summary>Convert & Compress an Image to WebP Format</summary>
  
**Details**
- Below you call the ```cwebp``` function
- Pass it the ```-q``` flag which sets the quality
  - Accepts any value from 0-100.
  - ```100``` means NO compression
  - ```0``` means 100% compression
  - For best results set it to ```70``` or ```80``` (ie below ```90```).
  
```bash
# Syntax: 
# cwebp -q <0-100> <input_file> -o <output_file>

cwebp -q 80 inputImg.png -o outputImg.webp
```
  

</details>

---

