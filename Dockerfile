FROM python:3.11
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y libgl1 libglib2.0-0
RUN pip install --no-cache-dir numpy pandas scikit-learn wandb opencv-python
CMD ["python", "distance_classification.py"]