FROM ubuntu:20.04

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Its necessary if use less ubuntu:22 version
RUN apt-get install -y curl

# Clean up after installing packages to reduce the image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# install poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Set the working directory
WORKDIR /app

# to run poetry directly as soon as it's installed
# ENV PATH="${PATH}:/root/.local/bin" -> for Debian python version
ENV PATH="/root/.local/bin:${PATH}"

# Install project dependencies using Poetry
COPY pyproject.toml ./
RUN poetry install

# Copy your Python script to the container
COPY ./src /app/src
COPY main.py /app/

# Run PyInstaller within the Poetry virtual environment
CMD ["poetry", "run", "pyinstaller", "--onefile", "/app/main.py"]
