function mostrarBoton()
{
    let passw = document.getElementById("passw");
    let passwr = document.getElementById("passwr");
    let boton = document.getElementById("boton");
    let mens = document.getElementById("oculto");

    let pass = false;
    
    
    if((passw.value == "") && (passwr.value == ""))
    {
        mens.innerHTML = "";
        mens.style.display = "none";
    }

    if (passwr.value != "")
    {
        if (passw.value != passwr.value)
        {
            mens.innerHTML = "Las contraseñas no coinciden";
            mens.style.display = "block";
        }
        /*
        else if (!validarPassword(passw.value))
        {
            mens.innerHTML = "Contraseña no válida: debe contener de 8 a 16 caracteres alfanuméricos, con: al menos un número, una letra mayúscula y una minúscula";
            mens.style.display = "block";
        }
        */
        else
        {
            pass = true;
            mens.style.display = "none";
        }
        
    }
    
    
    if (passw.value != "" && pass)
 
    {
        boton.disabled = false;
    }
    else
    {
        boton.disabled = true;
    }

}

function checkPass()
{
    let passw = document.getElementById("passw");
    let mens = document.getElementById("oculto");
    let mensC = document.getElementById("ocultoP");
    let longMin = 8;
    let longMax = 16;
    let symbols = ['?', '$', '#', '%', '(', ')', '&', '@', '*', '_']
    let passQua = 0;
    let index;
    let upperL = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let lowerL = upperL.toLowerCase();
    let uppers = 0;
    let lowers = 0;

    //passw = passw.value

    event.preventDefault();
    mensC.style.display = "none";
    passQua += (passw.value.length - longMin) * 2;
    symbols.forEach(element => {
        if (estaEnCadena(element, passw.value))
        {
            passQua += 5;
        }
    });
    for(index = 0; index < passw.value.length; index++)
    {
        if (estaEnCadena(passw.value.charAt(index), upperL))
        {
            uppers += 1;
        }
        if (estaEnCadena(passw.value.charAt(index), lowerL))
        {
            lowers += 1;
        }
    }
    if (lowers > 0 && uppers > 0)
    {
        passQua += 10;
    }

    mensC.innerHTML = "La contraseña tiene una fortaleza de " + passQua;
    mensC.style.display = "block";

    /*
    if (passw.value.length < longMin)
    {
        mensC.innerHTML = "La contraseña es demasiado corta";
        mensC.style.display = "block";
    }

    if (!validarPassword(passw.value))
    {
        mens.innerHTML = "Contraseña no válida: debe contener de 8 a 16 caracteres alfanuméricos, con: al menos un número, una letra mayúscula y una minúscula";
        mens.style.display = "block";
    }
    */

}

// Esta función comprueba si un correo es válido: debe contener @ y terminar en .com o .es
function correoValido(correo)
{
    let valido = false;

    if (estaEnCadena("@", correo))
    {
        valido = true;
    }
    else
    {
        valido = false;
    }
    if (((correo.lastIndexOf(".com") + 4) == correo.length) || ((correo.lastIndexOf(".es") + 3) == correo.length))
    {
        valido &&= true;
    }
    else
    {
        valido &&= false;
    }

    return valido;
}

// Esta función devuelve true si la cadena cad1 está contenida en la cadena cad2
function estaEnCadena(cad1, cad2)
{
    if (cad2.indexOf(cad1) == -1)
    {
        return false;
    }
    else
    {
        return true;
    }
}

function mostrarBotonV()
{
    let verif = document.getElementById("codigoU");
    let boton = document.getElementById("boton_reg2");

    if (verif.value.length == 6)
    {
        boton.style.display = "block";
        boton.focus();
    }
}

function pulsar(t, codigo) 
{
    if (t.keyCode === 13) 
    {
        t.preventDefault();
        verificarForm(codigo);
    }
}

function verificarForm(codigo)
{
    let verif = document.getElementById("codigoU");
    let verifError = document.getElementById("ocultoV");
    let nombre = document.getElementById("us");
    let passw = document.getElementById("pa");
    let email = document.getElementById("em");
    let fecha = document.getElementById("fn");
    let boton = document.getElementById("boton_reg2");
    

    boton.focus();
    codigo -= 12345;
    if (verif.value == codigo)
    {
        verifError.style.display = "none";
        
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            
                insertado = this.responseText;
                if (insertado == "Correcto")
                {
                    window.close();
                }
                else
                {
                    verifError.innerHTML = "Error en el registro";
                    verifError.style.display = "block";
                }
            
        }
        nombre = nombre.value;
        email = email.value;
        fecha = fecha.value;
        passw = passw.value;

        cadena = "consultas/insertar.php?u=" + nombre + "&e=" + email + "&f=" + fecha + "&p=" + passw;
        xhttp.open("GET", cadena);
        xhttp.send();

     }
    else
    {
        verifError.style.display = "block";
    }
}

function validarPassword(passw) 
{
    var longMin = 8;
    var longMax = 16;
    //var exprRegular = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,16}$/;
    var exprRegular = /^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*[a-z])[a-zA-Z0-9]{8,16}$/;

    //console.log("long: ", passw.length)
    if(passw.length < longMin || passw.length > longMax)
    {
        return false;
    }
    if(!exprRegular.test(passw))
    {
        return false;
    }
    else
    {
        return true;
    }
}

function mayorEdad()
{
    let fecha = document.getElementById("fecha_nac");
    let anio;
    let mes;
    let dia;

    fecha = fecha.value;

    anio = parseInt(fecha.slice(0, 4));
    mes = parseInt(fecha.slice(fecha.indexOf("-") + 1, fecha.indexOf("-", 5)));
    mes--;
    dia = parseInt(fecha.slice(fecha.lastIndexOf("-") + 1), fecha.length);

    if (calcularEdad(anio, mes, dia) >= 18)
    {
        return true;
    }
    else
    {
        return false;
    }
}

function calcularEdad(anio, mes, dia) 
{
    let hoy = new Date();
    let cumpleanos = new Date(anio, mes, dia);
    let edad = hoy.getFullYear() - cumpleanos.getFullYear();
    var m = hoy.getMonth() - cumpleanos.getMonth();
    if (m < 0 || (m === 0 && hoy.getDate() < cumpleanos.getDate()))
    {
        edad--;
    }
    return edad;
}
