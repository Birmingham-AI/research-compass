# Research-Compass

***!!! For research purposes only !!!***

Navigating the research landscape with AI-powered reviews. This project uses Langchain agents to
perform review on the topic user requested.

Below image is how we're designing the project.

![overview](overview.png)

> ***NOTE:*** This is heavily adapted from this [GitHub Gist](https://gist.github.com/hwchase17/69a8cdef9b01760c244324339ab64f0c)

## Installation

*Tools:*

- Anaconda3 or pip3
- Git

To fetch DITTO source code, change in to directory of your choice and run:

```sh
git clone https://github.com/tkmamidi/research-compass.git
```

### Create environment and install required packages

Please change in to the root directory of the repo and execute the below commands.

```sh
python -m venv review
source review/bin/activate
pip install -r requirements.txt
```

### Setup OpenAI API key

If you have an OpenAI API key, you could set it as an environment variable in your terminal:

```sh
export OPENAI_API_KEY="your_openai_api_key"
```

> ***NOTE:*** If you don't have one, please signup and create new api key in [openAI platform](https://platform.openai.com/api-keys)

## Run the app

```sh
python src/app.py
```

Use this link in your browser to chat -

[http://localhost:8000/research-compass/playground/](http://localhost:8000/research-compass/playground/)
