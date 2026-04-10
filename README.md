# 🎮 Doodle Jump — Godot 4.6 (Projeto de Estudo)

Projeto desenvolvido em Godot 4.6, baseado nas aulas do professor Clécio Espíndola (adaptadas da Godot 3).

Este jogo faz parte da minha jornada de aprendizado em desenvolvimento de jogos, explorando física, lógica e arquitetura na prática.

---

## 🌟 Sobre o projeto

Um jogo estilo Doodle Jump, onde o personagem sobe infinitamente pulando em plataformas, com dificuldade progressiva conforme a pontuação aumenta.

---

## 🧠 O que estou estudando

- Física 2D
- CharacterBody2D
- Animações (AnimatedSprite2D)
- Geração procedural
- Herança entre scripts
- Sinais (signals)
- Câmera dinâmica
- Collision Layers & Masks
- Sistema de inimigos
- Organização de cenas (Godot 4)

---

## 🕹 Mecânicas Principais

### ✔️ Player
- Movimento suave com lerp
- Gravidade com delta
- Pulo automático em plataformas
- Wrap horizontal
- Sistema de morte com transição
  
---

### Plataformas
- Base com herança (platform.gd)
- ☁️ Nuvens (temporárias) — aparecem após 500 pontos
- 🌀 Molas — aumentam o pulo

---

### Inimigos
- Aparecem após 1000 pontos
- Movimento automático
- Detecção separada:
    - Cabeça → derrota o inimigo
    - Corpo → derrota o player

### Sistema do jogo
- Geração procedural contínua
- Progressão por score
- Platform Cleaner (remove objetos fora da tela)
- Reinício ao cair ou morrer

---

## 🐞 Desafios e aprendizados
- Correção de colisões usando normal da colisão (normal.y)
- Ajuste de layers e masks (bug de reinício e interações)
- Erro de escopo: collider not declared
- Diferenças práticas entre Godot 3 → Godot 4.6

---

## 🚀 Próximos passos
- Melhorar inimigos
- Adicionar partículas
- HUD completo
- Power-ups
- Menu de pausa
- Exportar para HTML5

--- 

## 💖 Autora

Maria N. V. Borges <br> 
Estudante de Ciência da Computação <br>
Apaixonada por jogos, programação e criação 💫

