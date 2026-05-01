FROM python:3.12-slim

WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy server code
COPY server.py .

EXPOSE 8000

# Run the MCP server
# FastMCP uses standard input/output by default for MCP transport
CMD ["python", "server.py"]
