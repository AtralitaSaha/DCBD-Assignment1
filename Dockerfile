FROM python:3.9-alpine 
WORKDIR /app 
COPY mapper_reducer.py . 
RUN pip3 install --no-cache-dir --break-system-packages requests 
CMD ["python3", "mapper_reducer.py"] 
