FROM ghcr.io/astral-sh/uv:debian

WORKDIR /app

COPY pyproject.toml requirements.txt ./
RUN uv sync --frozen

COPY . .
CMD ["uv", "run", "main.py"]
