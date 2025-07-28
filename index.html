const canvas = document.getElementById('gameBoard');
const ctx = canvas.getContext('2d');
const scoreEl = document.getElementById('score');
const highScoreEl = document.getElementById('highScore');
const gameOverEl = document.getElementById('gameOver');
const finalScoreEl = document.getElementById('finalScore');
const gameStatusEl = document.getElementById('gameStatus');

// Game Configuration
const CONFIG = {
    GRID_SIZE: 20,
    GAME_SPEED: 150,
    COLORS: {
        BACKGROUND: '#2c3e50',
        SNAKE_BODY: '#27ae60',
        SNAKE_HEAD: '#2ecc71',
        FOOD: '#e74c3c'
    }
};

const TILE_COUNT = canvas.width / CONFIG.GRID_SIZE;

// Game State
let gameState = {
    snake: [],
    food: {},
    direction: { dx: 0, dy: 0 },
    score: 0,
    highScore: 0,
    isRunning: false,
    isStarted: false,
    gameLoopId: null
};

/**
 * Initialize the game
 */
function initGame() {
    resetGameState();
    setupEventListeners();
    drawGame();
    startGameLoop();
}

/**
 * Reset all game state to initial values
 */
function resetGameState() {
    // Stop any existing game loop
    if (gameState.gameLoopId) {
        clearTimeout(gameState.gameLoopId);
        gameState.gameLoopId = null;
    }
    
    gameState.snake = [{ x: 10, y: 10 }];
    gameState.direction = { dx: 0, dy: 0 };
    gameState.score = 0;
    gameState.isRunning = false;
    gameState.isStarted = false;
    
    updateScore();
    loadHighScore();
    generateFood();
    updateGameStatus("Press arrow keys or WASD to start!");
    hideGameOver();
}

/**
 * Generate random food position
 */
function generateFood() {
    do {
        gameState.food = {
            x: Math.floor(Math.random() * TILE_COUNT),
            y: Math.floor(Math.random() * TILE_COUNT)
        };
    } while (isSnakePosition(gameState.food.x, gameState.food.y));
}

/**
 * Check if position is occupied by snake
 */
function isSnakePosition(x, y) {
    return gameState.snake.some(segment => segment.x === x && segment.y === y);
}

/**
 * Draw everything on canvas
 */
function drawGame() {
    // Clear canvas
    ctx.fillStyle = CONFIG.COLORS.BACKGROUND;
    ctx.fillRect(0, 0, canvas.width, canvas.height);

    // Draw snake body
    ctx.fillStyle = CONFIG.COLORS.SNAKE_BODY;
    for (let i = 1; i < gameState.snake.length; i++) {
        drawRect(gameState.snake[i].x, gameState.snake[i].y);
    }

    // Draw snake head
    if (gameState.snake.length > 0) {
        ctx.fillStyle = CONFIG.COLORS.SNAKE_HEAD;
        drawRect(gameState.snake[0].x, gameState.snake[0].y);
    }

    // Draw food
    ctx.fillStyle = CONFIG.COLORS.FOOD;
    drawRect(gameState.food.x, gameState.food.y);
}

/**
 * Helper function to draw rectangle with padding
 */
function drawRect(x, y) {
    ctx.fillRect(
        x * CONFIG.GRID_SIZE + 1,
        y * CONFIG.GRID_SIZE + 1,
        CONFIG.GRID_SIZE - 2,
        CONFIG.GRID_SIZE - 2
    );
}

/**
 * Update game state
 */
function updateGame() {
    if (!gameState.isRunning) return;

    const head = {
        x: gameState.snake[0].x + gameState.direction.dx,
        y: gameState.snake[0].y + gameState.direction.dy
    };

    // Check wall collision
    if (isWallCollision(head)) {
        endGame();
        return;
    }

    // Check self collision
    if (isSnakePosition(head.x, head.y)) {
        endGame();
        return;
    }

    gameState.snake.unshift(head);

    // Check food collision
    if (isFoodCollision(head)) {
        gameState.score += 10;
        updateScore();
        generateFood();
    } else {
        gameState.snake.pop();
    }

    updateGameStatus("Playing...");
}

/**
 * Check wall collision
 */
function isWallCollision(head) {
    return head.x < 0 || head.x >= TILE_COUNT || 
           head.y < 0 || head.y >= TILE_COUNT;
}

/**
 * Check food collision
 */
function isFoodCollision(head) {
    return head.x === gameState.food.x && head.y === gameState.food.y;
}

/**
 * End the game
 */
function endGame() {
    gameState.isRunning = false;
    gameState.isStarted = false;
    
    // Stop the game loop immediately
    if (gameState.gameLoopId) {
        clearTimeout(gameState.gameLoopId);
        gameState.gameLoopId = null;
    }
    
    updateGameStatus("Game Over!");
    updateFinalScore();
    updateHighScore();
    showGameOver();
}

/**
 * Game loop
 */
function gameLoop() {
    // Only continue if game should be running
    if (gameState.isRunning || !gameState.isStarted) {
        updateGame();
        drawGame();
        gameState.gameLoopId = setTimeout(gameLoop, CONFIG.GAME_SPEED);
    } else {
        // Game has ended, clear the loop ID
        gameState.gameLoopId = null;
    }
}

/**
 * Start game loop
 */
function startGameLoop() {
    // Clear any existing loop to prevent multiple loops
    if (gameState.gameLoopId) {
        clearTimeout(gameState.gameLoopId);
        gameState.gameLoopId = null;
    }
    gameLoop();
}

/**
 * Handle keyboard input
 */
function handleKeyPress(e) {
    // Prevent default for arrow keys
    if (['ArrowUp', 'ArrowDown', 'ArrowLeft', 'ArrowRight'].includes(e.key)) {
        e.preventDefault();
    }

    // Start game if not started
    if (!gameState.isStarted) {
        gameState.isRunning = true;
        gameState.isStarted = true;
    }

    // Set direction based on key
    const newDirection = getDirectionFromKey(e.key);
    if (newDirection && !isReverseDirection(newDirection)) {
        gameState.direction = newDirection;
    }
}

/**
 * Get direction from key press
 */
function getDirectionFromKey(key) {
    const directions = {
        'ArrowUp': { dx: 0, dy: -1 },
        'w': { dx: 0, dy: -1 },
        'W': { dx: 0, dy: -1 },
        'ArrowDown': { dx: 0, dy: 1 },
        's': { dx: 0, dy: 1 },
        'S': { dx: 0, dy: 1 },
        'ArrowLeft': { dx: -1, dy: 0 },
        'a': { dx: -1, dy: 0 },
        'A': { dx: -1, dy: 0 },
        'ArrowRight': { dx: 1, dy: 0 },
        'd': { dx: 1, dy: 0 },
        'D': { dx: 1, dy: 0 }
    };
    
    return directions[key] || null;
}

/**
 * Check if new direction is reverse of current direction
 */
function isReverseDirection(newDirection) {
    return (gameState.direction.dx === -newDirection.dx && gameState.direction.dx !== 0) ||
           (gameState.direction.dy === -newDirection.dy && gameState.direction.dy !== 0);
}

/**
 * Setup event listeners
 */
function setupEventListeners() {
    document.addEventListener('keydown', handleKeyPress);
    
    canvas.addEventListener('click', function() {
        canvas.focus();
    });

    canvas.setAttribute('tabindex', '0');
    canvas.focus();
}

/**
 * DOM Update Functions
 */
function updateScore() {
    scoreEl.textContent = gameState.score;
}

function updateFinalScore() {
    finalScoreEl.textContent = gameState.score;
}

function updateHighScore() {
    if (gameState.score > gameState.highScore) {
        gameState.highScore = gameState.score;
        highScoreEl.textContent = gameState.highScore;
    }
}

function loadHighScore() {
    gameState.highScore = 0; // Reset on page load
    highScoreEl.textContent = gameState.highScore;
}

function updateGameStatus(message) {
    gameStatusEl.textContent = message;
}

function showGameOver() {
    gameOverEl.style.display = 'block';
}

function hideGameOver() {
    gameOverEl.style.display = 'none';
}


function restartGame() {
    // First stop any running game loop
    if (gameState.gameLoopId) {
        clearTimeout(gameState.gameLoopId);
        gameState.gameLoopId = null;
    }
    
    
    resetGameState();
    drawGame();
    startGameLoop();
    canvas.focus();
}

window.addEventListener('load', initGame);