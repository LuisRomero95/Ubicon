<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<%
HttpSession sesion = request.getSession();
    if(sesion.getAttribute("nivel")==null){
        response.sendRedirect("index.jsp");
    }
    else{
        String nivel = sesion.getAttribute("nivel").toString();
        if(!(nivel.equals("1") || nivel.equals("2"))){
            response.sendRedirect("navbar.jsp");
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Ayudante</title>    
        <!--AUTOCOMPLETAR -->       
        <script src="http://code.jquery.com/jquery-1.7.js" type="text/javascript"></script>
        <!--BARRA DE NAVEGACIÓN -->
        <jsp:include page="navbar.jsp"/>
        <!--AUTOCOMPLETAR -->       
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>        
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />        
        <!--VALIDACIÓN -->       
        <script src="js/validarAyudante.js" type="text/javascript"></script>      
    </head>
    <body>       
        <div class="container" >
            <h1>Insertar Ayudante</h1>
            <hr>            
            <form name="frmInsertarAyudante" method="POST" action="SERVAyudante" autocomplete="off" >
                <div class="container">
                    
                    <div class="col-md-6">
     
                        <div class="form-group"> <!-- Nombre -->
                            <label for="nom_id" class="control-label">NOMBRES</label>
                            <input type="text" class="form-control" id="nom_id" name="txtNombre" placeholder="Luis Alonso" >
                        </div>
                        
                        <div class="form-group"> <!-- Apellidos -->
                            <label for="ape_id" class="control-label">APELLIDOS</label>
                            <input type="text" class="form-control" id="ape_id" name="txtApe" placeholder="Romero Costilla" >
                        </div>                          
                        
                        <div class="form-group"> <!-- DNI -->
                            <label for="dni_id" class="control-label">DNI</label>
                            <input type="text" class="form-control" id="dni_id" name="txtDni" placeholder="73095001" >
                            <div id="ReportarDni" class="outputTextArea"></div>                             
                        </div>
                        
                        <div class="form-group"> <!-- Email-->
                            <label for="email_id" class="control-label" >EMAIL</label>
                            <input type="text" class="form-control" id="email_id" name="txtEmail" style="text-transform:lowercase;" placeholder="larcroco@gmail.com">
                            <div id="ReportarEmail" class="outputTextArea"></div> 
                        </div>                        
                        
                    </div>
                    
                    <div class="col-md-6">
                                                
                        <div class="form-group"> <!-- Telefono Corporativo-->
                            <label for="tel_id" class="control-label">TELÉFONO CELULAR</label>
                            <input type="text" class="form-control" id="tel_id" name="txtTel" placeholder="3257618" >
                        </div> 
                        
                        <div class="form-group"> <!-- Dirección-->
                            <label for="direc_id" class="control-label">DIRECCIÓN</label>
                            <input type="text" class="form-control" id="direc_id" name="txtDirec" placeholder="Jr. Wacaypata 448">
                        </div>   
                        
                        <div class="form-group"> <!-- Distrito-->
                            <label for="dist_id" class="control-label" >DISTRITO</label>
                            <input type="text" class="form-control" id="dist_id" name="txtDistrito" style="text-transform:lowercase;" placeholder="san juan de miraflores">
                        </div>   
                        
                    </div>                  

                    <div class="col-md-12">
                        
                        <div class="form-group"> <!-- Submit Insertar -->
                            <input type="submit" name="btnInsertar" value="Insertar" id="insertar" class="btn btn-success btn-lg">
                            <a href="SERVAyudante?action=refresh" class="btn btn-danger btn-lg" onclick="return confirm('¿Desea salir de la edición?')">Regresar</a>
                            <input type="reset" name="btnLimpiar"  value="Limpiar" class="btn btn-warning btn-lg"  onclick="return confirm('¿Desea limpiar los datos a registrar?')">
                        </div>
                        
                    </div>
                    
                </div>
            </form>
        </div>            
    </body>
</html>
