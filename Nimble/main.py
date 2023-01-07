import webcolors
import werkzeug
from flask import Flask, request, jsonify
import pandas as pd
import re
import cv2
import matplotlib.pyplot as plt
import spacy
import matplotlib.pyplot as plt
import pandas as pd
from PIL import Image
import PIL
import numpy as np
from pandas import to_numeric
#from tensorflow import keras
# from keras import Sequential
# from keras.layers import Flatten, Conv2D, Dense, MaxPooling2D, BatchNormalization, Dropout
#import tensorflow as tf
import webcolors
import cv2
global ptype
global percent_customer
global avg_rating
global avg_selling_price
global high_low
global diff_lead
global tscore
global segment
global percent_segment
typeText='TRUE WIRELESS'

dataDict = {}
data = pd.read_csv(r"E:\Chitkara\API\data.csv")


def color_count(col):
    number = 0
    c = col.split()
    for color in c:
        color = color.lower()
        number = number + data['Color'].apply(lambda x: len([t for t in x.split() if re.findall(color, str(t))])).sum()
        color = color.capitalize()
        number = number + data['Color'].apply(lambda x: len([t for t in x.split() if re.findall(color, str(t))])).sum()
    return number

def char_counts(x):
    s = x.split()
    x = " ".join(s)
    return len(x) - 17

img_path = r"E:\Chitkara\API\train\train\onear\2.jfif"
img = cv2.imread(img_path)
img = cv2.resize(img, (720, 720))


# Reading csv file with pandas and giving names to each column
index = ["Color", "color_name", "hex", "R", "G", "B"]
csv = pd.read_csv(r'E:\Chitkara\API\python-project-color-detection\colors.csv', names=index, header=None)

import PIL
import matplotlib.pyplot as plt
import webcolors
from PIL import Image
import requests
from io import BytesIO
from webcolors import (
    CSS3_HEX_TO_NAMES,
    hex_to_rgb,
)
import cv2
import pandas as pd

img = Image.open(img_path)


def closest_colour(requested_colour):
    min_colours = {}
    for key, name in webcolors.CSS3_HEX_TO_NAMES.items():
        r_c, g_c, b_c = webcolors.hex_to_rgb(key)
        rd = (r_c - requested_colour[0]) ** 2
        gd = (g_c - requested_colour[1]) ** 2
        bd = (b_c - requested_colour[2]) ** 2
        min_colours[(rd + gd + bd)] = name
    return min_colours[min(min_colours.keys())]


def top_colos(image, n):
    # convert the image to rgb
    image = image.convert('RGB')

    # resize the image to 300 x 300
    image = image.resize((300, 300))

    detected_colors = []
    for x in range(image.width):
        for y in range(image.height):
            detected_colors.append(closest_colour(image.getpixel((x, y))))
    Series_Colors = pd.Series(detected_colors)
    output = Series_Colors.value_counts() / len(Series_Colors)
    return (output.head(n))


oc = 0
ans = top_colos(img, 1)
res = (str(ans.index[0]))
print(res)
cscore = color_count(res) * 0.1
#print(cscore)


# this graph to be shown in the report directly
dt = data['Color'].value_counts().unique()
import matplotlib.pyplot as plt

plt.figure(figsize=(15, 5))
plt.bar(
    ['black', 'white', 'blue', 'yellow', 'grey', 'multicolor', 'green', 'orange', 'lime', 'silver', 'violet', 'brown',
     'metal', 'gold'], dt,
    color=['black', 'white', 'blue', 'yellow', 'grey', 'red', 'green', 'orange', 'lime', 'silver', 'violet', 'brown',
           'silver', 'gold'], edgecolor='black')
plt.show()

# input statement to take input from the user
price = int(input("enter the price = "))

def setcat(price):
    if price < 500:
        cat = str('Lower Segment')
        cent = 42.8
    elif (price > 500 and price < 2500):
        cat = str('Medium Segment')
        cent = 54
    elif (price>2500 and price<5000):
        cat = str('Higher Segment')
        cent = 2.4
    elif price > 5000:
        cat = str('Premium Segment')
        cent = .4
    return cat, cent

def headtype(type):
    type = type.lower()
    if type == 'in the ear':
        return 0
    elif type == 'on the ear':
        return 1
    elif type == 'true wireless':
        return 2

def Tscore(m, price):
    price = float(price)
    global tscore, percent_customer, avg_rating, avg_selling_price, high_low, diff_lead, ptype
    if (m == 0):
        ptype = "In the Ear"
        percent_customer = "45.9% of customers in ear type headphones."
        avg_rating = "3.86"
        avg_selling_price = '638.5'
        if (price < 632.58):
            high_low = "Your Product's Price is less than average market price."
            diff_lead = 'Price is below average price by ' + str(638.58 - price)
            val = price / 63
            tscore = val
        else:
            high_low = "Your Product's Price is higher than average market price."
            diff_lead = "Price lead the average price by " + str(price - 638.58)
            val = 638/price
            tscore = val
    elif (m == 1):
        ptype = "On the Ear"
        percent_customer = '8.3% of customers on ear type headphones.'
        avg_rating = '3.84'
        avg_selling_price = '1170'
        if (price < 1170):
            high_low = "Your Product's Price is less than average market price."
            diff_lead = 'Price is below average price by ' + str(1170 - price)
            val = price / 1170
            tscore = val
        else:
            high_low = "Your Product's Price is higher than average market price."
            diff_lead = 'Price lead average price by ' + str(price - 1170)
            val = 1170/price
            tscore = val
    elif (m == 2):
        ptype = "True Wireless"
        percent_customer = '31.4% of customers on ear type headphones.'
        avg_rating = '3.77'
        avg_selling_price = '1124'
        if (price < 1124):
            high_low = "Your Product's Price is less than average market price."
            diff_lead = 'Price is below average price by ' + str(1124 - price)
            val = price/1124
            tscore = val
        else:
            high_low = "Your Product's Price is higher than average market price."
            diff_lead = 'Price lead average price by ' + str(price - 1124)
            val = 1124/price
            tscore = val

    cat, cent = setcat(price)
    segment = cat
    percent_segment = cent

    dataDict.update({'ptype': ptype})
    dataDict.update({'percent_customer': percent_customer})
    dataDict.update({'avg_rating': avg_rating})
    dataDict.update({'avg_selling_price': avg_selling_price})
    dataDict.update({'high_low': high_low})
    dataDict.update({'diff_lead': diff_lead})
    dataDict.update({'diff_lead': diff_lead})
    dataDict.update({'segment': segment})
    dataDict.update({'percent_segment': percent_segment})
    #dataDict.update({'cscore': cscore})
    return tscore

dataDict.update({'cscore':cscore})
# score = Tscore(headtype(typeText), price)
# print("price score: " + str(score))

nlp = spacy.load("en_core_web_sm")

def nscore(name):
    name = str(name)
    doc = nlp(name)
    data['similarity'] = data['Model'].apply(lambda x: nlp(x).similarity(nlp(doc)))
    scoreName = data['similarity'].max()
    dataDict.update({'scoreName': scoreName})


app = Flask(__name__)
global priceInput


@app.route('/upload', methods=['POST'])

    # this function is run every time a request is made in form of url10
def upload():
    if (request.method == "POST"):
        imagefile = request.files['image']
        filename = werkzeug.utils.secure_fileaname(imagefile.filename)
        imagefile.save("/uploadedimages/" + filename)
        return jsonify({
            "message": "Image uploaded successfully"
        })
        # userInput = request.args['query']
        # userInput = float(userInput)
        # processed = Tscore(predictProduct(img),userInput)
        # d['output'] = processed



#route to fetch name of the product
@app.route('/api', methods = ['GET'])
def fetchname():
    d = {}
    userInputName = request.args['query']
    userInputName = str(userInputName)
    nscore(userInputName)
    return d

# route to fetch price of the product11
userInputPrice = 0.0
@app.route('/apii', methods = ['GET'])
def fetchprice():
    d = {}
    userInputPrice = request.args['query']
    userInputPrice = str(userInputPrice)
    fo = open('text.txt', 'w')
    fo.write(userInputPrice)
    return d


# route to fetch type of the headphone
@app.route('/apiii', methods = ['GET'])
def fetchtype():
    userInputType = request.args['query']
    userInputType = str(userInputType)
    with open('text.txt') as f:
        inputPrice = f.readline()
    Tscore(headtype(userInputType), inputPrice)
    return dataDict


if __name__ == "__main__":
    app.run()
#
# nameScore = nscore('Noise')

# print(dataDict)


# def returnscore():
#     return cscore, Tscore(0, price)

