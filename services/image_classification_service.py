import tensorflow as tf
import numpy as np
from PIL import Image

class ImageClassificationService:
    def __init__(self, model_path, classes):
        self.model = tf.saved_model.load(model_path)
        self.classes = classes

    def classify_image(self, image):
        img = Image.open(image).convert('RGB')
        img = img.resize((300, 300 * img.size[1] // img.size[0]), Image.LANCZOS)
        inp_numpy = np.array(img)[None]

        class_scores = self.model(tf.constant(inp_numpy, dtype=tf.float32))[0].numpy()
        detected_class = self.classes[class_scores.argmax()]

        return detected_class, class_scores.tolist()
