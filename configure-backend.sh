#!/bin/bash

# 🔧 Script para configurar URL do backend
# Execute este script após fazer deploy no Render

echo "🔧 Configurando URL do Backend..."
echo ""
echo "Qual é a URL do seu backend no Render?"
echo "Exemplo: https://conversor-moedas-api.onrender.com"
echo ""
read -p "URL do Backend: " BACKEND_URL

# Remove barra final se existir
BACKEND_URL=${BACKEND_URL%/}

# Atualiza o script.js
sed -i.bak "s|window.location.origin|'$BACKEND_URL'|g" script.js

echo ""
echo "✅ script.js atualizado!"
echo "📝 Backup salvo em: script.js.bak"
echo ""
echo "🚀 Próximos passos:"
echo "   1. git add script.js"
echo "   2. git commit -m 'Configurar URL do backend Render'"
echo "   3. git push"
echo ""
echo "🌐 Após o push, aguarde ~1 minuto e acesse:"
echo "   https://ottof77.github.io/conversor-moedas-frontend"
