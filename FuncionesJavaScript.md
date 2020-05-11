# Funciones

Para poder definir una función es usando la palabra reservada **"function"** seguido de un nombre unico y los parametros deseados, tambien puede ser sin parametros, y por ultimo un bloque de instrucciones dentro de llaves:

**Ejemplo de sintaxis**

```javascript
function ejemplo_sintaxis(){
    parametros;
}
```

**Ejemplo**
```javascript
function ejemplo_suma(){

   var num1 = 5;
   var num2 = 8;
  suma = num1 + num2;
  alert("La suma es: "+suma);
}
```

### **Llamado de funciones**

Para invocar una función desde cualquier parte de nuestro programa, solo es necesario escribir el nombre de la función creada seguido de paréntesis( en caso de tener parámetros indicarlos dentro, separados por comas).

```javascript
ejemplo_suma();
```
## **Funciones con parámetros**

 Los parámetros pueden ser capturados dentro de la función y hacer cualquier tipo de manipulación sobre estas, una función puede tener muchos parámetros separados por comas.

```javascript

function ejemplo_suma(num1,num2){
  
  var resultado= num1 + num2;
  alert(“La suma es: ”+ resultado);
}

ejemplo_suma(10,20);
```

## **Funciones con la Instrucción return**

Una función puede tener la instrucción return, esta es requerida si queremos que la función dada nos devuelva un valor.

**Ejemplo**
```javascript
function ejemplo_suma(num1,num2,num3){
  
  return num1+num2+num3;
}

var suma = ejemplo_suma(3,4,5);
```