# Refatoração - Cadastro de Usuários

Este projeto é uma refatoração de um sistema simples de cadastro de usuários utilizando HTML, CSS e JavaScript puro (Vanilla JS).

## 🔧 Melhorias aplicadas

- Unificação de scripts em um único arquivo (`script.js`)
- Remoção de código duplicado
- Estrutura HTML reorganizada
- Remoção de CSS inline (agora no `<style>` ou `styles.css`)
- Validações simples de campos
- Código mais limpo e legível

## ▶️ Como usar

1. Abra `index.html` em um navegador.
2. Preencha nome e e-mail e clique em **Adicionar**.
3. Usuários serão listados com opção de **Remover**.
4. O botão “Ir para a Tela de Contato” redireciona para `pages/contato.html`.

## 📁 Estrutura


├── assets
  ├── js │
       │ └── script.js │
  ├──css │
  │ ├── styles.css │
  │ └── contato.css
  │ └── 📁 image │ └── (imagens, se houver)
├── index.html
└── README.md
