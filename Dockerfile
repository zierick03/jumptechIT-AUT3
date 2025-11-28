# Basisimage met Python
FROM python:3.14-slim

# Maak een werkdirectory
WORKDIR /app

# Kopieer requirements.txt en installeer dependencies (optioneel)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopieer de code naar de container
COPY test.py .

# Stel de default command in om je script te draaien
CMD ["python", "test.py"]
