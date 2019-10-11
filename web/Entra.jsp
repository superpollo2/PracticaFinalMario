

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sfix Pc</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/small-business.css" rel="stylesheet">
    </head>
    <body style="background-color:#322E7F;"> 
        <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"  >      
    <div class="container">
      <a class="navbar-brand" href="#">Sfix PC</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Inicio
              <span class="sr-only">(current)</span>
            </a>
          </li>          
        </ul>
      </div>
    </div>
  </nav>
 <div class="row align-items-center my-5">
      <div class="col-lg-8">      
      </div>
 </div>
  <!-- Page Content -->
  <div class="container">

    <!-- Heading Row -->
    <div class="row align-items-center my-5">
      <div class="col-lg-8">
        <img src="qr.png" style="width:700px;height:350px; ">
      </div>
      <!-- /.col-lg-8 -->
      <div class="col-lg-4">
        <h1 class="font-weight-light text-white">Solicitud de Servicios</h1>
        <form method="post" style="alignment-adjust:auto"> 
            <input type="text" placeholder="Nombres" maxlength="20" name="nombre"><br>                   
                <input type="number" placeholder="identificacion" maxlength="10" name="id"><br> 
                <input type="text" placeholder="diereccion" maxlength="20" name="direccion"><br>                     
                <input type="number" placeholder="WhatsApp"   maxlength="20" name="wha"><br>  
                <select  type="text" name="servicio" Placeholder="Seleccione el Servicio"> 
                <option  type="text" value="Formatear" Placeholder="Seleccione el Servicio"> Formatear Equipo</option>
                <option value="Arendimiento"> Aumentar rendimiento </option>
                <option value="Malware"> Eliminar Malware</option>
                <option value="limpieza"> Limpiar mi PC</option>
                <option value="Instalar Programas">Instalar Programas</option>
                <option value="Asesoria">Asesoria</option>
                <option value="Recuperar Datos">Recuperar Datos</option>
                <option value="Problemas de Hardware">Problemas de Hardware</option>
                <option value="No se que tiene mi Pc">No se que tiene mi Pc</option>
                </select><br>
                <input style="" type="submit" name="btn1" value="Realizar Solicitud ">          
        </form>
         </div>      
    </div>       
  </div>
   <!-- Call to Action Well -->
    
   
    <!-- Content Row -->
    <div class="row">
      
      <!-- /.col-md-4 -->
      <div class="col-md-6 mb-5">
        <div class="card h-200">
          <div class="card-body">
            <h2 class="card-title">Servicio de Tecnico de Alta Calidad </h2>
            <p class="card-text">-Contamos con tecnicos experimentados y que garantizan la seguridad y el buen mantenimiento de sus equipos </p>
             <p class="card-text">-Tecnicos Sertificados a su dispocicion </p>
             <p class="card-text">-Amplia gama de programas y demas funcionalidades para sus equipos </p>
          </div>          
        </div>
      </div>
      <!-- /.col-md-4 -->
      <div class="col-md-6 mb-5">
        <div class="card h-200">
          <div class="card-body">
            <h2 class="card-title">Atencion Rapida y Efectiva </h2>
            <p class="card-text">-Contamos con la facilidad de prestar el servicio en su hogar </p>
            <p class="card-text">-Cobertura en toda el area metropolitana </p>
            <p class="card-text">-Agilidad en el servicio para no comprometer su agenda y malgastar su tiempo</p>
          </div>         
        </div>
      </div>
      <!-- /.col-md-4 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->


  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Sfix Pc</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

       <%  if(request.getParameter("btn1")!=null){
       String nombre=request.getParameter("nombre");
       String id=request.getParameter("id");
       String direccion=request.getParameter("direccion");
       String telefono=request.getParameter("wha");
       String servicio=request.getParameter("servicio");
       
       Connection con=null;
       ResultSet rs=null;
       Statement sta=null;
       
try{
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost/sfix_pc?user=root&password=");      
       sta=con.createStatement();
       
       sta.executeUpdate("insert into datos values ('"+nombre+"','"+id+"','"+direccion+"','"+telefono+"','"+servicio+"')" );
       
}catch(Exception e){out.println("error"+e);}
       }
       %>
        
    </body>
</html>
