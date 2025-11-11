# 📝 INSTRUÇÕES - Deploy Frontend

## 🎯 Você está aqui: `/conversor-moedas-frontend/`

Este diretório contém **apenas o frontend** (HTML, CSS, JS).

---

## ✅ PASSO 1: Criar Repositório no GitHub

1. Acesse: https://github.com/new
2. Configure:
   ```
   Nome: conversor-moedas-frontend
   Descrição: 🎨 Interface web do Conversor de Moedas - Oracle ONE
   Público ✅
   ❌ Não inicialize com README
   ```
3. Clique em **Create repository**

---

## ✅ PASSO 2: Fazer Push

**Copie e cole estes comandos no terminal:**

```bash
cd "/Users/otto/Documents/Cursos/Oracle/ONE/8. Java - Criando primeiro app/conversor-moedas-frontend"

# Adicionar remote
git remote add origin https://github.com/OttoF77/conversor-moedas-frontend.git

# Fazer push
git push -u origin main
```

---

## ✅ PASSO 3: Ativar GitHub Pages

1. Vá no repositório: https://github.com/OttoF77/conversor-moedas-frontend
2. Clique em **Settings** (⚙️)
3. No menu lateral, clique em **Pages**
4. Configure:
   - **Source:** Deploy from a branch
   - **Branch:** `main`
   - **Folder:** `/ (root)`
5. Clique em **Save**
6. **Aguarde 1-2 minutos** ⏱️

---

## ✅ PASSO 4: Configurar URL do Backend

**Após fazer deploy do backend no Render**, você terá uma URL como:
```
https://conversor-moedas-api.onrender.com
```

Execute o script para atualizar o frontend:

```bash
cd "/Users/otto/Documents/Cursos/Oracle/ONE/8. Java - Criando primeiro app/conversor-moedas-frontend"

./configure-backend.sh
# Digite a URL do Render quando solicitado

# Depois faça commit e push
git add script.js
git commit -m "Configurar URL do backend Render"
git push
```

**OU edite manualmente `script.js`:**

```javascript
// Linha 5-7 (aproximadamente)
const API_BASE_URL = window.location.hostname === 'localhost'
  ? 'http://localhost:7000'
  : 'https://conversor-moedas-api.onrender.com'; // ← Coloque sua URL aqui
```

---

## 🌐 Acessar o Frontend

Após GitHub Pages ativar, acesse:

```
https://ottof77.github.io/conversor-moedas-frontend
```

---

## ⚠️ Troubleshooting

### "Page not found" (404)
- Aguarde 2-3 minutos após ativar Pages
- Verifique se o repositório é público
- Force refresh: `Ctrl + Shift + R` (ou `Cmd + Shift + R` no Mac)

### CORS Error
- Verifique se o backend está rodando no Render
- Certifique-se que a URL no `script.js` está correta
- URL deve ser `https://` (não `http://`)

### Backend demora muito
- Normal no plano free do Render (cold start ~30-60s)
- Frontend mostra aviso automático

---

## 🎉 Pronto!

Arquitetura final:

```
┌─────────────────────────┐
│  GitHub Pages           │  ← https://ottof77.github.io/conversor-moedas-frontend
│  (Frontend estático)    │
└────────────┬────────────┘
             │ HTTPS
             ↓
┌─────────────────────────┐
│  Render.com             │  ← https://conversor-moedas-api.onrender.com
│  (Backend Java/Javalin) │
└────────────┬────────────┘
             │ HTTPS
             ↓
┌─────────────────────────┐
│  ExchangeRate-API       │  ← Dados de câmbio
└─────────────────────────┘
```

**✨ 100% gratuito e profissional! ✨**
