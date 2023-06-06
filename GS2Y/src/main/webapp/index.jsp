<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<%String usuarioId = request.getParameter("usuarioid"); %>

	<div class="main">
		<div class="form-login">
			<form method="post" action="Login"> 
		          <h1>Login</h1> 
		           
		          <p> 
		            <input id="idLogin" name="idLogin" required="required" type="text" placeholder="ID de Login" />
		          </p>
		           
		          <p> 		           
		            <input id="senha" name="senha" required="required" type="password" placeholder="Senha"/> 
		          </p>           
		         
						<div>
					<p> 
						<input type="submit" value="Entrar" class="button"/> 
					</p>
					<%if(usuarioId != null){ %>
					<p>
						<input onclick="popUp()" type="button" value="Ver meu Id" class="button" />
					</p>
					<%} %>
						</div>	
		            
		          <p> <a href="cadastroUsuario.jsp">Ainda não sou cadastrado</a> </p>     
			</form>
		</div>
		
		 <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
	        viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
	        <defs>
	            <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
	            </defs>
	            <g class="parallax">
	            <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
	            <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
	            <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
	            <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
	        </g>
	    </svg>
	
	</div>
	<script type="text/javascript">
function popUp(){
alert(<%=usuarioId %>);

}

</script>
</body>
</html>