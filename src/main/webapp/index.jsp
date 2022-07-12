<%-- 
    Document   : index
    Created on : 23 jun. 2022, 21:07:18
    Author     : imac
--%>
    <jsp:include page="WEB-INF/Pages/Commons/Head.jsp"/>
        <title>ThunderStore-Inicio</title>
    </head>
    <body class="d-flex flex-column justify-content-center">
        <jsp:include page="WEB-INF/Pages/Commons/Navbar.jsp"/>
        <main class="container d-flex flex-column justify-content-center align-items-center gap-5 m-5 p-5 align-self-center">
            <h1 class="text-center">¡Bienvenido!</h1>
            <Button type="button" class="btn btn-success m-2" data-bs-toggle="modal" data-bs-target="#modalLogIn">AUTH</button>
            <a href="${pageContext.request.contextPath}/app" class="btn btn-success m-2">Ingresar</a>
        </main>
        <jsp:include page="WEB-INF/Pages/Usuarios/LogIn.jsp"/>
        <jsp:include page="WEB-INF/Pages/Commons/Scripts.jsp"/>