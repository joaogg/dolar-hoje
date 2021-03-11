<%-- 
    Document   : milagre
    Created on : 27/10/2017, 12:59:22
    Author     : JoaoG
--%>

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
            
            <div class="row">
                <div class="col-md-6 text-center">

                                <div style="font-size: 40px;padding-top:35px;">MOEDA HOJE</div>
                </div>
                <div class="col-md-6 text-center">

                            <div style="padding: 0px 20px 0px 20px">
                                <img src="https://static.wixstatic.com/media/fbc4ec_4afea8dad6cb473eb37d3ad268971d26.png/v1/fill/w_630,h_273,al_c,usm_0.66_1.00_0.01/fbc4ec_4afea8dad6cb473eb37d3ad268971d26.png" width="300">
                            </div>
                </div>                
                
            </div>

            </br></br>
            <%

                Date dataAtual = new Date();
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String data = sdf.format(dataAtual);

            %>
<link rel = "chrome-webstore-item" href = "https://chrome.google.com/webstore/detail/apdfllckaahabafndbhieahigkjlhalf" >

  

<script>        
  $.ajax({
  type: "GET",
  dataType: "json",
  url: "https://economia.awesomeapi.com.br/json/all",
  success: function(data) {

    $("#usd1").append(data["USD"]["code"]);
    $("#usd2").append(data["USD"]["high"]);
    $("#usd3").append(data["USD"]["create_date"]);
    
    $("#eur1").append(data["EUR"]["code"]);
    $("#eur2").append(data["EUR"]["high"]);
    $("#eur3").append(data["EUR"]["create_date"]);
    
    $("#gbp1").append(data["GBP"]["code"]);
    $("#gbp2").append(data["GBP"]["high"]);
    $("#gbp3").append(data["GBP"]["create_date"]);    
    
    $("#btc1").append(data["BTC"]["code"]);
    $("#btc2").append(data["BTC"]["high"]);
    $("#btc3").append(data["BTC"]["create_date"]);

    //console.log(data["USD"]["code"]);
    //console.log(data["USD"]["high"]);
    //console.log(data["USD"]["create_date"]);
    
    for(var i in data){    
    console.log("Moeda "+i+": "+data[i].code);
    console.log("Valor "+i+": "+data[i].high);
    console.log("Data "+i+": "+data[i].create_date);
    console.log("\n");
    }

  }      
  
});

</script>            
 
            <div class="well" style="background: #FFFFFF; border-radius: 0px;">
                <div class="row">
                    <div class="text-center">
                        Última atualização <%=data%> à alguns segundos atrás...
                    </div>
                    </br>
                    <div class="col-md-12 text-center">
                        
                        <div class="col-md-6 text-center">
                            <div class="well" style="background: #FFFFFF; border-radius: 0px;">
                                <div class="text-center"><b>
                                        US$ Dólar
                                    </b></div>
                                </br>
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <td>Moeda</td>
                                            <td><span id="usd1"></span></td>
                                        </tr>
                                        <tr>
                                            <td>Valor</td>
                                            <td>US$ <span id="usd2"></span></td>
                                        </tr>
                                        <tr>
                                            <td>Data</td>
                                            <td><span id="usd3"></span></td>
                                        </tr>                                        
                                    </tbody>
                                </table>                            
                                <div style="font-family: 'Open Sans',sans-serif;font-size: 14px; color: #666">
                                    <img src="http://a3card.com.br/wp-content/uploads/2015/03/icon_dinheiro.png" width="30">                       
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 text-center">
                            <div class="well" style="background: #FFFFFF; border-radius: 0px;">
                                <div class="text-center"><b>
                                        € Euro
                                    </b></div>
                                </br>
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <td>Moeda</td>
                                            <td><span id="eur1"></span></td>
                                        </tr>
                                        <tr>
                                            <td>Valor</td>
                                            <td>€ <span id="eur2"></span></td>
                                        </tr>
                                        <tr>
                                            <td>Data</td>
                                            <td><span id="eur3"></span></td>
                                        </tr>                                        
                                    </tbody>
                                </table>                            
                                <div style="font-family: 'Open Sans',sans-serif;font-size: 14px; color: #666">
                                    <img src="http://a3card.com.br/wp-content/uploads/2015/03/icon_dinheiro.png" width="30">                       
                                </div>
                            </div>
                        </div>   
                        
                        <div class="col-md-6 text-center">
                            <div class="well" style="background: #FFFFFF; border-radius: 0px;">
                                <div class="text-center"><b>
                                        £ Libra Esterlina
                                    </b></div>
                                </br>
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <td>Moeda</td>
                                            <td><span id="gbp1"></span></td>
                                        </tr>
                                        <tr>
                                            <td>Valor</td>
                                            <td>£ <span id="gbp2"></span></td>
                                        </tr>
                                        <tr>
                                            <td>Data</td>
                                            <td><span id="gbp3"></span></td>
                                        </tr>                                        
                                    </tbody>
                                </table>                            
                                <div style="font-family: 'Open Sans',sans-serif;font-size: 14px; color: #666">
                                    <img src="http://a3card.com.br/wp-content/uploads/2015/03/icon_dinheiro.png" width="30">                       
                                </div>
                            </div>
                        </div>                           
                        
                        <div class="col-md-6 text-center">
                            <div class="well" style="background: #FFFFFF; border-radius: 0px;">
                                <div class="text-center"><b>
                                        BTC Biticoin
                                    </b></div>
                                </br>
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <td>Moeda</td>
                                            <td><span id="btc1"></span></td>
                                        </tr>
                                         <tr>
                                            <td>Valor</td>
                                            <td>BTC <span id="btc2"></span></td>
                                        </tr>
                                        <tr>
                                            <td>Data</td>
                                            <td><span id="btc3"></span></td>
                                        </tr>                                        
                                    </tbody>
                                </table>                            
                                <div style="font-family: 'Open Sans',sans-serif;font-size: 14px; color: #666">
                                    <img src="http://a3card.com.br/wp-content/uploads/2015/03/icon_dinheiro.png" width="30">                       
                                </div>
                            </div>
                        </div>                           
                        
                    </div>
                </div>
            </div>
        </div>                    
    </body>
</html>
