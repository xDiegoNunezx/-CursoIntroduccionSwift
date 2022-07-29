 /************************************************
*               Funciones                       *
* ¿Qué son?                                     *
* Abstracciones de código que puedes invocar    *
* para realizar una tarea en especifico.        *
*                                               *
* Partes                                        *
*  - Nombre                                     *
*  - Entradas o parámetros                      *
*  - Código                                     *
*  - Salidas                                    *
*************************************************/ 

/*
 *  Definición de una función 
 */

func nombre(parametros) -> Tipo {
    //codigo
}

// Ejemplo: 
// Función sin entradas ni parámetros que imprime hola en consola
func diHola(){
    print("Hola a todos!")
}

diHola() 
//   ^
//   |
// llamada a la función


/*
 * Parámetros
 */

// Un parámetro
func esMayorDeEdad(edad: Int) {
    if(edad>=18) {
        print("Puede pasar")
    } else {
        print("No puede pasar")
    }
}

esMayorDeEdad(edad: 21)

let edadPepito: Int = 17
esMayorDeEdad(edad: edadPepito)

// Múltiples parámetros 
func presentacion(nombre : String, edad : Int, comidaFav : String) {
    print("Hola! Mi nombre es \(nombre), tengo \(edad) años y mi comida favorita es \(comidaFav)\n")
}

presentacion(nombre: "Diego", edad: 21, comidaFav: "Pozole")

/*
 * Etiquetas de argumentos
 */

func diHola(para persona: String, y otraPersona: String){
    print("Hola \(persona) y \(otraPersona)")
}
diHola(para: "Diego", y: "Aldo")

//Omisión de etiquetas
func resta(_ primerNumero: Int, menos segundoNumero: Int) {
    print("La resta \(primerNumero) menos \(segundoNumero) es \(primerNumero-segundoNumero)")
}
resta(10, menos: 5)

/*
 * Valor de parámetros por default
 */

func crearDocumento(_ nombre: String = "default") {
    print("Se creo el documento con el nombre \"\(nombre)\"")
}

crearDocumento("tarea1")
crearDocumento()

// Error común
func crearDocumento(_ nombre: String = "default",_ ruta: String = "\\home",_ extension: String) {
    print("Se creo el documento con el nomnbre \"\(nombre)\"")
}

crearDocumento("tarea1", ".docx")

/*
 * Valores de retorno
 */

func calculaPromedio(_ arreglo: [Int]) -> Int {
    var suma = 0
    for i in arreglo {
        suma += i
    }
    let promedio = suma / arreglo.count
    return promedio
}

func estaAprobado(_ calificaciones: [Int]) -> Bool {
    if calcularPromedio(calificaciones) >= 6 {
        return true
    } else {
        return false
    }
}

let calificaciones = [10,8,10,10,10]
let calificaciones2 = [10,5,5,5,5]

print("Tu promedio es \(calcularPromedio(calificaciones))")

if(estaAprobado(calificaciones)) {
    print("Aprobaste!")
} else {
    print("Reprobaste 😔")
}

//Multiples valores de retorno
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")


/*
 * Parametros In/Out 
 */

// Con errror
func swapTwoInts(_ a: Int, _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 3
var b = 107
swapTwoInts(a, b)
print("a is now \(a), and b is now \(b)")

// Sin error
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 3
var b = 107
swapTwoInts(&a, &b)
print("a is now \(a), and b is now \(b)")
