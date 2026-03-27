# 🎮 Doodle Jump — Godot 4.6 (Projeto de Estudo)

Bem-vindo(a) ao meu projeto **Doodle Jump em Godot 4**!

Este jogo faz parte dos meus estudos contínuos de **desenvolvimento de jogos e programação**, com base nas aulas do professor **Clécio Espíndola**, adaptadas da Godot 3 para a **Godot 4**.

Cada sistema implementado representa mais um passo na minha evolução como desenvolvedora. 💖✨

---

## 🌟 Sobre o projeto

Este é um jogo estilo **Doodle Jump**, onde o personagem sobe infinitamente pulando em plataformas, desviando de inimigos e lidando com desafios progressivos conforme a pontuação aumenta.

Neste projeto, estudo e aplico conceitos fundamentais de **game development**, **lógica**, **física**, **arquitetura de cenas** e **boas práticas em Godot 4**.

---

## 🧠 Conceitos e Tecnologias Estudadas

- 🧩 Física 2D
- 👣 Movimentação com `CharacterBody2D`
- 🎞 Animações com `AnimatedSprite2D`
- 🏗 Geração procedural de plataformas
- 📚 Herança entre scripts
- 📡 Sinais personalizados
- 🎥 Câmera inteligente (sobe, mas não desce)
- 🧱 Camadas e Máscaras de colisão (Layers & Masks)
- 👾 Sistema de inimigos
- 🧹 Platform Cleaner (remoção de objetos fora da tela)
- 🔄 Adaptação de projetos da Godot 3 → Godot 4

---

## 🕹 Mecânicas Implementadas

### ✔️ Player
- Movimento horizontal suave com `lerpf`
- Gravidade realista usando `delta`
- Pulo automático ao colidir com plataformas
- Detecção de colisão usando **layers e masks**
- Wrap horizontal (teleporte pelas laterais)
- Múltiplos esquemas de controle (←/→, 4/6)
- Emissão de sinal de altura máxima (`height_changed`)
- Sistema de morte e reinício de cena

---

### 🧱 Sistema de Plataformas

#### 🟩 Plataforma Base (`platform.gd`)
- Script pai usando herança
- Variável `jump_force` exportada
- Sinal `delete_object` para remoção dinâmica

#### ☁️ Cloud Platform (Nuvem)
- Surge apenas após certa pontuação
- Some após ser usada
- Player atravessa por baixo
- `jump_force = 1.0`

#### 🌀 Spring Platform (Mola)
- Aumenta a altura do pulo
- `jump_force = 1.5`
- Player pode atravessar por baixo

---

### 👾 Inimigos
- Surgem apenas após atingir uma pontuação mínima
- Movimento lateral automático
- Colisão separada entre cabeça e corpo
- Player:
  - Derrota o inimigo ao pisar por cima
  - Morre ao colidir lateralmente
- Controle de spawn para evitar inimigos consecutivos

---

### 🧹 Platform Cleaner
- Área invisível abaixo da tela
- Remove plataformas, nuvens e inimigos que saem do campo de visão
- Detecta quando o **player cai**, reiniciando o jogo
- Sistema baseado em **groups + collision layers**

---

### 🏗 Geração Procedural
- Plataformas surgem conforme o jogador sobe
- Altura e posição horizontal aleatórias
- Progressão baseada no score:
  - ⛅ Nuvens surgem após **500 pontos**
  - 👾 Inimigos surgem após **1000 pontos**

---

### 🎥 Câmera Inteligente
- Segue apenas quando o jogador sobe
- Não desce junto com o player
- Mantém estabilidade visual
- Eixo X fixo

---

## 📂 Scripts Principais

### `game.gd`
- Geração procedural de plataformas
- Controle de progressão por score
- Gerenciamento do platform cleaner
- Atualização do score
- Spawn controlado de inimigos e nuvens

### `player.gd`
- Movimento, gravidade e colisões
- Interação com plataformas e inimigos
- Sistema de morte e reinício
- Emissão de sinais de altura

### `platform.gd` (script pai)
- Define `jump_force`
- Base para herança
- Emite sinal de remoção

### `cloud_platform.gd`
- Plataforma temporária
- Some ao ser utilizada

### `spring_platform.gd`
- Plataforma de impulso
- Aumenta o pulo

### `enemy.gd`
- Movimento automático
- Detecção separada de cabeça e corpo
- Lógica de morte do inimigo e do player

### `camera.gd`
- Segue apenas a maior altura alcançada
- Garante foco no progresso do jogador

---

## 📖 O que estou aprendendo na prática

- Uso correto de **collision layers e masks**
- Diferença entre colisão física e lógica de jogo
- Organização de cenas e scripts
- Progressão de dificuldade baseada em score
- Comunicação entre nós usando sinais
- Debug e correção de bugs complexos
- Estruturação de um jogo completo em Godot 4

---

## 🚀 Próximos passos

- Melhorar IA dos inimigos
- Adicionar partículas e efeitos visuais
- Criar HUD completo (score e recorde)
- Power-ups especiais
- Tela de pause e game over
- Exportar para HTML5
- Publicar uma demo jogável online 😍

---

## 💖 Autora

**Maria N. V. Borges**  
Estudante de Ciência da Computação apaixonada por **Godot**, **jogos** e **programação**.

Sugestões, ideias e feedbacks são sempre bem-vindos! ✨

