
const modal = document.getElementById("modal")
const btnModal = document.getElementById("btn-modal")
btnModal.addEventListener("click", e => {
    modalOn()
})
const closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
    modalOff()
})
  

$(".btn").on("click", function(){
        			
    // form태그를 submit
    $("#form").submit();
});

$("#shot").on("click", function(){
        			
      // 캡쳐 라이브러리를 통해서 canvas 오브젝트를 받고 이미지 파일로 리턴한다.
      html2canvas(document.querySelector("#capture")).then(canvas => {
				saveAs(canvas.toDataURL('image/png'),"나의 만다라트.png");
      });
});
    
function saveAs(uri, filename) { 
	  
	  // 캡쳐된 파일을 이미지 파일로 내보낸다.
      var link = document.createElement('a'); 
      if (typeof link.download === 'string') { 
        link.href = uri; 
        link.download = filename; 
        document.body.appendChild(link); 
        link.click(); 
        document.body.removeChild(link); 
      } else { 
        window.open(uri); 
      } 
}

function modalOn() {
    modal.style.display = "flex"
}
function isModalOn() {
    return modal.style.display === "flex"
}
function modalOff() {
    modal.style.display = "none"
}

 
 modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) {
        modalOff()
    }
})

/*window.addEventListener("keyup", e => {
    if(isModalOn() && e.key === "Escape") {
        modalOff()
    }
})*/

function printName()  {
		 
	  const goal1 = document.getElementById('goal1').value;
	  document.getElementById("result1").innerText = goal1;
	  
	  const goal2 = document.getElementById('goal2').value;
	  document.getElementById("result2").innerText = goal2;
	  
	  const goal3 = document.getElementById('goal3').value;
	  document.getElementById("result3").innerText = goal3;
	  
	  const goal4 = document.getElementById('goal4').value;
	  document.getElementById("result4").innerText = goal4;
	  
	  const goal5 = document.getElementById('goal5').value;
	  document.getElementById("result5").innerText = goal5;
	  
	  const goal6 = document.getElementById('goal6').value;
	  document.getElementById("result6").innerText = goal6;
	  
	  const goal7 = document.getElementById('goal7').value;
	  document.getElementById("result7").innerText = goal7;
	  
	  const goal8 = document.getElementById('goal8').value;
	  document.getElementById("result8").innerText = goal8;
	    
	}


      

