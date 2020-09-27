FROM python:3.8

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY main.py /app

CMD [ "python", "get_hello_world.py" ]