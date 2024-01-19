# Pyinstaller Setup

A Poetry/Docker setup to run the linux python executable generator.

## Table of Contents

- [Pyinstaller Setup](#pyinstaller-setup)
- [Table of Contents](#table-of-contents)
- [About](#about)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
    - [Poetry](#poetry)
    - [Docker](#docker)
- [Usage](#usage) -[Gen the executable](#gen-the-executable) -[Running](#running)
- [Development](#development)

## About

This setup came from the need to create binary Python executables for the Linux system, with the environment in which I program being Windows. The use of Docker is to simulate the target system and poetry to manage dependencies.

## Getting Started

All you need to start the project is to have the requirements described in [Prerequisites](#prerequisites), the other libraries will be managed by Poetry and you won't need to worry about starting a virtual environment or installing the requirements (it will take care of that :smile:).

### Prerequisites

```txt
Python >= 3.10
Poetry
Docker Desktop (if you use windows)
```

### Installation

#### Poetry

Poetry is a powerful dependency management and packaging tool for Python projects. It simplifies project setup, dependency management, and packaging, making it an essential tool for Python developers. Before getting started with this project, it's important to have Poetry installed.

If you're not already familiar with Poetry, we highly recommend reading the [Poetry documentation](https://python-poetry.org/docs/basic-usage/) to get started. It provides in-depth information on how to use Poetry for Python project management.

To install Poetry and include to PATH, here a tutorial [Poetry instalation](https://python-poetry.org/docs/#installation).

When install Poetry, follow these steps to init your project:

```bash
# Clone the repository via ssh
git clone ssh://git@apidensyx.com:24/python/mcm2pi.git

# Clone the repository via http
git clone http://apidensyx.com:81/python/mcm2pi.git

# Navigate to the project directory
cd mcm2pi

# Install dependencies using Poetry
poetry install

# Activate the virtual environment (if not automatically activated)
poetry shell
```

#### Docker

Docker Desktop was design and build in to run in windows system. To install, here are the link to do [Docker Desktop instalation](https://www.docker.com/products/docker-desktop/).

This setup was project to run in windows systems, if you are using Linux run the pyinstaller without Docker.

## Usage

Below is the command to generate the executable and link all the files that make up your program.

#### Gen the executable

> This command will create the executable file in the `dist` directory, and it combine all the libs related in the system, that's why it's important to use Python to install only the necessary libs. The program also end when finish the execution.

##### Running

```bash
docker-compose up --build
```

## Development

### Contributing

This project is fully open to receiving pull requests and would be very happy to receive contributors.
