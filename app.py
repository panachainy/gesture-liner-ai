from flask import Flask, request, jsonify
from services.image_classification_service import ImageClassificationService

app = Flask(__name__)

# Load your TensorFlow model
model_path = './models/gesture'
classes = ["gesture_2", "gesture_4", "gesture_3", "gesture_1"]

image_classifier = ImageClassificationService(model_path, classes)

@app.route('/classify', methods=['POST'])
def classify_image():
    try:
        # Assuming you send the image as a file in the request
        image_file = request.files['image']

        if image_file:
            # Perform image classification using the service
            detected_class, class_scores = image_classifier.classify_image(image_file)

            # Construct the response
            response_data = {
                'class': detected_class,
                'scores': class_scores
            }

            return jsonify(response_data), 200
        else:
            return jsonify({'error': 'Image not found in the request'}), 400

    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3800)
