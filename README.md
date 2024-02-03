# Research-Compass

***!!! For research purposes only !!!***

Navigating the research landscape with AI-powered reviews. This project uses Langchain agents to
perform review on the topic user requested.

Below image is how we're designing the project.

![overview](overview.png)

> ***NOTE:*** This is heavily adapted from this [GitHub Gist](https://gist.github.com/hwchase17/69a8cdef9b01760c244324339ab64f0c)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to have Docker installed on your machine. You can download Docker [here](https://www.docker.com/products/docker-desktop).

### Installing

*1.* Clone the repository - change in to directory of your choice and run:

```sh
git clone https://github.com/tkmamidi/research-compass.git
```

*2.* Navigate to the project directory

```sh
cd RESEARCH-COMPASS
```

*3.* Setup OpenAI API key

> ***NOTE:*** Please signup and create new api key in [openAI platform](https://platform.openai.com/api-keys).

Update your OPENAI_API_KEY in the [Dockerfile](./Dockerfile).

*4.* Build the Docker image

```sh
docker build -t research-compass .
```

*5.* Run the Docker container

```sh
docker run -p 8000:8000 --name research-compass research-compass
```

*6.* Use this link in your browser to chat -

[http://localhost:8000/research-compass/playground/](http://localhost:8000/research-compass/playground/)

## Built With

* [Python](https://www.python.org/) - The programming language used
* [Docker](https://www.docker.com/) - Used for containerization

## Authors

* **Tarun Mamidi** - *Initial work* - [tkmamidi](https://github.com/tkmamidi)
