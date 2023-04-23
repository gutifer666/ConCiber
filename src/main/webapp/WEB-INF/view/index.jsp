<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<jsp:include page="components/header.jsp">
    <jsp:param name="titlename" value="Index"/>
</jsp:include>
<body>
<jsp:include page="components/navbar.jsp"></jsp:include>
<div class="px-4 py-5 my-5 text-center">
    <h1 class="display-5 fw-bold">ConCiber</h1>
    <div class="col-lg-6 mx-auto">
        <p class="lead mb-4">Concienciando por la ciberseguridad.</p>
    </div>
</div>

<section class="container pt-5">
    <article>
        <h1>Ciberseguridad y el Factor Humano</h1>
        <h2>¿Por qué el Factor Humano es la Mayor Vulnerabilidad en la Ciberseguridad?</h2>
        <p>Según el Informe de Amenazas de Seguridad de Cisco 2020, el 95% de los ataques de phishing exitosos que se producen son causados por errores humanos, como hacer clic en enlaces maliciosos o descargar archivos adjuntos infectados. Además, el Informe de Verizon de 2020 reveló que el 22% de los ataques de ransomware se deben a la interacción humana con correos electrónicos maliciosos.</p>
        <h2>¿Cómo Proteger a su Organización del Factor Humano?</h2>
        <p>La educación y la capacitación son claves para prevenir errores humanos en la ciberseguridad. Es importante educar a los empleados sobre las mejores prácticas de seguridad cibernética, como no hacer clic en enlaces sospechosos o descargar archivos de origen desconocido. Además, es fundamental actualizar regularmente los sistemas y software para protegerse de nuevas amenazas.</p>
        <h2>¿Cómo se Pueden Reducir los Costos Asociados con Incidentes de Seguridad Cibernética?</h2>
        <p>Según un estudio de Accenture de 2019, la implementación de medidas proactivas puede reducir los costos asociados con incidentes de seguridad cibernética en un 50%. Al educar a los empleados y actualizar regularmente los sistemas y software, las organizaciones pueden evitar gastos innecesarios en la recuperación de incidentes de seguridad cibernética.</p>
        <h2>Conclusión</h2>
        <p>En resumen, estos datos muestran que el componente humano es una de las mayores vulnerabilidades en la ciberseguridad y que los errores humanos pueden tener consecuencias graves y costosas para las empresas. Es importante abordar este problema a través de la educación y la concientización en seguridad cibernética, la implementación de políticas de seguridad adecuadas y el uso de tecnología avanzada para proteger los sistemas de ataques malintencionados.</p
    </article>
    <article>
        <h2>Tipos de Ataques en Ciberseguridad y el Factor Humano</h2>
        <p><h3>Ataques de Phishing</h3>
        <p>El phishing es un tipo de ataque que se basa en la ingeniería social para engañar a las personas y hacer que revelen información confidencial, como contraseñas o información de cuenta. Los atacantes pueden utilizar correos electrónicos falsos que parecen provenir de una fuente legítima o incluso pueden crear sitios web falsos que parecen ser reales para hacer que las personas ingresen su información personal.</p>
        <h3>Ataques de Spear Phishing</h3>
        <p>El spear phishing es un tipo de ataque de phishing que se dirige a un individuo específico o a un grupo pequeño de individuos. Los atacantes utilizan información personal que han obtenido a través de fuentes públicas o de ingeniería social para hacer que el correo electrónico o el mensaje parezca legítimo. Esto hace que sea más probable que la víctima proporcione información confidencial.</p>
        <h3>Ataques de Ingeniería Social</h3>
        <p>La ingeniería social es un método utilizado por los atacantes para manipular a las personas y obtener acceso a sistemas o información confidencial. Los atacantes pueden utilizar información personal o pública para crear una sensación de confianza con la víctima y engañarla para que revele información o realice acciones que no debería.</p>
        <h3>Ataques de Malware</h3>
        <p>El malware es un software malicioso que se utiliza para dañar o controlar sistemas informáticos sin el conocimiento o consentimiento del propietario del sistema. Los atacantes pueden utilizar técnicas de ingeniería social para engañar a las personas y hacer que descarguen o instalen malware en sus dispositivos.</p>
    </article>
    <h2>Referencias a informes:</h2>
    <ul>
        <li><a  href="https://www.cisco.com/c/en/us/products/security/security-reports.html">Informe de Amenazas de Seguridad de Cisco 2020</a></li>
        <li><a href="https://enterprise.verizon.com/resources/reports/2020-data-breach-investigations-report.pdf">Informe de Verizon de 2020</a></li>
        <li><a href="https://www.ibm.com/security/data-breach/threat-intelligence">Informe del Estado de la Ciberseguridad de IBM 2021</a></li>
        <li><a href="https://www.ibm.com/security/data-breach">Estudio de 2020 de IBM</a></li>
    </ul>
</section>
<jsp:include page="components/footer.jsp"></jsp:include>
<jsp:include page="components/scripts.jsp"></jsp:include>
</body>
</html>