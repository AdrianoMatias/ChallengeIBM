// Assistant
window.onload = function() {
	callBot("");
}

function scrollDivDown(div) {
	for (var i = 0; i < div.offsetHeight; i++) {
		div.scrollTop++;
	}
}

function createMessage(message, type) {
	var chat = document.querySelector(".chat-container");
	var div = createDiv(message, type);
	chat.appendChild(div);
	scrollDivDown(chat);
}

function createDiv(text, type) {
	var div = document.createElement("div");
	div.classList.add("chat");
	div.classList.add(type);
	div.textContent = text;
	return div;
}

var btnSendQuestion = document.querySelector("#sendQuestion");
btnSendQuestion.addEventListener("click", function(event) {
	event.preventDefault();
	var question = document.querySelector("#question");
	createMessage(question.value, "me");
	callBotTxt(question.value);
	question.value = "";
});

function callBotTxt(msg) {
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "v1", true);
	xhr.setRequestHeader("Content-type",
			"application/x-www-form-urlencoded; charset=utf-8");
	xhr.addEventListener("load", function() {
		if (xhr.status == 200) {
			// Codigo de sucesso
			var respostas = JSON.parse(xhr.responseText);
			respostas.forEach(function(resposta) {
				if (!(resposta === null) && !(resposta == ""))
					createMessage(resposta, "bot");
			});
		} else {
			// Codigo de deu ruim!
			console.log(xhr.status);
			console.log(xhr.responseText);
		}
	});
	var data = "question=" + msg;
	xhr.send(data);
}
// Final Assistant

// STT
// webkitURL é legado
URL = window.URL || window.webkitURL;
// stream é criado a partir getUserMedia()
var gumStream;
// Objeto do Record.js
var rec;
// MediaStreamAudioSourceNode
var input;
// criar novo AudioContext
var AudioContext = window.AudioContext || window.webkitAudioContext; // Classe
var audioContext; // objeto
// selecionar os botoes

var btnRecord = document.querySelector("#recordButton");

btnRecord.addEventListener("mousedown", function(event) {
	event.preventDefault();
	constraints = {
			audio : true,
			video : false
	}

	navigator.mediaDevices.getUserMedia(constraints).then(function(stream) {
		audioContext = new AudioContext;
		gumStream = stream;
		input = audioContext.createMediaStreamSource(stream);
		rec = new Recorder(input, {
			numChannels : 1
		});
		rec.record();
	}).catch(function(err){
		console.log(err);
		btnRecord.disabled = false;
	});
});

btnRecord.addEventListener("mouseup", function(event) {
	event.preventDefault();
	
	rec.stop();
	gumStream.getAudioTracks()[0].stop();
	rec.exportWAV(generateBlob);
});


function generateBlob(blob) {
	  createAudioElementMe(blob);
	  sendBlobToText(blob);
	}

function sendBlobToText(blob) {
	  var xhr = new XMLHttpRequest();
	  xhr.open("POST", "stt", true);
	  xhr.setRequestHeader("Content-type", "audio/wav");
	  xhr.addEventListener("load", function() {
	    if (xhr.status == 200) {
	      // Deu bom
	    
	      var resposta = JSON.parse(xhr.responseText);
	      if(resposta.length > 0){
	    	  var resultStt = resposta[0].alternatives[0].transcript;
		      callBot(resultStt);
	      }
	      else {
	    	  console.log("nenhum retorno valido")
	      }
	    } else {
	      // Deu ruim
	      console.log(xhr.status);
	      console.log(xhr.responseText);
	    }
	  });
	  xhr.send(blob);
	}
// FINAL STT

function createAudioElementMe(blob) {
	var url = URL.createObjectURL(blob);
	var audio = document.createElement("audio");
	var div = document.createElement("div");
	div.classList.add("audiome")
	audio.controls = true;
	audio.src = url;

	div.appendChild(audio);
	var chat = document.querySelector(".chat-container");
	chat.appendChild(div);
	scrollDivDown(chat);
}
// TTS
function createAudioElement(blob) {
	var url = URL.createObjectURL(blob);
	var audio = document.createElement("audio");
	var div = document.createElement("div");
	audio.controls = true;
	audio.src = url;

	div.appendChild(audio);
	var chat = document.querySelector(".chat-container");
	chat.appendChild(div);
	scrollDivDown(chat);
}

function callBot(msg) {
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "v1", true);
	xhr.setRequestHeader("Content-type",
			"application/x-www-form-urlencoded; charset=utf-8");
	xhr.addEventListener("load", function() {
		if (xhr.status == 200) {
			// Codigo de sucesso
			var respostas = JSON.parse(xhr.responseText);
			var resultSend = respostas[0];
			sendMessageToVoice(resultSend);
		} else {
			// Codigo de deu ruim!
			console.log(xhr.status);
			console.log(xhr.responseText);
		}
	});
	var data = "question=" + msg;
	xhr.send(data);
}

function sendMessageToVoice(msg) {
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "tts", true);
	xhr.setRequestHeader("Content-type",
			"application/x-www-form-urlencoded; charset=utf-8");
	xhr.addEventListener("load", function() {
		if (xhr.status == 200) {
			// Codigo de sucesso
			var blob = new Blob([ xhr.response ], {
				type : "audio/wav"
			});
			createAudioElement(blob);
		} else {
			// Codigo de deu ruim!
			console.log(xhr.status);
			console.log(xhr.responseText);
		}
	});
	xhr.responseType = "blob";
	var data = "question=" + msg;
	xhr.send(data);
}
