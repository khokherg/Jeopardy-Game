<%@page import="java.util.ArrayList"%>
<%@page import = "ca.sheridancollege.beans.*"%>
<html>
    <head>
        <title>
            Jeopardy
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
            p
            {
                color: #ffcc00;
                text-align:center;
                font-size:150px;
                font-family:kirsty;
                font-weight:200px;
                text-shadow:10px 2px #e68a00; 
            }
            input
            {
                height:50px;
                width:150px;
                background-color:#aa80ff;
                font-size:20px;
                font-weight:30px;
                font-family:Algerian;

            }
            .tabledata
            {
                height:50px;
                width:90px;
                background-color:#7733ff;
                font-size:30px;
                text-align:center;
                color:#ff3333;
                font-family:kirsty;
            }
            input:focus
            {
                background-color:#5c00e6;
            }
            input:hover
            {
                background-color:#5c00e6;
            }
            h1
            {
                color:#ff3333;
                font-family:kirsty;
                font-size:30px;
            }
        </style>
    </head>
    <body>
        <p>Jeopardy</p><br>
    <center>
        <h1>
            <% Player p = (Player) session.getAttribute("Player");%>
            Welcome <%= p.getName()%> &emsp;&emsp;&emsp; &emsp; Winnings: <%= p.getScore()%>
        </h1>
        <form  action="PickQuestion">
            <table border="2">
                <tr>  
                    <td class="tabledata" >Java</td>
                    <td class="tabledata" >Science</td>
                    <td class="tabledata">Music</td>
                    <td class="tabledata">General Knowledge</td>
                    <td class="tabledata">Sports</td>
                </tr>
                <input type="hidden" name ="arrayButton" value="button">
                <tr>
                    <td>

                        <form action="PickQuestion" >

                            <%
                                ArrayList<String> arrayList = null;
                                if (session.getAttribute("List") != null) {
                                    arrayList = (ArrayList<String>) session.getAttribute("List");
                                }

                            %>
                            <% if (arrayList != null && arrayList.contains("0")) { %>   

                            <input type="hidden" name="qNum"  value="0" />
                            <input type="submit"  value="$100" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="0" />
                            <input type="submit"  value="$100" enabled>
                            <% } %>    
                        </form>
                    </td>
                    <td>
                        <form action="PickQuestion" >

                            <% if (arrayList != null && arrayList.contains("1")) { %>   

                            <input type="hidden" name="qNum"  value="1" />
                            <input type="submit"  value="$100" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="1" />
                            <input type="submit"  value="$100" enabled>
                            <% } %>

                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("2")) { %> 
                            <input type="hidden" name="qNum"  value="2" />
                            <input type="submit" value="$100" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="2" />
                            <input type="submit" value="$100" enabled>
                            <% } %>
                        </form>    
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("3")) { %> 
                            <input type="hidden" name="qNum"  value="3" />
                            <input type="submit" value="$100" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="3" />
                            <input type="submit" value="$100" enabled>
                            <% } %>
                        </form> 
                    </td>
                    <td> 

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("4")) { %> 
                            <input type="hidden" name="qNum"  value="4" />
                            <input type="submit" value="$100" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="4" />
                            <input type="submit" value="$100" enabled>
                            <% } %>

                        </form> 
                    </td>
                </tr>
                <tr>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("5")) { %> 
                            <input type="hidden" name="qNum"  value="5" />
                            <input type="submit" value="$200" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="5" />
                            <input type="submit" value="$200" enabled>
                            <% } %>
                        </form> 
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("6")) { %> 
                            <input type="hidden" name="qNum"  value="6" />
                            <input type="submit" value="$200" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="6" />
                            <input type="submit" value="$200" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("7")) { %> 
                            <input type="hidden" name="qNum"  value="7" />
                            <input type="submit" value="$200" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="7" />
                            <input type="submit" value="$200" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("8")) { %> 
                            <input type="hidden" name="qNum"  value="8" />
                            <input type="submit" value="$200" disabled>
                            <% } else {%>
                            <input type="hidden" name="qNum"  value="8" />
                            <input type="submit" value="$200" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("9")) { %> 
                            <input type="hidden" name="qNum"  value="9" />
                            <input type="submit" value="$200" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="9" />
                            <input type="submit" value="$200" enabled>
                            <% } %>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("10")) { %> 
                            <input type="hidden" name="qNum"  value="10" />
                            <input type="submit" value="$300" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="10" />
                            <input type="submit" value="$300" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("11")) { %> 
                            <input type="hidden" name="qNum"  value="11" />
                            <input type="submit" value="$300" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="11" />
                            <input type="submit" value="$300" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("12")) { %> 
                            <input type="hidden" name="qNum"  value="12" />
                            <input type="submit" value="$300" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="12" />
                            <input type="submit" value="$300" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("13")) { %> 
                            <input type="hidden" name="qNum"  value="13" />
                            <input type="submit" value="$300" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="13" />
                            <input type="submit" value="$300" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("14")) { %> 
                            <input type="hidden" name="qNum"  value="14" />
                            <input type="submit" value="$300" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="14" />
                            <input type="submit" value="$300" enabled>
                            <% } %>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("15")) { %> 
                            <input type="hidden" name="qNum"  value="15" />
                            <input type="submit" value="$400" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="15" />
                            <input type="submit" value="$400" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("16")) { %> 
                            <input type="hidden" name="qNum"  value="16" />
                            <input type="submit" value="$400" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="16" />
                            <input type="submit" value="$400" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("17")) { %> 
                            <input type="hidden" name="qNum"  value="17" />
                            <input type="submit" value="$400" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="17" />
                            <input type="submit" value="$400" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("18")) { %> 
                            <input type="hidden" name="qNum"  value="18" />
                            <input type="submit" value="$400" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="18" />
                            <input type="submit" value="$400" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("19")) { %> 
                            <input type="hidden" name="qNum"  value="19" />
                            <input type="submit" value="$400" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="19" />
                            <input type="submit" value="$400" enabled>
                            <% } %>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("20")) { %> 
                            <input type="hidden" name="qNum"  value="20" />
                            <input type="submit" value="$500" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="20" />
                            <input type="submit" value="$500" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("21")) { %> 
                            <input type="hidden" name="qNum"  value="21" />
                            <input type="submit" value="$500" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="21" />
                            <input type="submit" value="$500" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>
                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("22")) { %> 
                            <input type="hidden" name="qNum"  value="22" />
                            <input type="submit" value="$500" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="22" />
                            <input type="submit" value="$500" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("23")) { %> 
                            <input type="hidden" name="qNum"  value="23" />
                            <input type="submit" value="$500" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="23" />
                            <input type="submit" value="$500" enabled>
                            <% } %>
                        </form>
                    </td>
                    <td>

                        <form action="PickQuestion" >
                            <% if (arrayList != null && arrayList.contains("24")) { %> 
                            <input type="hidden" name="qNum"  value="24" />
                            <input type="submit" value="$500" disabled>
                            <% } else { %>
                            <input type="hidden" name="qNum"  value="24" />
                            <input type="submit" value="$500" enabled>
                            <% }%>
                        </form>
                    </td>
                </tr>
            </table>
        </form>

    </center>
</body>
</html>