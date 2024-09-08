from flask import Flask, request, jsonify
import werkzeug
import json 

from tensorflow.keras.models import load_model
from keras.preprocessing import image
import tensorflow as tf
from tensorflow import keras
import numpy as np
import os

app= Flask(__name__)

@app.route('/upload', methods=["POST"])
def upload():
    if(request.method == "POST"):
        imagefile = request.files['image']
        filename = werkzeug.utils.secure_filename(imagefile.filename)
        imagefile.save("uploadedimages/" + filename)
        print(imagefile.filename)
        

        DetecXster_model = load_model("G:/Software/Flutter/GUI/new/DetecXster_model.h5")

        img = image.load_img("uploadedimages/" + imagefile.filename, target_size=(256,256,3))
        img = image.img_to_array(img) / 255
        img = np.expand_dims(img,axis=0)

        prediction = DetecXster_model.predict(img)
        predicted_label = np.argmax(prediction)

        ##changing numpy int64 into python int type.
        predicted_label = predicted_label.item()
        Diseases_names = ["Corn(maize) Cercospora leafspotGrayleafspot", "Corn(maize) Commonrust", "Corn(maize) healthy", "Corn(maize) NorthernLeafBlight", "Grape Blackrot", "Grape Esca(Black_Measles)", 
                "Grape healthy", "Grape Leafblight(Isariopsis_Leaf_Spot)", "Pepper,bell Bacterial_spot", 
                "Pepper,bell healthy", "Potato Earlyblight", "Potato healthy", "Potato Lateblight", "Strawberry healthy", 
                "Strawberry Leafscorch", "Tomato Bacterialspot", "Tomato Earlyblight", "Tomato healthy", "Tomato Lateblight", 
                "Tomato LeafMold", "Tomato Septorialeafspot", "Tomato Spidermites Twospottedspidermite", "Tomato TargetSpot", 
                "Tomato TomatoMosaicVirus", "Tomato TomatoYellowLeafCurlVirus"]
            
        
        json_object = json.dumps(Diseases_names, indent = 4) 
        
        print("predicted_label int -> " + str(predicted_label))
        
        print("predicted_label -> " + Diseases_names[predicted_label])
        return(str(predicted_label))


if __name__ == "__main__":
    app.run(host="0.0.0.0",debug=True, port=4000)