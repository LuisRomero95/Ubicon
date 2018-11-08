$(document).ready(function (){
    
    $('#precio_id').numeric("."); 
    
    $('#listarEmisor').change(function (){
        var nivel = $('#listarEmisor option:selected').text().trim();
        $('#contenedor_emisor_id').val(nivel);
    });      
    
    $('#listarReceptor').change(function (){
        var nivel = $('#listarReceptor option:selected').text().trim();
        $('#contenedor_receptor_id').val(nivel);
    });  
    
    $('#listarReceptor').change(function (){
        var nivel = $('#listarReceptor option:selected').text().trim();
        $('#contenedor_receptor_id').val(nivel);
    });
    
    $('#listarUsuario').change(function (){
        var nivel = $('#listarUsuario option:selected').text().trim();
        $('#contenedor_usuario_id').val(nivel);
    });
    
    $('#listarVehiculo').change(function (){
        var nivel = $('#listarVehiculo option:selected').text().trim();
        $('#contenedor_vehiculo_id').val(nivel);
    });      
    
    $('#calcular_precio').click(function (){
       window.open("SERVPrecio?action=insert", "InsertarPrecio", "width=400, height=200");
    });  
         
    
    $('#editar').click(function (){      
          
        var emisor = $('#listarEmisor').val();
        var receptor = $('#listarReceptor').val();
        var usuario = $('#listarUsuario').val();
        var vehiculo = $('#listarVehiculo').val();
        var precio = $('#precio_id').val();
        var descipcion = $('#des_id').val();        
          
        if ( emisor === '' ){
          alert('[ERROR] Confirme el emisor');
          return false;
        }     
        else if ( receptor === '' ){
          alert('[ERROR] Confirme el receptor');
          return false;
        }             
        else if ( usuario === '' ){
          alert('[ERROR] Confirme al usuario');
          return false;
        }        
        else if ( vehiculo === '' ){
          alert('[ERROR] Confirme el vehiculo');
          return false;
        }     
        else if ( precio === null || precio.length === 0 || /^\s+$/.test(descipcion)){
          alert('[ERROR] El precio no puede quedar vacio');
          return false;
        }         
        else if ( descipcion === null || descipcion.length === 0 || /^\s+$/.test(descipcion)){
          alert('[ERROR] La descripción no puede quedar vacio');
          return false;
        }          
          
     });
});      