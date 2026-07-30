FROM python:3.13
RUN pip install uv
COPY . /src
WORKDIR /src
RUN uv sync
EXPOSE 8501
ENTRYPOINT ["uv", "run", "streamlit", "run", "main.py", "--server.port", "8501", "--server.address=0.0.0.0"]