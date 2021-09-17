pragma solidity 0.8.0;

// -----------------------------------------
//    ALUMON    | . ID      |  NOTA
// -----------------------------------------
// Marcos - 77755N - 5
// Joan - 12345X - 5
// Maria - 02468T - 5
// Marta - 13579U - 5
// Alba - 98765Z - 5


contract Notas {

    // Direccion del profesor
    address public profesor;

    // Constructor
    constructor () public {
        profesor = msg.sender;
    }

    // Mapping para relacionar el hash de la identidad del alumno con su nota del examen
    mapping(bytes32 => uint) notas;

    // Array de los alumnos que pidan revisiones de examen
    string[] revisiones;

    // Eventos
    event alumno_evaluado(bytes32);
    event evento_revision(string);

    modifier UnicamenteProfesor(address _direccion) {
        require(_direccion == profesor, "No tienes permisos para ejecutar esta funcion");
        _;
    }

    // Funcion para evaluar alumnos
    function Evaluar(string memory _idAlumno, uint nota) public  UnicamenteProfesor (msg.sender){
        // Hash de la identificacion del alumno
        bytes32 hash_idAlumno = keccak256(_idAlumno);
        // Relacion entre el hash de la identificacion del alumno y su nota
        notas[hash_idAlumno] = _nota;
        // Emision del evento
        emit alumno_evaluado(hash_idAlumno);
    }
}