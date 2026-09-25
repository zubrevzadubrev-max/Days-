<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>С Днём учителя, Алина Петровна! 🌷</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html, body {
      width: 100%;
      min-height: 100%;
      overflow-x: hidden;
      font-family: "Segoe UI", Arial, sans-serif;
    }

    body {
      min-height: 100vh;
      color: white;
      background:
        radial-gradient(circle at 20% 20%, #ff9a9e 0%, transparent 35%),
        radial-gradient(circle at 80% 30%, #fad0c4 0%, transparent 35%),
        radial-gradient(circle at 50% 90%, #a18cd1 0%, transparent 45%),
        linear-gradient(135deg, #642b73, #c6426e);

      display: flex;
      align-items: center;
      justify-content: center;
      padding: 30px 15px;
      position: relative;
    }

    /* Звёзды */
    .stars {
      position: fixed;
      inset: 0;
      pointer-events: none;
      overflow: hidden;
      z-index: 0;
    }

    .star {
      position: absolute;
      width: 4px;
      height: 4px;
      border-radius: 50%;
      background: white;
      box-shadow: 0 0 10px white;
      animation: blink 2s infinite ease-in-out;
    }

    @keyframes blink {
      0%, 100% {
        opacity: 0.2;
        transform: scale(0.7);
      }
      50% {
        opacity: 1;
        transform: scale(1.7);
      }
    }

    /* Плавающие цветы */
    .flowers {
      position: fixed;
      inset: 0;
      overflow: hidden;
      pointer-events: none;
      z-index: 1;
    }

    .flower {
      position: absolute;
      top: -60px;
      font-size: 30px;
      animation: fall linear infinite;
      opacity: 0.75;
    }

    @keyframes fall {
      from {
        transform: translateY(-80px) rotate(0deg);
      }

      to {
        transform: translateY(110vh) rotate(720deg);
      }
    }

    .scene {
      width: min(930px, 95vw);
      perspective: 1400px;
      position: relative;
      z-index: 5;
    }

    .card {
      position: relative;
      width: 100%;
      min-height: 620px;
      padding: 55px 40px;

      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;

      text-align: center;

      border-radius: 32px;

      background:
        linear-gradient(
          135deg,
          rgba(255,255,255,0.22),
          rgba(255,255,255,0.08)
        );

      border: 1px solid rgba(255,255,255,0.35);

      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);

      box-shadow:
        0 30px 70px rgba(0,0,0,0.35),
        inset 0 1px 0 rgba(255,255,255,0.35);

      transform-style: preserve-3d;
      transition: transform 0.12s ease-out;
      overflow: hidden;
    }

    .card::before {
      content: "";
      position: absolute;
      width: 500px;
      height: 500px;
      background: rgba(255,255,255,0.11);
      border-radius: 50%;
      top: -300px;
      left: -100px;
      filter: blur(10px);
    }

    .card::after {
      content: "";
      position: absolute;
      width: 400px;
      height: 400px;
      background: rgba(255,215,120,0.12);
      border-radius: 50%;
      bottom: -250px;
      right: -100px;
    }

    .content {
      position: relative;
      z-index: 3;
      transform: translateZ(55px);
    }

    .teacher-icon {
      font-size: 82px;
      margin-bottom: 18px;

      filter:
        drop-shadow(0 10px 16px rgba(0,0,0,.25));

      animation: float 3s ease-in-out infinite;
    }

    @keyframes float {
      0%, 100% {
        transform: translateY(0) rotate(-3deg);
      }

      50% {
        transform: translateY(-15px) rotate(3deg);
      }
    }

    .small-title {
      text-transform: uppercase;
      letter-spacing: 5px;
      font-size: 14px;
      opacity: 0.85;
      margin-bottom: 14px;
    }

    h1 {
      font-size: clamp(37px, 7vw, 74px);
      line-height: 1.03;
      margin-bottom: 15px;

      background: linear-gradient(
        90deg,
        #ffffff,
        #ffeaa7,
        #ffffff
      );

      background-size: 200% auto;

      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;

      animation: shine 4s linear infinite;

      text-shadow:
        0 10px 30px rgba(0,0,0,0.12);
    }

    @keyframes shine {
      to {
        background-position: 200% center;
      }
    }

    h2 {
      font-size: clamp(25px, 4vw, 43px);
      color: #ffeaa7;
      margin-bottom: 30px;
    }

    .message {
      max-width: 720px;
      margin: auto;

      font-size: clamp(17px, 2.5vw, 22px);
      line-height: 1.7;

      color: rgba(255,255,255,0.96);

      text-shadow:
        0 3px 8px rgba(0,0,0,0.18);
    }

    .message strong {
      color: #ffeaa7;
    }

    .divider {
      margin: 28px auto;
      font-size: 27px;
      letter-spacing: 8px;
    }

    .wish {
      min-height: 35px;
      font-size: 18px;
      font-weight: 600;
      color: #fff3b0;
      margin-bottom: 25px;
      transition: opacity .3s ease;
    }

    .buttons {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 13px;
    }

    button {
      border: 0;
      outline: none;
      cursor: pointer;

      padding: 15px 23px;
      border-radius: 999px;

      font-size: 16px;
      font-weight: 700;

      color: #74305f;

      background:
        linear-gradient(
          135deg,
          #ffffff,
          #ffe8bd
        );

      box-shadow:
        0 10px 25px rgba(0,0,0,0.22);

      transition:
        transform .2s ease,
        box-shadow .2s ease;
    }

    button:hover {
      transform: translateY(-4px) scale(1.03);

      box-shadow:
        0 16px 30px rgba(0,0,0,0.25);
    }

    button:active {
      transform: scale(.96);
    }

    .music-button {
      background: linear-gradient(135deg, #ffd86f, #fc6262);
      color: white;
    }

    /* Конфетти */
    .confetti {
      position: fixed;
      top: -20px;
      width: 10px;
      height: 18px;
      z-index: 999;
      pointer-events: none;
      animation: confettiFall linear forwards;
    }

    @keyframes confettiFall {
      0% {
        transform:
          translateY(-20px)
          rotate(0deg);
        opacity: 1;
      }

      100% {
        transform:
          translateY(110vh)
          rotate(900deg);
        opacity: 0.7;
      }
    }

    /* Всплывающие сердечки */
    .heart {
      position: fixed;
      pointer-events: none;
      font-size: 25px;
      z-index: 1000;
      animation: heartFly 2.3s ease-out forwards;
    }

    @keyframes heartFly {
      0% {
        transform:
          translate(-50%, 0)
          scale(.5);
        opacity: 1;
      }

      100% {
        transform:
          translate(-50%, -220px)
          rotate(25deg)
          scale(1.7);
        opacity: 0;
      }
    }

    /* Надпись о музыке */
    #musicHint {
      position: fixed;
      left: 50%;
      bottom: 20px;
      transform: translateX(-50%);

      padding: 10px 18px;

      background: rgba(0,0,0,.3);
      backdrop-filter: blur(10px);

      border-radius: 50px;

      font-size: 13px;

      opacity: 0;
      pointer-events: none;

      transition: opacity .4s;

      z-index: 9999;
    }

    .signature {
      margin-top: 30px;
      opacity: .75;
      font-size: 14px;
    }

    @media (max-width: 600px) {
      body {
        padding: 15px;
      }

      .card {
        min-height: 650px;
        padding: 38px 20px;
        border-radius: 25px;
      }

      .teacher-icon {
        font-size: 65px;
      }

      .small-title {
        letter-spacing: 3px;
      }
    }
  </style>
</head>

<body>

  <div class="stars" id="stars"></div>
  <div class="flowers" id="flowers"></div>

  <div class="scene">
    <div class="card" id="card">

      <div class="content">

        <div class="teacher-icon">
          💐📚
        </div>

        <div class="small-title">
          5 октября
        </div>

        <h1>
          С Днём учителя!
        </h1>

        <h2>
          Алина Петровна 🌷
        </h2>

        <div class="message">
          Хотим от всей души поздравить Вас
          с <strong>Днём учителя!</strong>

          <br><br>

          Спасибо Вам за терпение, заботу,
          поддержку и за знания, которыми
          Вы делитесь с нами каждый день.

          <br><br>

          Желаем Вам море радости,
          вдохновения, крепкого здоровья,
          прекрасного настроения
          и как можно больше поводов
          для улыбки! ✨

          <br><br>

          Пусть Ваш труд всегда ценят,
          ученики радуют своими успехами,
          а каждый новый день приносит
          только хорошие эмоции. ❤️
        </div>

        <div class="divider">
          🌸 ✨ 🌸
        </div>

        <div class="wish" id="wish">
          Спасибо, что Вы наш классный руководитель! 💖
        </div>

        <div class="buttons">

          <button onclick="surprise()">
            🎁 Нажмите сюда
          </button>

          <button
            class="music-button"
            id="musicBtn"
            onclick="toggleMusic()"
          >
            🎵 Музыка
          </button>

        </div>

        <div class="signature">
          С уважением и благодарностью от Вашего класса ❤️
        </div>

      </div>
    </div>
  </div>

  <div id="musicHint">
    🎵 Нажмите в любом месте, чтобы включить музыку
  </div>


<script>

/* =========================================
   ЗВЁЗДЫ
========================================= */

const stars = document.getElementById("stars");

for (let i = 0; i < 80; i++) {

  const star = document.createElement("div");

  star.className = "star";

  star.style.left =
    Math.random() * 100 + "%";

  star.style.top =
    Math.random() * 100 + "%";

  const size =
    Math.random() * 4 + 1;

  star.style.width =
    size + "px";

  star.style.height =
    size + "px";

  star.style.animationDelay =
    Math.random() * 3 + "s";

  stars.appendChild(star);
}


/* =========================================
   ПАДАЮЩИЕ ЦВЕТЫ
========================================= */

const flowers =
  document.getElementById("flowers");

const flowerEmoji = [
  "🌸",
  "🌷",
  "🌺",
  "✨",
  "💮",
  "🍁"
];

for (let i = 0; i < 25; i++) {

  const flower =
    document.createElement("div");

  flower.className = "flower";

  flower.innerHTML =
    flowerEmoji[
      Math.floor(
        Math.random() *
        flowerEmoji.length
      )
    ];

  flower.style.left =
    Math.random() * 100 + "%";

  flower.style.animationDuration =
    (7 + Math.random() * 10) + "s";

  flower.style.animationDelay =
    (-Math.random() * 15) + "s";

  flower.style.fontSize =
    (18 + Math.random() * 25) + "px";

  flowers.appendChild(flower);
}


/* =========================================
   3D КАРТОЧКА
========================================= */

const card =
  document.getElementById("card");

document.addEventListener(
  "mousemove",
  e => {

    if (window.innerWidth < 700)
      return;

    const x =
      (e.clientX /
      window.innerWidth - .5);

    const y =
      (e.clientY /
      window.innerHeight - .5);

    card.style.transform =
      `
      rotateY(${x * 11}deg)
      rotateX(${-y * 9}deg)
      `;
  }
);

document.addEventListener(
  "mouseleave",
  () => {
    card.style.transform =
      "rotateX(0deg) rotateY(0deg)";
  }
);


/* =========================================
   МУЗЫКА
   Генерируется прямо браузером.
   Никакой mp3 не нужен.
========================================= */

let audioContext = null;
let musicPlaying = false;
let musicTimer = null;

const melody = [

  [523.25, 0.35],
  [587.33, 0.35],
  [659.25, 0.45],
  [783.99, 0.45],

  [659.25, 0.35],
  [587.33, 0.35],
  [523.25, 0.65],

  [659.25, 0.35],
  [698.46, 0.35],
  [783.99, 0.45],
  [880.00, 0.45],

  [783.99, 0.35],
  [659.25, 0.35],
  [587.33, 0.65],

  [523.25, 0.35],
  [659.25, 0.35],
  [783.99, 0.45],
  [1046.50, 0.65],

  [880.00, 0.35],
  [783.99, 0.35],
  [659.25, 0.65]
];

function initAudio() {

  if (!audioContext) {

    audioContext =
      new (
        window.AudioContext ||
        window.webkitAudioContext
      )();
  }

}

function playNote(
  frequency,
  duration,
  startTime
) {

  const oscillator =
    audioContext.createOscillator();

  const gain =
    audioContext.createGain();

  oscillator.type =
    "sine";

  oscillator.frequency.value =
    frequency;

  gain.gain.setValueAtTime(
    0,
    startTime
  );

  gain.gain.linearRampToValueAtTime(
    0.07,
    startTime + 0.05
  );

  gain.gain.exponentialRampToValueAtTime(
    0.001,
    startTime + duration
  );

  oscillator.connect(gain);
  gain.connect(
    audioContext.destination
  );

  oscillator.start(startTime);

  oscillator.stop(
    startTime +
    duration +
    0.1
  );
}

function playMelody() {

  initAudio();

  if (
    audioContext.state ===
    "suspended"
  ) {
    audioContext.resume();
  }

  let start =
    audioContext.currentTime +
    0.1;

  let total = 0;

  melody.forEach(
    ([frequency, duration]) => {

      playNote(
        frequency,
        duration,
        start + total
      );

      total +=
        duration + 0.08;

    }
  );

  musicPlaying = true;

  document.getElementById(
    "musicBtn"
  ).innerHTML =
    "🔊 Музыка играет";

  clearTimeout(musicTimer);

  musicTimer =
    setTimeout(() => {

      if (musicPlaying) {
        playMelody();
      }

    }, total * 1000);
}


function stopMusic() {

  musicPlaying = false;

  clearTimeout(musicTimer);

  if (audioContext) {

    audioContext.close();

    audioContext = null;
  }

  document.getElementById(
    "musicBtn"
  ).innerHTML =
    "🎵 Включить музыку";
}


function toggleMusic() {

  if (musicPlaying) {

    stopMusic();

  } else {

    playMelody();

  }

}


/* =========================================
   ПОПЫТКА АВТОЗАПУСКА
========================================= */

async function tryAutoPlay() {

  try {

    initAudio();

    await audioContext.resume();

    if (
      audioContext.state ===
      "running"
    ) {

      playMelody();

    } else {

      showMusicHint();

    }

  } catch (error) {

    showMusicHint();

  }

}


function showMusicHint() {

  const hint =
    document.getElementById(
      "musicHint"
    );

  hint.style.opacity = "1";
}


/*
Если браузер заблокировал автозапуск,
музыка включится при первом клике
или касании страницы.
*/

function firstInteraction() {

  if (!musicPlaying) {

    playMelody();

  }

  document.getElementById(
    "musicHint"
  ).style.opacity = "0";

  document.removeEventListener(
    "click",
    firstInteraction
  );

  document.removeEventListener(
    "touchstart",
    firstInteraction
  );

}


window.addEventListener(
  "load",
  () => {

    setTimeout(
      tryAutoPlay,
      350
    );

    setTimeout(
      () => createConfetti(50),
      800
    );

  }
);


document.addEventListener(
  "click",
  firstInteraction
);

document.addEventListener(
  "touchstart",
  firstInteraction,
  {
    passive: true
  }
);


/* =========================================
   КОНФЕТТИ
========================================= */

function createConfetti(
  amount = 100
) {

  const colors = [
    "#ff7675",
    "#74b9ff",
    "#ffeaa7",
    "#55efc4",
    "#fd79a8",
    "#a29bfe",
    "#ffffff"
  ];

  for (
    let i = 0;
    i < amount;
    i++
  ) {

    const el =
      document.createElement(
        "div"
      );

    el.className =
      "confetti";

    el.style.left =
      Math.random() *
      100 +
      "vw";

    el.style.backgroundColor =
      colors[
        Math.floor(
          Math.random() *
          colors.length
        )
      ];

    el.style.animationDuration =
      (
        2.5 +
        Math.random() *
        3.5
      ) + "s";

    el.style.animationDelay =
      (
        Math.random() *
        .8
      ) + "s";

    el.style.transform =
      `rotate(${
        Math.random() * 360
      }deg)`;

    document.body.appendChild(
      el
    );

    setTimeout(
      () => el.remove(),
      7000
    );
  }

}


/* =========================================
   СЮРПРИЗ
========================================= */

const wishes = [

  "Пусть каждый день приносит Вам радость! 🌸",

  "Желаем благодарных и успешных учеников! 📚✨",

  "Пусть работа приносит удовольствие и вдохновение! 💖",

  "Желаем Вам здоровья, счастья и прекрасного настроения! 🌷",

  "Спасибо за Вашу доброту, терпение и заботу! ❤️",

  "Пусть сбываются все Ваши мечты! ⭐",

  "Вы делаете школьные дни намного теплее! ☀️"

];


function surprise() {

  createConfetti(160);

  const wish =
    document.getElementById(
      "wish"
    );

  wish.style.opacity = "0";

  setTimeout(() => {

    wish.innerHTML =
      wishes[
        Math.floor(
          Math.random() *
          wishes.length
        )
      ];

    wish.style.opacity = "1";

  }, 250);


  /* сердечки */

  for (
    let i = 0;
    i < 18;
    i++
  ) {

    setTimeout(() => {

      const heart =
        document.createElement(
          "div"
        );

      heart.className =
        "heart";

      heart.innerHTML =
        [
          "❤️",
          "💖",
          "🌸",
          "✨",
          "🌷"
        ][
          Math.floor(
            Math.random() *
            5
          )
        ];

      heart.style.left =
        (
          15 +
          Math.random() *
          70
        ) + "vw";

      heart.style.top =
        (
          50 +
          Math.random() *
          35
        ) + "vh";

      document.body.appendChild(
        heart
      );

      setTimeout(
        () =>
          heart.remove(),
        2500
      );

    }, i * 70);
  }


  if (!musicPlaying) {

    playMelody();

  }

}

</script>

</body>
</html>
