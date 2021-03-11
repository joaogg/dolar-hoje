<%-- 
    Document   : milagre
    Created on : 27/10/2017, 12:59:22
    Author     : JoaoG
--%>

<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dólar Hoje KKK</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery/jquery-1.5.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <style>
            body {
                background-color: #EEEEEE;
            }        
        </style>    
        </br></br>

        <div class="container">         

            <div class="well" style="background: #FFFFFF; border-radius: 0px;">
                <div class="row">
                    <div class="text-center">
                        Última atualização  à alguns segundos atrás...
                    </div>
                    </br>
                    <div class="col-md-12 text-center">                     
                        <%
                            // Finalização, Defesa, Goleiro, Criatividade, Esquema Tático
                            
                            // Finalização 3%, Defesa 3%, Goleiro 2%, Criatividade 3%, Esquema Tático 3%
                            
                            
                            Random rand = new Random();
                            int chutesA = rand.nextInt(30);
                            int chutesB = rand.nextInt(30);

                            out.print("Chutes de A: " + chutesA);
                            out.print("<br>");
                            out.print("Chutes de B: " + chutesB);
                            out.print("<br><br>");

                            int chutesGolA = rand.nextInt(chutesA);
                            int chutesGolB = rand.nextInt(chutesB);

                            out.print("Chutes no Gol de A: " + chutesGolA);
                            out.print("<br>");
                            out.print("Chutes no Gol de B: " + chutesGolB);

                            int golCountA = 0;

                            while (chutesGolA > 0) {
                                int gol = rand.nextInt(100);

                                chutesGolA = chutesGolA - 1;

                                if (gol >= 0 && gol <= chutesGolA*2) {
                                    golCountA = golCountA + 1;
                                }

                            }

                            int golCountB = 0;

                            while (chutesGolB > 0) {
                                int gol = rand.nextInt(100);

                                chutesGolB = chutesGolB - 1;

                                if (gol >= 0 && gol <= chutesGolB*2) {
                                    golCountB = golCountB + 1;
                                }
                            }

                            out.print("<br><br><br>");
                            out.print("Equipe A " + golCountA + " x " + golCountB + " Equipe B");

                        %>

                    </div>
                </div>
            </div>
        </div>                    
    </body>
</html>
