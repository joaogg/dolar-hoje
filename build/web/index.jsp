<%-- 
    Document   : index
    Created on : 26/10/2017, 14:48:01
    Author     : JoaoG
--%>

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

    <style>
body {
    background-color: #EEEEEE;
}        
    </style>    
    
    <body>
        <div class="container">
            <div class="row">
            <div class="col-md-12 text-center">	
        <img src="https://static.wixstatic.com/media/fbc4ec_4afea8dad6cb473eb37d3ad268971d26.png/v1/fill/w_630,h_273,al_c,usm_0.66_1.00_0.01/fbc4ec_4afea8dad6cb473eb37d3ad268971d26.png" width="400">
            </div>
            </div>
            
            </br></br>
            
        <div class="row">
            
        <div class="col-md-6 text-center">	
                    <div class="form-group">
                        <input type="number" id="valor" class="form-control" placeholder="R$ 1,00" name="valor">
                    </div>
        </div>
            
    <script>        
            $.ajax({
  type: "POST",
  dataType: "json",
  url: "http://api.promasters.net.br/cotacao/v1/valores?moedas=USD&alt=json",
  success: function(data) {

    $("#q").append(data["valores"]["USD"]["nome"] + ": " + data["valores"]["USD"]["valor"]);

    console.log(data["valores"]["USD"]["nome"]);

    document.querySelector("[name='nome']").value = data["valores"]["USD"]["valor"];
    document.querySelector("[name='gamb']").value = data["valores"]["USD"]["valor"];
    document.querySelector("[name='valor']").value = 1.00;


  }      
  
});

$(document).ready(function(){
    $("#valor").change(function(){
        document.querySelector("[name='nome']").value = document.querySelector("[name='gamb']").value*document.querySelector("[name='valor']").value;
    });
});  
    </script>

            
        <div class="col-md-6 text-center">	
                    <div class="form-group">
                        <input type="text" class="form-control" id="nome" name="nome">
                    </div>
                    <div style="visibility: hidden;"><div class="form-group">
                        <input type="text" class="form-control" id="nome" name="gamb">
                    </div></div>
                 
        </div>
       </div>
        </div>

    </body>
</html>