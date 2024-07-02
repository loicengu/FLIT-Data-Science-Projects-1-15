from flask import Flask, request, jsonify
import joblib
import numpy as np
app = Flask(__name__)

# Load the model
model = joblib.load('best_fraud_detection_model.pkl')

@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json(force=True)
    features = np.array(data['features']).reshape(1, -1)
    prediction = model.predict(features)
    output = {'prediction': int(prediction[0])}
    return jsonify(output)

if __name__ == '__main__':
    app.run(port=5000, debug=True)