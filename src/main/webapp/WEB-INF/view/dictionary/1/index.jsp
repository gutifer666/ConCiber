<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="es">
<jsp:include page="../../components/header.jsp">
    <jsp:param name="titlename" value="HOTP y TOTP"/>
</jsp:include>
<body>
<jsp:include page="../../components/navbar.jsp"></jsp:include>
<div class="container py-2">
    <article>
    <h1>Entendiendo HOTP y TOTP</h1>
        <h2>HOTP</h2>
        <p>HOTP (Hash-based One-Time Password) es un algoritmo de generación de contraseñas de un solo uso que se basa en un hash criptográfico, y se utiliza en sistemas de autenticación de dos factores y en procesos de verificación de identidad. Se consideran altamente seguros y se utilizan ampliamente en aplicaciones de autenticación en línea, ¿pero cómo funcionan realmente?</p>
        <p>Todo empieza por usar la función de HMAC basada en SHA1, es decir, un hash con clave. Los parámetros serán datos (contador) y un secreto (clave), de lo que obtendremos un <em>digest</em>.</p>
        <div class="d-flex justify-content-center">
            <img class="img-fluid pb-2" src="/hotp-counter-and-secret.png" style="max-width: 80%;" alt="Explicación de secretos y contador de HOTP"/>
        </div>
        <p>Tras esto toca la operación clave de este mecanismo, el truncado dinámico. Del último byte obtenemos los 4 bits lower bits, en este caso 1, lo cual equivale al offset y nos indica que deberemos obtener el valor de HOTP a partir de <em>offset</em>, <em>offset + 1</em>, <em>offset + 2</em>, <em>offset + 3</em> , lo cual en este caso será el 1, 2, 3 y 4.</p>
        <div class="d-flex justify-content-center">
        <img class="img-fluid" src="/hotp-algorithm.png" style="max-width: 80%;" alt="Explicación del algoritmo de HOTP por pasos"/>
        </div>
        <p>Por último tendremos que quedarnos con un número de dígitos limitados, así que nos quedaremos con el resto de la división de 10^digits, donde dígits corresponde con el número de dígitos que queremos conservar.</p>
        <p>En caso de que tengamos dígitos de menos, rellenaremos con ceros a la izquierda.</p>
        <h2>TOTP</h2>
        <p>Por otro lado, TOTP ("Time-based One-Time Password Algorithm") se basa en la generación de códigos de un solo uso utilizando una función criptográfica hash y la hora actual. Este algoritmo también utiliza una clave secreta compartida entre el servidor de autenticación y el usuario, y un valor de tiempo que se divide en intervalos de tiempo fijos (generalmente 30 segundos). El resultado de la operación hash y el valor de tiempo se convierten en un código de un solo uso que se muestra al usuario y se utiliza para la autenticación.</p>
        <p>Con tal de evitar el problema de 2038, se pide dividir entre 30 los segundos de UNIX desde los cuales se comprueba la fecha.</p>
    <h2>Bibliografía</h2>
    <p>
        Se pueden obtener más detalles de variables y seguridad de la especificación en <a href="https://datatracker.ietf.org/doc/html/rfc4226">RFC4226 (HOTP)</a> y <a href="https://datatracker.ietf.org/doc/html/rfc6238">RFC6238 (TOTP)</a>
    </p>
        <h2></h2>
    </article>
    <jsp:include page="../../components/footer.jsp"></jsp:include>
</div>
<jsp:include page="../../components/scripts.jsp"></jsp:include>
</body>
</html>