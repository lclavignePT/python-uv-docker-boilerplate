FROM ghcr.io/astral-sh/uv:debian@sha256:290ab59cb6d503d95563ba5eae0a3b3b03876c2c5230c339e62e05c2d4103c4f

WORKDIR /app

COPY pyproject.toml requirements.txt ./

RUN uv lock
RUN uv sync --frozen

COPY . .

# Adicione outros comandos necessários aqui
CMD ["uv", "run", "main.py"]
