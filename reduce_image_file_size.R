background-image: url(slides/Daylight_EG.png)
background-position: contain
background-size: 100px

background-position: 15% 60% 
  background-size: 500px


library("imager")
original = imager::load.image("slides/Daylight_EG.png")
d = dim(original) [1:2]
d

fs::file_info("slides/Daylight_EG.png") $size
1.52M

scale = max(d / 500)
img = imager::resize(original,
                     imager::width(original) / scale,
                     imager::height(original) / scale,
                     interpolation_type = 6)
img

Image. Width: 500 pix Height: 314 pix Depth: 1 Colour channels: 4 

square_img = imager::pad(img, 
                         nPix = 500 - height(img), 
                         axes = "y", 
                         val = "white")
imager::save.image(square_img, file = "slides/Daylight_EGb.png")
square_img


imager::save.image(img, file = "slides/Daylight_EGb.png")

fs::file_info("slides/Daylight_EGb.png")$size
#> 323