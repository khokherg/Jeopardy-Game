<%-- 
    Document   : winPage
    Created on : 16-Oct-2017, 8:52:18 PM
    Author     : gurpreet
--%>

<%@page import="ca.sheridancollege.beans.Player"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>
            Login
        </title>
        <style>
            *{
                margin:0;
                padding:0;

            }
            body
            {
                background-image: url("pic.jpg");
                background-repeat: no-repeat;
                background-size:100% 100%;
            }
            #heading
            {
                height:35%;
                color: #ffcc00;
                text-align:center;
                font-size:150px;
                font-family:kirsty;
                font-weight:200px;
                text-shadow:10px 2px #e68a00; 
            }

            p
            {
                color:#ffcc00;
                font-size:40px;
                font-family:forte;
                margin-top:85px;
            }
            #button:hover
            {
                background-color:#5c00e6;
            }
            #button:focus
            {
                background-color:#5c00e6;
            }
            input
            {
                height:45px;
                width:350px;
                font-family:kirsty;
                font-size:20px;
            }
            #button
            {
                height:45px;
                width:75px;
                color:#e68a00;
                box-shadow:3px 3px 8px #e68a00; 
                font-family:kirsty;
                font-size:20px;
                font-weight:40px;
            }
            .heading1
            {
                color:#ff3333;
                font-family:kirsty;
                font-size:55px;
                
            }
        </style>
    </head>
    <body><div id="div1">
            <h1 id="heading"><b>Jeopardy</b></h1>
        </div>
        <center>
                <% Player p = (Player) session.getAttribute("Player");%>
                <h1 class="heading1">Hey <%= p.getName()%></h1>
                <% if (p.getScore() < 0) {%>
                <h1 class="heading1">Ohh! <% p.getName();%>, You lost Game</h1>
                <% } else { %>
                <h1 class="heading1"> <% p.getName();%></h1>
                <% }%>
                <h1 class="heading1">Your final score is <%= p.getScore()%></h1>
            </center>
       

    </body>
</html>
