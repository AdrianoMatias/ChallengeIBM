var firebaseApp = firebase.initializeApp({ 
  apiKey: "AIzaSyC4cGXqwHlZC1iv9ZjeXaNqyzI-kMh7y6Y",
    authDomain: "kupidochat-bd3c5.firebaseapp.com",
    databaseURL: "https://kupidochat-bd3c5.firebaseio.com",
    storageBucket: "kupidochat-bd3c5.appspot.com",
    messagingSenderId: "972492700679"
});

var db = firebaseApp.database();

var chatApp = db.ref('chatApp'); //chatApp

var dirRef = chatApp.child('directory');
var chatRef = chatApp.child('chats');
var userRef = chatApp.child('users');


var app = new Vue({
  el: '#chatApp',
  firebase: {
    directory: dirRef
  },
  data: {
    headUser: 'Marinho Gomes',
    showChatList: false,
    chatBoxArea: true,
    currentChats: []
  },
  methods: {
    showUsuario: function(id){
      console.log(id);
    },
    expandTextArea: function(){
      $('#chatBox-textbox').height(80);
      $('#chatTextarea').height(60);
    },
    dexpandTetArea: function(){
      $('#chatBox-textbox').height(60);
      $('#chatTextarea').height(40);
    },
    toggleChat: function(){
      if(this.chatBoxArea){
        $('#chatbox-area').hide();
      }else{
        $('#chatbox-area').show();
      }
      this.chatBoxArea = !this.chatBoxArea;
    },
    openChatBox: function(info){
      
    },
    startChat: function(user){
      
    },
    expandChatList: function(){    $("#userListBox").slideToggle();
      this.showChatList = !this.showChatList;
      
    }
  }
}); 




