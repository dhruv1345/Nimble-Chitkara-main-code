import cv2
import pandas as pd
import numpy as np

img_path = r"E:\Chitkara\API\train\train\onear\14.jfif"
img = cv2.imread(img_path)
img = cv2.resize(img, (700, 500))

def bgremove1(myimage):
    # Blur to image to reduce noise
    myimage = cv2.GaussianBlur(myimage, (5, 5), 0)

    # We bin the pixels. Result will be a value 1..5
    bins = np.array([0, 51, 102, 153, 204, 255])
    myimage[:, :, :] = np.digitize(myimage[:, :, :], bins, right=True) * 51

    # Create single channel greyscale for thresholding
    myimage_grey = cv2.cvtColor(myimage, cv2.COLOR_BGR2GRAY)

    # Perform Otsu thresholding and extract the background.
    # We use Binary Threshold as we want to create an all white background
    ret, background = cv2.threshold(myimage_grey, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)

    # Convert black and white back into 3 channel greyscale
    background = cv2.cvtColor(background, cv2.COLOR_GRAY2BGR)

    # Perform Otsu thresholding and extract the foreground.
    # We use TOZERO_INV as we want to keep some details of the foregorund
    ret, foreground = cv2.threshold(myimage_grey, 0, 255,
                                    cv2.THRESH_TOZERO_INV + cv2.THRESH_OTSU)  # Currently foreground is only a mask
    foreground = cv2.bitwise_and(myimage, myimage,
                                 mask=foreground)  # Update foreground with bitwise_and to extract real foreground

    # Combine the background and foreground to obtain our final image
    finalimage = background + foreground

    return finalimage


cv2.imshow("img",bgremove1(img))