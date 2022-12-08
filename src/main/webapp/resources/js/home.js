
/* 배경 화면 동영상 랜덤으로 나오게 */
const videos = [
    "0.mp4", "1.mp4", "2.mp4", "3.mp4","4.mp4"
];

const chosenVideo = videos[Math.floor(Math.random() * videos.length)];

console.log(chosenVideo);

const bgVideo = "/resources/videos/"+chosenVideo;

// console.log(bgVideo);

document.getElementById('video').setAttribute('src', bgVideo);


/* 5분 타이머 */
var startBtn = document.getElementById("startBtn");
startBtn.addEventListener("click",function(){
   document.body.requestFullscreen();
},false);

const timer = document.querySelector('.js-timer'),
stopBtn=document.querySelector('.js-timer__stopBtn')
startBtn=document.querySelector('.js-timer__startBtn')
resetBtn=document.querySelector('.js-timer__resetBtn')

let TIME = 300; // 최초 설정 시간(기본 : 초)
let cron;

function startButton(){
   updateTimer();
   stopButton();
   cron=setInterval(updateTimer,1000);
   /* setInterval은 일정한 시간 간격에 따라 함수를 반복 실행할 수 있도록 해주는 메소드
   주어진 함수를 주어진 시간마다 실행해준다  
   setInterval(반복 실행할 함수, ms 단위의 시간) 이렇게 쓴다 
   1000 ms는 1초 */ 
   timer.classList.add('start');
}

function stopButton(){
   clearInterval(cron);
   /* setInterval 메소드가 호출되어 반복 실행할 함수를 등록하면
   함수는 0이 아닌 숫자를 랜덤으로 반환한다
   이 숫자는 함수의, 예를 들어 id 선택자처럼 식별자 같은 역할을 한다  
   setInterval을 여러번 호출하면 반복 실행되는 함수도 여러개 만들어지기 때문에 
   이러한 식별자를 반환하도록 설계되어 있는 것이다  
   이러한 반환값을 변수, 여기서는 cron에 저장하는게 편하다 
   이 식별자 또는 이를 저장한 변수를 clearInterval 메소드에 전달하면 
   해당 함수의 반복 실행이 취소된다 */
   timer.classList.remove('start');
}

function resetButton(){
   timer.innerText='05:00';
   stopButton();
   timer.classList.remove('start');
   return(TIME=300);
}

function updateTimer(){ 

   const minutes=Math.floor(TIME/60);
   /* TIME이  300이고 300을 60으로 나누면 5 나오잖아 
   그리고 Math.floor로 소수점 없는 수만 나오게 해서 minutes에다 5를 저장하는 것*/  
   const seconds= TIME%60;
   // % 는 나머지 구하기 
   // seconds = seconds < 10 ? '0'+seconds : seconds; 이렇게 하니까 안되네 
   
   /* seconds가 10보다 작을땐 문자0에 seconds를 붙여서 나오게 09,08,07 처럼  
   아닌 경우는 그냥 seconds로 나오게 59,58...*/
   timer.innerText = 
       // `0${minutes}:${seconds}`; 이렇게 하니까 안되네 
	      `${`0${minutes}`}:${seconds < 10 ? `0${seconds}`:seconds}`;
   
   TIME--;  //처음에 -1을 해줘야 정상적으로 timerInterval의 setInterval가 실행될때 1초 감소 하고 시작한다
   
    if (TIME < 0) {        
        clearInterval(cron); // 타이머 해제
        alert("5min 끝");
}
}

function init(){
   startBtn.addEventListener('click',startButton);
   stopBtn.addEventListener('click',stopButton);
   resetBtn.addEventListener('click',resetButton);
}
init();
