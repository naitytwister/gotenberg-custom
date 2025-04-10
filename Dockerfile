# Usa a imagem oficial do Gotenberg versão 7 como base
FROM gotenberg/gotenberg:7

# Instala o ExifTool
RUN apt-get update && \
    apt-get install -y libimage-exiftool-perl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Define a variável de ambiente exigida pelo Gotenberg para localizar o ExifTool
ENV EXIFTOOL_BIN_PATH=/usr/bin/exiftool

# Exponha a porta padrão do Gotenberg (opcional)
EXPOSE 3000

# Comando de inicialização (já definido na imagem base, mas pode ser declarado para clareza)
CMD ["gotenberg"]
