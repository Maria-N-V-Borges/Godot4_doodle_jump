# 🎮 Doodle Jump — Godot 4 (Projeto de Estudo)

Bem-vindo(a) ao meu projeto Doodle Jump em Godot 4!

Este jogo faz parte dos meus estudos contínuos de desenvolvimento de jogos e programação usando a Godot Engine, com a orientação das aulas do professor Clécio Espindola.

Cada sistema implementado representa mais uma etapa da minha evolução. 💖✨

## 🌟 Sobre o projeto

Este é um jogo estilo Doodle Jump, onde o personagem quica em plataformas enquanto sobe infinitamente.

Aqui estudo:

- 🧩 Física 2D
- 👣 Movimentação com CharacterBody2D
- 🎞 Animações com AnimatedSprite2D
- 🏗 Geração procedural de plataformas
- 📚 Herança entre scripts
- 📡 Sinais personalizados
- 🎥 Câmera que segue apenas quando o jogador sobe
- 🔄 Adaptações de Godot 3 → Godot 4 (pois as aulas do professor são da versão 3)

 ## 🕹 Mecânicas Implementadas
### ✔️ Movimentação do Player
- Movimento horizontal suave usando lerpf
- Gravidade realista (com delta)
- Pulo automático ao colidir com plataformas
- Detecção de colisão com layer masks
- Wrap horizontal (teletransporte pelas laterais)
- Suporte a múltiplas teclas: ←/→, 4/6

### Sistema de Plataformas
#### 🧱 Plataforma Base (platform.gd)
- Script pai usando herança
- Variável jump_force exportada, permitindo plataformas com alturas de pulo diferentes
- Sinal delete_object para remover plataformas dinamicamente

#### ☁️ Cloud Platform (nuvem)
- Some quando o player pula sobre ela
- Player passa por baixo sem travar
- jump_force = 1.0

#### 🌀 Spring Platform (mola)
- Faz o jogador saltar mais alto
- jump_force = 1.5

 #### 🏗 Geração Procedural
- Plataformas aparecem automaticamente acima conforme o jogador sobe
- Alturas e posições horizontais aleatórias
- Quando uma plataforma sai da tela, uma nova é criada acima

### ✔️ Câmera Inteligente
- Acompanha somente quando o jogador sobe
- Garante estabilidade visual
- Não desce com o jogador
- Mantém eixo X fixo

## 📂 Scripts 
### game.gd
- Instancia plataformas proceduralmente
- Mantém o container organizado
- Controla espaçamento vertical
- Reposiciona novas plataformas quando antigas são removidas

### player.gd
- Movimento, gravidade, colisões e animação
- Lógica completa do pulo integrado ao jump_force da plataforma
- Verifica colisões apenas quando caindo
- Teleporte horizontal estilo “portal”

### platform.gd (script pai)
- Define jump_force
- Envia sinal para remoção da plataforma
- Base para herança de outros tipos

### cloud_platform.gd
- Herda de platform.gd
- Some ao ser usada
- Permite passar por baixo

### spring_platform.gd
- Herda de platform.gd
- Aumenta altura do pulo
- Também permite passar por baixo

### camera.gd
- Segue apenas o maior ponto alcançado pelo jogador
- Suaviza a experiência
- Garante que o jogador veja sempre mais para cima

## 📖 O que estou aprendendo

- Diferenças entre Godot 3 e 4
- Usar CharacterBody2D no lugar do antigo KinematicBody2D
- Criar herança entre scripts
- Criar e emitir sinais personalizados
- Ajustar colisões usando layers e masks
- Permitir que o player atravesse a plataforma por baixo
- Tornar plataformas destruíveis
- Criar plataformas com comportamentos diferentes usando jump_force
- Organizar cenas com nós pais e filhos
- Criar lógica de geração procedural
- Fazer depuração e resolver bugs de colisão
- Criar múltiplos esquemas de controle (teclado, setas, números)
  
## 🚀 Próximos passos
- Criar inimigos
- Adicionar efeitos de partículas
- Colocar HUD (score e melhor altura)
- Criar power-ups especiais
- Criar tela de pausa e game over
- Exportar o jogo para HTML5
- Publicar uma demo online 😍
  
## 💖 Autora

**Maria N. V. Borges**

Estudante de Ciência da Computação apaixonada por Godot, jogos e programação.

Se quiser sugerir melhorias, abrir uma issue ou mandar ideias, fique à vontade! ✨
