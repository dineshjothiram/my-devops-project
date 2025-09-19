# Stage 1: Build
FROM python:3.10-slim as builder
WORKDIR /app
COPY app/requirements.txt .
RUN pip install --user -r requirements.txt


# Stage 2: Runtime
FROM python:3.10-slim
WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY app/ /app
ENV PATH=/root/.local/bin:$PATH
CMD ["python", "app.py"]