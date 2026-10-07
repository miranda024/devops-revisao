# Imagem base Python
FROM python:3.12-slim

# Diretório de trabalho
WORKDIR /app

# Cópia e instalação das dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Cópia dos arquivos da aplicação
COPY . .

# Porta usada pela aplicação
EXPOSE 5000

# Comando de inicialização
CMD ["python", "app.py"]