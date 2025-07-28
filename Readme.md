# 🐍 Snake Game (HTML5 + JavaScript)

A classic Snake game built using HTML5 Canvas and Vanilla JavaScript. The game is styled with simple CSS and can be easily run locally or inside a Docker container.

---

### 🎮 Features

- Smooth gameplay with arrow keys or WASD
- Score and high score tracking
- Game over and restart functionality
- Fully responsive canvas rendering
- Dockerized using Nginx for easy deployment

---

### 💻 Preview



---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/shivamR01/snake-game.git
cd snake-game
```

### 2. File Structure

```
snake-game/
├── index.html
├── style.css
├── script.js
├── Dockerfile
├── docker-compose.yml
└── README.md
```

---

## 🧪 Run Locally (Without Docker)

You can simply open `index.html` in your browser.

```bash
# Optionally, start a static server using Python or Node.js
python3 -m http.server 8000
# or
npx serve .
```

Then open: [http://localhost:8000](http://localhost:8000)

---

## 🐳 Run with Docker

### 🛠️ Using Docker Compose

```bash
docker-compose up --build
```

Then open: [http://localhost:8080](http://localhost:8080)

### 🐳 Or Using Docker CLI

```bash
docker build -t snake-game .
docker run -d -p 8080:80 --name snake-game snake-game
```

---

## 🪯 Stop the Container

```bash
docker stop snake-game
docker rm snake-game
```

---

## ⌨️ Controls

- `↑`, `↓`, `←`, `→` — Move Snake
- `W`, `A`, `S`, `D` — Alternate controls
- `Space` — Pause/Resume

---

## 📂 Future Improvements (Optional)

- Add levels or difficulty progression
- Add mobile swipe support
- Add sound effects
- Save high score using `localStorage`

---





