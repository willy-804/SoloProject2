const toDoForm = document.querySelector(".toDoForm");
const toDoInput = toDoForm.querySelector("input");
const toDos = document.querySelector(".toDos");

const TODOLIST = "toDoList";
let toDoList = [];

function saveToDoList() {
  localStorage.setItem(TODOLIST, JSON.stringify(toDoList));
}
function saveToDo(toDo) {
  const toDoObj = {
    text: toDo,
    id: toDoList.length + 1,
  };
  toDoList.push(toDoObj);
  saveToDoList();
}

function delToDo(event) {
  const { target: button } = event;
  const li = button.parentNode;
  toDos.removeChild(li);
  toDoList = toDoList.filter((toDo) => toDo.id !== Number(li.id));
  saveToDoList();
}

function comToDo(event){
	  const { target: button } = event;
	  const li = button.parentNode;
	  console.log(li);
	  console.log(li.innerText);
	  console.log(li.innerHTML);
	  const li2 = button.previousSibling;
	  console.log(li2);
	
      li2.style.textDecoration= 'line-through'
}

function paintToDo(toDo) {
  const li = document.createElement("li");
  
  li.style.width = '500px';
  li.style.height = '70px' ;
  li.style.margin = '0px 0px 0px 100px'
	  
  // const span = document.createElement("span");
  const span = document.createElement("p");
  
  span.style.width = '500px';
  span.style.height = '30px';
  span.style.margin = '0px';
  
  const comButton = document.createElement("button");
  
  comButton.style.margin = '5px 0px 3px 50px';
  
  const delButton = document.createElement("button");
  
  delButton.style.maring = '5px 0px 3px 10px'
  comButton.innerText = "내가 해냄";
  comButton.addEventListener("click", comToDo);
  delButton.innerText = "Del";
  delButton.addEventListener("click", delToDo);

  span.innerHTML = toDo;
  li.appendChild(span);
  li.appendChild(comButton); // 순서를 바꾸니까 sibling노드가 span태그가 된당 
  li.appendChild(delButton);

  li.id = toDoList.length + 1;
  toDos.appendChild(li);
}

function createToDo(event) {
  event.preventDefault();
  const toDo = toDoInput.value;
  paintToDo(toDo);
  saveToDo(toDo);
  toDoInput.value = "";
}

function loadToDoList() {
  const loadedToDoList = localStorage.getItem(TODOLIST);
  if (loadedToDoList !== null) {
    const parsedToDoList = JSON.parse(loadedToDoList);
    for (let toDo of parsedToDoList) {
      const { text } = toDo;
      paintToDo(text);
      saveToDo(text);
    }
  }
}

function init() {
  loadToDoList();
  toDoForm.addEventListener("submit", createToDo);
}
init();