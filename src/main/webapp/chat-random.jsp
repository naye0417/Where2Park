<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <script src="https://kit.fontawesome.com/415f6f6023.js" crossorigin="anonymous"></script>
    <title>Where2Park</title>
    <style>
   @import url(http://www.justinaguilar.com/animations/css/animations.css);
   
   
   /*-----------------------------------------------------*/
   .chatbox {
       position: fixed;
      position:expression("absolute");
      v
      display:none;
      z-index:99;
      width: 357px;
      height: 318px;
      margin: 0 0 0 -15px;
   }
   
   .blinking{ -webkit-animation:blink 1.5s ease-in-out infinite alternate; -moz-animation:blink 1.5s ease-in-out infinite alternate; animation:blink 1.5s ease-in-out infinite alternate; } @-webkit-keyframes blink{ 0% {opacity:0;} 100% {opacity:1;} } @-moz-keyframes blink{ 0% {opacity:0;} 100% {opacity:1;} } @keyframes blink{ 0% {opacity:0;} 100% {opacity:1;} }



   /* .fas fa-car-side:hover{
      transition:all 0.5;
      opacity: 0.3;
   } */
   .chatboxhead {
      background-color: #367FFF;
      padding:7px;
      color: #ffffff;
      border-right:1px solid #ddd;
      border-left:1px solid #ddd;
      font-family: "Oswald",sans-serif;
   }
   .chatboxhead .chatboxoptions{
   }
   .chatboxhead .chatboxoptions a{
      vertical-align:middle;
      display:inline-block;
      color:#fff;
      margin:0 3px;
      height:14px;
      width:14px;
      text-align:center;
   }
   .chatboxhead .chatboxoptions a:hover{
      color:rgba(0,0,0,0.5);
   }
   .chatboxhead .chatboxoptions a i{
      vertical-align:top;
   }
   
   .chatboxblink {
      background-color: #176689;
      border-right:1px solid #176689;
      border-left:1px solid #176689;
   }
   
   .chatboxcontent {
      font-family: "PT Sans",sans-serif;
      font-size: 12px;
      color: #333333;
      height:100%;
      width:100%;
      overflow-y:auto;
      overflow-x:auto;
      padding:7px;
      border-left:1px solid #cccccc;
      border-right:1px solid #cccccc;
      border-bottom:1px solid #eeeeee;
      background-color: #ffffff;
      line-height: 1.3em;
      background-color: #ddeaf5;
   }
   
   .chatboxinput {
        width: 100%;
      padding: 5px 60px 5px 5px;
      background-color: #ffffff;
      border-left:1px solid #cccccc;
      border-right:1px solid #cccccc;
      border-bottom:1px solid #cccccc;
   }
   
   .chatboxtextarea {
      width: 250px;
      height:44px;
      padding:3px 0px 3px 3px;
      border: 1px solid #dbf8ff;
      margin: 1px;
      overflow:hidden;
      resize:none;
   }
   
   .chatboxtextareaselected {
      border: 2px solid #f99d39;
      margin:0;
   }
   
   .chatboxmessage {
      /*margin-left:1em;*/
   }
   .chatboxmessage time{
      color:rgb(66, 104, 181);
      font-size:10px;
      clear:both;
      display:block;
      position:absolute;
      right:4px;
      top:0;
   }
   
   .chatboxinfo {
      margin-left:-1em;
      color:#666666;
   
   }
   
   .chatboxmessagefrom {
      margin-left:0em;
      font-weight: bold;
      float:left;
      width:46px;
      white-space:nowrap;
      overflow:hidden;
      text-overflow: ellipsis;
   }
   .chatboxmessagecontent {
      background-color:rgb(255, 255, 255);
      box-shadow: 1px 1px 1px rgba(105, 105, 105, 0.1);
      padding:14px 8px 4px;
      position:relative;
      margin-left:55px;
      margin-bottom:5px;
      border: 0.7px solid #ccc;
   }
   .chatboxmessagecontent:after {
       content: " ";
       position: absolute;
       top: 0;
       left: -10px;
       width: 0;
       height: 0;
       border: 5px solid rgb(255, 255, 255);
       border-left-color: rgba(0, 0, 0, 0);
       border-bottom-color: rgba(0, 0, 0, 0);
      z-index:2;
      color:#333;
   }
   
   .chatboxoptions {
      float: right;
   }
   
   .chatboxoptions a {
      text-decoration: none;
      color: white;
      font-weight:bold;
   
   }
   
   .chatboxtitle {
      float: left;
   }
   .chatbox .all{
      clear:both;
      overflow:hidden;
      height:0;
   }
   .chatboxmessage:before,
   .chatboxmessage:after,{
     display: table;
     content: " ";
   }
   .chatboxmessage:after{
     clear: both;
   }
   .chatboxoptions .dropdown{
      display:inline-block;
   }
   .chatboxoptions .dropdown .dropdown-menu{
      min-width: 120px;
   }
   .chatboxoptions .dropdown .dropdown-menu li a{
      display:block;
      color:#333;
      font-family: "PT Sans",sans-serif;
      font-size:13px;
      height:auto;
      width:100%;
      text-align:left;
      padding-left:5px;
      padding-right:5px;
   }
   .chatboxoptions .dropdown .dropdown-menu li a i{
      vertical-align:middle;
   }
   
   .chatboxoptions .dropdown .dropdown-menu li a:hover{
      color:#fff;
   }
   .chatboxmessage.ltr{
   }
   .chatboxmessage.ltr .chatboxmessagefrom{
      float:right;
      text-align:right;
   }
   .chatboxmessage.ltr .chatboxmessagecontent {
     margin-left: 0;
     margin-right:55px;
     padding: 14px 8px 4px;
   }
   .chatboxmessage.ltr time {
     left: 4px;
     right:auto;
   }
   
   .chatboxmessage.ltr .chatboxmessagecontent:after {
       content: " ";
       position: absolute;
       top: 0;
       right: -10px;
      left:auto;
       width: 0;
       height: 0;
       border: 5px solid rgb(255, 255, 255);
       border-right-color: rgba(0, 0, 0, 0);
       border-bottom-color: rgba(0, 0, 0, 0);
      z-index:2;
      color:#333;
   }
   #chatBtn {           
       width: 50px;
      height: 53px;
       margin: -61px 5px 0px 0;
       float: right;
       -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border: none;
        color: white;
        background-color: #367FFF; 
    }
   #readCheck{
      font-weight: bold;
      color: #1c64e0;
   }
   .chatboxmessagefrom{
      height: 30px;
      width: 30px;
      font-size: 20px;
   }
    </style>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
   <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
   <div class="row">
      <div >
            <div class="col-sm-12">
                <div id="chatbox_female" class="chatbox" style="display: block;">
    <div class="chatboxhead">
            <div class="chatboxtitle">
                <i class="fas fa-car-side blinking"></i> Where2Park
            </div>
           <br clear="all">
        </div>
        <div class="chatboxcontent" id="chatboxcontent">
           </div>
           <div class="chatboxinput">
               <textarea class="chatboxtextarea form-control" id="chat-content" type="text" name="chat_input" onkeyup="enterSend()"></textarea>
           </div>
           <div>
            <button class="Btn" id="chatBtn" type="button" onclick="send();">Send</button>
           </div>
            </div>
            </div>
        </div>   
      </div>
   </div>
</div>
</body>
<script>
    var ws;
    var ns;
    var userId = "${userId}";
    var chatroom = "${chatroom}";
    var rsvId = "${rsvId}";
    var my_chat_content = document.getElementById("chatboxcontent");
    var chat_content = document.querySelector('#my-chat-content');
    var sendChat;  //????????? ???????????? ?????? ?????? 
    var read_date; // ????????????????????? ?????? ??????
    var plusChat = 0; //?????? ????????? ???????????? (????????????)
    var oneChat = 0 ; //?????? ?????? ????????? ????????? ???????????? 
    var cnt = 0;
    var noticeUser; //??????????????? ?????? 
    var noticeParkingId; //????????? 
    var chatNoticeNum = 0; //????????? ?????? ?????? ?????? 
    

    window.onload = function () {
        lastChat();
        connect();
    }

   function enterSend(){
      if (window.event.keyCode == 13){
         send();
      }
   }

    function connect() {
      	ns = new WebSocket("ws://localhost:9999/Where2Park/notice.do");
        ws = new WebSocket("ws://localhost:9999/Where2Park/chat.do");
        ws.onopen = onOpen;
        ws.onclose = onClose;
        ws.onmessage = onMessage;
    }

    function send() {
        sendChat = document.getElementById("chat-content").value.trim();
        console.log(sendChat);
        ws.send(JSON.stringify({ chatroom_id: chatroom, user_id: userId, message_type : "text!", message_content: sendChat, check: 0 }));
        document.getElementById("chat-content").value = "";
    }

    function onOpen() {
        console.log(userId + "?????? ???????????? ?????????????????????.");
        sendChat = "??????"
        ws.send(JSON.stringify({ chatroom_id: chatroom, user_id: userId, message_type : "start", message_content: sendChat }));
    }

    function onMessage(e) {
        var data = JSON.parse(e.data);
        var start = data.message_type;
        read_date = data.check;
        var msgId = data.user_id;
        var msg = data.message_content;
        var currentDate = new Date();
        var date = currentDate.getFullYear()+"-"+(currentDate.getMonth()+1) +"-"+currentDate.getDate() +" "+ currentDate.getHours() +":"+ currentDate.getMinutes();
        var message = new Array();
        message.push({user_id : msgId,
                      message_content : msg,
                      message_datetime : date,
                      message_read_date : read_date,
                      message_type : start}); 

        if(read_date == 1 && start == "start"){  //???????????? ?????? ??????????????? 
            cnt = 2;
         }else if(read_date == 2 && start =="start" && cnt==1){  // ???????????? ????????? ????????? ???????????????...
            cnt = 2;
         }else if(read_date == 1 && cnt == 0){ // ?????? ???????????? ??????????????? ????????? ????????????!
             cnt = 1;
         }
        
      if(read_date == 1 && start == "text!"){ //??????
         selectUserChatNotice(message[0].message_content);
         console.log("????????????????????? ????????????");
      }

        if(read_date == 2 && cnt == 2){  // ???????????? ?????????????????? ????????? ?????????????????? 
            location.reload();
        }
        if(start != "start"){
            sortChat(message, 0);
            readCheck();
        }
    }

    function disconnect() {
        onClose();
    }

    function onClose() {
        console.log(userId + "?????? ????????? ?????? ?????????????????????.");
      //connect();
        console.log("Re-Connection Chatting!!")
    }

    function lastChat() {
        var message = new Array();
        <c:forEach items="${message}" var="msg">
            message.push({user_id : "${msg.user_id}",
                          message_content : "${msg.message_content}",
                          message_datetime : "${msg.message_datetime}".slice(0, 16),
                          message_read_date : "${msg.message_read_date}"});
                                </c:forEach>
        
        for (let i = 0; i < message.length; i++) {
            sortChat(message, i);
        }
    }//??????????????????

    function sortChat(message, i) {
        if((message[i].message_read_date == null || message[i].message_read_date == "" || message[i].message_read_date == 1)){
            message[i].message_read_date = "?????? ?????? ??????";
        }else{
            message[i].message_read_date = "??????";
        }
        var check = message[i].message_read_date;
        var chatDate = document.createElement("div");
        var date = message[i].message_datetime;
        
        if (userId == message[i].user_id) {
            var my = document.createElement("div");
            my.setAttribute('class', 'chatboxmessage ltr');
            my.innerHTML = my.innerHTML + "<span class='chatboxmessagefrom'> ???? </span>" + "<div class='chatboxmessagecontent'>" + "<time datetime=''>"
            				+ date + "<span id='readCheck'>&nbsp" + check + "&nbsp</span>" +" </time>" + message[i].message_content + "</div></br>";
            my_chat_content.appendChild(my);
      } else {      
            var you = document.createElement("div");
            you.setAttribute('class', 'chatboxmessage');
         	you.innerHTML = you.innerHTML +"<span class='chatboxmessagefrom'> ???? </span>" + "<div class='chatboxmessagecontent'>" + "<time datetime=''> " 
         					+ date + "<span id='readCheck'>&nbsp" + check + "&nbsp</span>" + "</time>" + message[i].message_content  +"</div></br>";
        	my_chat_content.appendChild(you);
        }
        my_chat_content.scrollTop = my_chat_content.scrollHeight;
    }

    function readCheck (){
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
            if(this.readyState === 4 && this.status === 200) {
                console.log("ajax??? ?????? updateMessageRead??????");
            }
        };
        xhr.open("GET", "updateMessageRead.do?chatroom_id="+ chatroom + "&user_id=" + userId, true);
        xhr.send();
    }

    function noticeConnection(message){
      notType = "chatting";
      sendMessage =  message;
      notUrl = window.location.href;
      ns.send(JSON.stringify({ user_id: noticeUser, not_type: notType, rsv_id: rsvId, not_message: sendMessage, not_url : notUrl }));
      console.log("?????????????????????????????????");
    }//????????????  

    function selectUserChatNotice(message) {
    	console.log(message);
   		var xhr = new XMLHttpRequest();
    	xhr.onreadystatechange = function () {
        	if (this.readyState === 4 && this.status === 200) {
            	var data = xhr.responseText;
            	var parseData = JSON.parse(data);
        		noticeUser = parseData.user_id;
         		console.log("??????????????????????????????" + noticeUser);
            	noticeParkingId = parseData.parking_id;
            	console.log("?????????????????? ?????? user_id" + noticeUser + ", parking_id :" + noticeParkingId);
         		noticeConnection(message);
        	}
    	};
    	console.log(rsvId + " : selectUserNotice ajax ?????????....");
    	xhr.open("GET", "selectNoticeUser.do?rsv_id=" + rsvId, true);
    	xhr.send();
   }


</script>

</html>