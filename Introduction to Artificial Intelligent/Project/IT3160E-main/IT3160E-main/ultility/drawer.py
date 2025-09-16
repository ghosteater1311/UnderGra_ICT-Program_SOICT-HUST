import tkinter as tk
from PIL import Image, ImageDraw, ImageOps
import numpy as np
import csv
import os

canvas_size = 280  # 10x scale for better drawing
img_size = 28      # Target image size
save_path = "../digit_data1.csv"

class DigitDrawer:
    def __init__(self, master):
        self.master = master
        self.master.title("Draw a Digit")

        self.canvas = tk.Canvas(master, width=canvas_size, height=canvas_size, bg="black")
        self.canvas.pack()

        self.button_frame = tk.Frame(master)
        self.button_frame.pack()

        self.clear_btn = tk.Button(self.button_frame, text="Clear", command=self.clear_canvas)
        self.clear_btn.pack(side=tk.LEFT)

        self.save_btn = tk.Button(self.button_frame, text="Save", command=self.save_digit)
        self.save_btn.pack(side=tk.LEFT)

        self.label = tk.Label(self.button_frame, text="Enter Label:")
        self.label.pack(side=tk.LEFT)

        self.entry = tk.Entry(self.button_frame, width=2)
        self.entry.pack(side=tk.LEFT)

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
            self.canvas.create_line(self.last_x, self.last_y, event.x, event.y, fill="white", width=12, capstyle=tk.ROUND, smooth=True)
            self.draw.line([self.last_x, self.last_y, event.x, event.y], fill=255, width=12)
        self.last_x, self.last_y = event.x, event.y

    def clear_canvas(self):
        self.canvas.delete("all")
        self.draw.rectangle([0, 0, canvas_size, canvas_size], fill=0)

    def save_digit(self):
        label = self.entry.get()
        if not label.isdigit():
            print("Please enter a digit label (0-9).")
            return

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
        arr = np.asarray(new_img).astype(np.float32)
        flat = arr.flatten()

        # Prepend label
        row = [int(label)] + flat.tolist()

        # Append to CSV
        write_header = not os.path.exists(save_path)
        with open(save_path, "a", newline="") as f:
            writer = csv.writer(f)
            if write_header:
                writer.writerow(["label"] + [f"p{i}" for i in range(784)])
            writer.writerow(row)

        print(f"Saved digit '{label}' to {save_path}")
        self.clear_canvas()

# Run app
if __name__ == "__main__":
    root = tk.Tk()
    app = DigitDrawer(root)
    root.mainloop()
