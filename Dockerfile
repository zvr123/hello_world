FROM python:3.11-slim
WORKDIR /usr/src
COPY hello.py /usr/src

# Copy requirements first (better caching)
COPY requirements.txt .

# Documentation that the container intends to use port 8080
EXPOSE 8080

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3","/usr/src/hello.py"]
