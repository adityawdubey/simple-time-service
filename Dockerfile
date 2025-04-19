FROM python:3.12-slim

# Create non-root user
RUN addgroup --system appgroup && \
    adduser --system --ingroup appgroup appuser

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/

# Use non-root user
USER appuser

# Expose port and start app
EXPOSE 8080
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]