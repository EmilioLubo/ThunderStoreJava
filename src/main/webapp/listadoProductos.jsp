<%-- 
    Document   : listadoProductos
    Created on : 24 jun. 2022, 19:31:25
    Author     : imac
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    <jsp:include page="WEB-INF/Pages/Commons/Head.jsp"/>
        <title>ThunderStore-Tienda</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/Pages/Commons/Navbar.jsp"/>
        <h1 class="text-center mt-5">Tienda</h1>
        <section class="container d-flex flex-column align-items-center">
            <Button type="button" class="btn btn-success m-2" data-bs-toggle="modal" data-bs-target="#modalAgregarProducto">Agregar Producto [+]</button>
            <c:choose>
                <c:when test="${listaProductos != null && !lista.isEmpty()}">
                    <div class="row justify-content-center m-2 p-2">
                        <jsp:include page="WEB-INF/Pages/Productos/CardProducto.jsp"/>
                    </div>
                </c:when>
                <c:otherwise>
                <div class="row justify-content-center m-5 p-5">
                    <h2 class="text-center">No hay productos disponibles...</h2>
                </div>
                </c:otherwise>
            </c:choose>
        </section>
        <jsp:include page="WEB-INF/Pages/Productos/AddForm.jsp"/>
        <script src="JS/fotobase64.js"></script>
       
    </body> 
    <jsp:include page="WEB-INF/Pages/Commons/Scripts.jsp"/>
