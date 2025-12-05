# 🎮 Doodle Jump — Godot 4 (Projeto de Estudo)

Bem-vindo(a) ao meu projeto Doodle Jump em Godot 4!

Este jogo é parte dos meus estudos de desenvolvimento de jogos e programação usando a Godot Engine, com ajuda das aulas do professor Clécio Espindola.

Cada script e mecânica implementada faz parte do meu aprendizado diário. 💖✨

## 🌟 Sobre o projeto

Este é um jogo estilo Doodle Jump, onde o personagem quica em plataformas enquanto sobe infinitamente.

Aqui estudo:

- 🧩 Física 2D
- 👣 Movimentação com CharacterBody2D
- 🎞 Animações com AnimatedSprite2D
- 🏗 Geração procedural de plataformas
- 🎥 Lógica de câmera que segue o jogador
- 🔄 Adaptações de Godot 3 → Godot 4 (porque minhas aulas são do prof. Clécio)

 ## 🕹 Mecânicas Implementadas
### ✔️ Movimentação do Player
- Movimento horizontal suave usando lerpf
- Gravidade realista (com delta)
- Colisão com plataformas usando move_and_collide
- Bounce automático ao tocar plataformas
- Wrap horizontal (sai pela esquerda e aparece à direita)

### ✔️ Geração de Plataformas
- Plataformas geradas proceduralmente
- Cada plataforma nasce mais acima da anterior
- Distâncias aleatórias entre elas
- Se o player passa por uma plataforma e ela some, outra é criada acima

### ✔️ Câmera Inteligente

- A câmera só acompanha o jogador quando ele sobe
- Nunca desce, igual aos jogos de subida infinita
- Mantém o eixo X fixo 

## 📂 Scripts Principais
### game.gd
- Cria e posiciona plataformas
- Reposiciona novas plataformas quando antigas saem da tela
- Controla espaçamento vertical e horizontal
- Organiza tudo dentro do platform_container

### player.gd
- Movimento horizontal
- Gravidade
- Animações
- Colisões
- Lógica inteira do pulo
- Teletransporte horizontal estilo “portal”

### camera.gd
- Segue apenas o maior ponto alcançado pelo jogador
- Suaviza a experiência
- Garante que o jogador veja sempre mais para cima

## 🛠 Tecnologias
- Godot Engine 4.x
- GDScript
- Sprites 2D
- Física 2D do Godot

## 📖 O que estou aprendendo

- Diferenças entre Godot 3 e 4
- Usar CharacterBody2D no lugar do antigo KinematicBody2D
- Usar move_and_collide() e velocity corretamente
- Criar projeto completo do zero
- Estruturar cenas, nós e containers
- Manipular posição, colisão e geração procedural

## 🚀 Próximos passos
- Criar inimigos
- Adicionar power-ups
- Colocar partículas
- Adicionar HUD (Score)
- Tela de game over
- Publicar uma demo online 😍

## 💖 Autora

**Maria N. V. Borges**

Estudante de Ciência da Computação apaixonada por Godot, jogos e programação.

Se quiser sugerir melhorias, abrir uma issue ou mandar ideias, fique à vontade! ✨
