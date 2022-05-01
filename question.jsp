<html>
    <head>
        <title>
            Question
        </title>
        <style>
            body
            {
                background-image: url("pic.jpg");
                background-repeat: no-repeat;
                background-size:100% 100%;
            }
            p
            {
                color:#ffcc00;
                font-size:40px;
                font-family:kirsty;
                margin-top:85px;
            }
            center, input
            {
                color:#ff3333;
                font-size:40px;
                font-family:kirsty;
            }
            .btn
            {
                display:inline-block;
                color:#e68a00;
                box-shadow:3px 3px 8px #e68a00; 

            }
            input:hover
            {
                background-color:#5c00e6;
            }
            input:focus
            {
                background-color:#5c00e6;
            }
        </style>
    </head>
    <body>
        <form  action="AnswerSelect">
            <center>
                <%@page import="ca.sheridancollege.logic.*"%>
                <%@page import="ca.sheridancollege.beans.*"%>

                <% QuestionBean quest = (QuestionBean)session.getAttribute("ques"); %>
                <% Player p =  (Player)session.getAttribute("Player");%>
                <p>
                    <%= quest.getQuestion()%>
                </p>
                <input type="radio" name="ans" value="<%= quest.getAnswer1()%>">&emsp;<%= quest.getAnswer1()%>
                &emsp;&emsp;&emsp; &emsp;&emsp;&emsp;
                <input type="radio" name="ans" value="<%= quest.getAnswer2()%>">&emsp;<%= quest.getAnswer2()%>
                <br><br><br>
                <input type="radio" name="ans" value="<%= quest.getAnswer3()%>">&emsp;<%= quest.getAnswer3()%>
                &emsp;&emsp;&emsp; &emsp;&emsp;&emsp;
                <input type="radio" name="ans" value="<%= quest.getAnswer4()%>"><%= quest.getAnswer4()%>


                <br><br>

                <br>
                &emsp;
                <!--input type="hidden" name="bttn"  value="Quit" /-->
                <input class="btn" type="submit" name="bttn" value="Skip">
                &emsp;&emsp;&emsp; &emsp;&emsp;&emsp; &emsp;

                <!--input type="hidden" name="bttn"  value="submitAnswer" /-->
                <input class="btn" type="submit"  name="bttn" value="Submit" >


            </center>
        </form>
    </body>
</html>