# `WEBP` Image Processing from the Command Line


---


## Convert & Compress `.png` to `.webp` Format

```bash
# SYNTAX: cwebp -q <quality(0-100)> <input-file> -o <output-file>.webp

# Convert/compress with 20% reduction in size to webp

cwebp -q 80 Cats.png -o Cats.webp
```

---

## Convert & Compress Multiple Photos From `.png` to `.webp` Format

```bash
# Uses the identical filename

for file in images/*; do cwebp -q 80 "$file" -o "${file%.*}.webp"; done


# EXAMPLE: Convert/Compress & rename files

for file in images/*; do cwebp -q 80 "$file" -o "PREVIEW-${file%.*}.webp"; done
```

---

