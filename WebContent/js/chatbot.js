var bot = document.getElementById("imgBot");

bot.addEventListener("click",function(){
	var chat = document.getElementById("chatbot");
	if (chat.style.display != 'none'){
		chat.style.display = 'none';
		bot.style.backgroundColor = '#ddd';
		bot.classList.add('imgBotJump')
	} else {
		chat.style.display = 'block';
		bot.style.backgroundColor = '#088BF7';
		bot.classList.add('imgBotJump')
	}
})

bot.addEventListener("transitionend", function(){
	bot.classList.remove('imgBotJump');
})

