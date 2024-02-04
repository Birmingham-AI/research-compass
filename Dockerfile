# Use an official Python runtime as a parent image
FROM python:3.11-slim-bookworm

# Set environment variables

# By setting PYTHONDONTWRITEBYTECODE to 1, it prevents Python from writing pyc files to disc (equivalent to python -B option)
ENV PYTHONDONTWRITEBYTECODE 1

# By setting PYTHONUNBUFFERED to 1, it disables the buffering of these streams, which means that the output will be immediately flushed to the console without any delay.
ENV PYTHONUNBUFFERED 1

# OpenAI API Key
ENV OPENAI_API_KEY="<YOUR_OPENAI_API_KEY>"

# Langsmith API Key (optional, only if you want to use Langsmith's translation service)
ENV LANGCHAIN_TRACING_V2=true
ENV LANGCHAIN_ENDPOINT=https://api.smith.langchain.com
ENV LANGCHAIN_API_KEY="<YOUR_LANGSMITH_API_KEY>"
ENV LANGCHAIN_PROJECT="<YOUR_LANGSMITH_PROJECT>"
# if not specified, defaults to "default"

# Set work directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app/

# Expose port
EXPOSE 8000

# Run the application:
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]
