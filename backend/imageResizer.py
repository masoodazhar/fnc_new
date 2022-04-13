import cv2
import numpy as np
import glob 
from pathlib import Path
import os
from PIL import Image

BASE_DIR = Path(__file__).resolve().parent.parent

# pastPath = str(BASE_DIR) + "/media/uploads_new/"

for img in glob.glob(str(BASE_DIR) + "/media/uploads/*"):
    # imageName, imageExt = os.path.splitext(img)
    baseName = os.path.basename(img)
    if not ".jfif" in baseName:
        direct = os.path.dirname(img)
        print("Working......in ", baseName)
        image = cv2.imread(direct+"/"+baseName, 1)

        dim = (640, 480)
        if 'Dino-Metropolis-Grey-018-Edit-1-600x400.jpg' == baseName:
            print('Dino-Metropolis-Grey-018-Edit-1-600x400.jpg')
        # resize image
        resized = cv2.resize(image, dim, interpolation = cv2.INTER_AREA)
        cv2.imwrite(str(BASE_DIR) + "/media/newUploads/" +baseName, resized)

    # img = Image.open(os.path.join(direct, img)) # images are color images
    # img = img.resize((420,315), Image.ANTIALIAS)
    # img.save(direct + "\\new_img\\" + baseName) 
