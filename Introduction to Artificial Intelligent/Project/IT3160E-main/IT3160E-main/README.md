# Capstone Project Group 14

This project explores and compares two machine learning approaches—K Nearest Neighbors (KNN) and Convolutional Neural Networks (CNN)—for classifying handwritten digits from the MNIST dataset and human-generated input. It includes experiments on distance metrics, filter configurations, dropout rates, and model size. A custom GUI tool is also provided for users to draw digits and evaluate model performance on real-time human input. The source code for GUI tool is in this repository, the experiments is conducted through Kaggle.

## Contributions

- **Đỗ Khánh Nam (60%)**
  - Implemented the core codebase, conducted experiments and evaluations. (40%)
  - Wrote the Experiment and Results, Discussion, and Conclusion sections of the report. (20%)

- **Lê Thanh Tùng (15%)**
  - Wrote the Introduction section of the report. (10%)
  - Formatted and edited the report using LaTeX. (5%)

- **Nguyễn Đức Anh (15%)**
  - Wrote the KNN background section of the report. (10%)
  - Created the presentation slides. (5%)

- **Võ Phú Lộc (10%)**
  - Wrote the CNN background section of the report. (10%)

## Kaggle Notebooks

The following Kaggle notebooks were used for experiments and comparisons:

- [Compare Model](https://www.kaggle.com/code/namkdo/compare-model): A notebook comparing the performance of KNN and CNN on human generated data.
- [Intro to CNN](https://www.kaggle.com/code/namkdo/introai-cnn): A notebook exploring Convolutional Neural Networks (CNN) for digit classification.
- [Intro to KNN](https://www.kaggle.com/code/namkdo/introai-knn): A notebook exploring k-Nearest Neighbors (KNN) for digit classification.


## Python Files

### `main.py`
- The main application file for the digit recognition GUI.
- Allows users to draw digits on a canvas and predicts the digit using a pre-trained CNN model (`final_model.h5`).

### `ultility/drawer.py`
- Provides a utility for drawing and saving digit images.
- Includes functionality to save drawn digits as 28x28 grayscale images in a CSV file.

### `ultility/show.py`
- Displays digit images from a CSV file (`digit_data1.csv`).
- Visualizes the pixel data and corresponding labels.

### `ultility/showMNIST.py`
- Loads and visualizes digit images from the MNIST dataset.
- Useful for understanding the structure of the dataset.

## Additional Files

### `requirements.txt`
- Lists the Python dependencies required to run the project.

### `digit_data1.csv`
- A CSV file containing centerd and rezized human generated digit data, including labels and pixel values.

### `final_model.h5`
- The pre-trained CNN model used for digit recognition.

## How to Run
Since tensorflow doesn't support python 3.13, we need to create a virtual enviroment to install tensorflow. If you are using python 3.12 or older, you don't need to create a virtual enviroment.
1. Create a virtual environment with Python 3.11:
   ```bash
   python3.11 -m venv .venv
   ```

2. Activate the virtual environment:
   - On Windows:
     ```bash
     .venv\\Scripts\\activate
     ```
   - On Linux/Mac:
     ```bash
     source .venv/bin/activate
     ```

3. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

4. Run the main application:
   ```bash
   python main.py
   ```
