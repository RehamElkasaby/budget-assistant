FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "api/main.py"]
EOL

# Add sample requirements
cat <<EOL > budget-assistant/requirements.txt
openai
crewai
pydantic
sqlite3
python-dotenv
pandas
EOL

# Add sample .env.example
cat <<EOL > budget-assistant/.env.example
OPENAI_API_KEY=your-key-here
DATABASE_PATH=data/budget.db
EOL

echo "✅ Project scaffold created!"
echo "➡️ Next steps:"
echo "  cd budget-assistant"
echo "  python3 -m venv venv && source venv/bin/activate"
echo "  pip install -r requirements.txt"
