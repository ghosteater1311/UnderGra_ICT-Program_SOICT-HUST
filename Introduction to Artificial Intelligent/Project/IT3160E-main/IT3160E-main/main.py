import tkinter as tk
from PIL import Image, ImageDraw, ImageOps
import numpy as np
from tensorflow.keras.models import load_model
import os

# Load the trained model
MODEL_PATH = 'final_model.h5'  # Change this path if needed
if not os.path.exists(MODEL_PATH):
    raise FileNotFoundError(f"Model file not found at: {MODEL_PATH}")

model = load_model(MODEL_PATH)

canvas_size = 280  # Drawing canvas size (10x the input resolution)
img_size = 28      # Input size for the CNN model

class DigitRecognizer:
    def __init__(self, master):
        self.master = master
        self.master.title("Draw a Digit")

        self.canvas = tk.Canvas(master, width=canvas_size, height=canvas_size, bg="black")
        self.canvas.pack()

        self.button_frame = tk.Frame(master)
        self.button_frame.pack()

        self.predict_btn = tk.Button(self.button_frame, text="Predict", command=self.predict_digit)
        self.predict_btn.pack(side=tk.LEFT)

        self.clear_btn = tk.Button(self.button_frame, text="Clear", command=self.clear_canvas)
        self.clear_btn.pack(side=tk.LEFT)

        self.label = tk.Label(self.button_frame, text="Prediction: ")
        self.label.pack(side=tk.LEFT)

        self.result = tk.Label(self.button_frame, text="", font=("Helvetica", 16, "bold"))
        self.result.pack(side=tk.LEFT)

        self.image = Image.new("L", (canvas_size, canvas_size), color=0)
        self.draw = ImageDraw.Draw(self.image)

        self.last_x = None
        self.last_y = None

        self.canvas.bind("<B1-Motion>", self.paint)
        self.canvas.bind("<ButtonPress-1>", self.set_last_pos)
        self.canvas.bind("<ButtonRelease-1>", self.reset_last_pos)

    def set_last_pos(self, event):
        self.last_x, self.last_y = event.x, event.y

    def reset_last_pos(self, event):
        self.last_x, self.last_y = None, None

    def paint(self, event):
        if self.last_x is not None and self.last_y is not None:
            self.canvas.create_line(self.last_x, self.last_y, event.x, event.y,
                                    fill="white", width=12, capstyle=tk.ROUND, smooth=True)
            self.draw.line([self.last_x, self.last_y, event.x, event.y], fill=255, width=12)
        self.last_x, self.last_y = event.x, event.y

    def clear_canvas(self):
        self.canvas.delete("all")
        self.draw.rectangle([0, 0, canvas_size, canvas_size], fill=0)
        self.result.config(text="")

    def predict_digit(self):
        # Get bounding box of the content
        bbox = self.image.getbbox()
        if bbox is None:
            print("No digit drawn.")
            return

        # Crop to the content
        cropped = self.image.crop(bbox)

        # Resize keeping aspect ratio
        max_dim = max(cropped.size)
        scale = img_size / max_dim
        new_size = tuple([int(dim * scale) for dim in cropped.size])
        resized = cropped.resize(new_size, Image.Resampling.LANCZOS)

        # Create a blank 28x28 image and paste the resized digit centered
        new_img = Image.new("L", (img_size, img_size), color=0)
        upper_left = ((img_size - new_size[0]) // 2, (img_size - new_size[1]) // 2)
        new_img.paste(resized, upper_left)

        # Convert to numpy and flatten
        img_arr = np.asarray(new_img).astype(np.float32)
        img_arr = img_arr.reshape(1, 28, 28, 1) / 255.0

        # Predict
        prediction = model.predict(img_arr)
        digit = np.argmax(prediction)
        confidence = np.max(prediction)

        # Show result
        self.result.config(text=f"{digit} ({confidence*100:.2f}%)")

# Run the GUI app
if __name__ == "__main__":
    root = tk.Tk()
    app = DigitRecognizer(root)
    root.mainloop()
