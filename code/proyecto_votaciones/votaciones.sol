pragma solidity 0.8.0;

// -----------------------------------------
//    CANDIDATO   |    EDAD    | .   ID
// -----------------------------------------
//     Toni       -     20     - 5
//   Alberto      -     23     - 12345X
//    Joan        -     21     - 02468T
//   Javier       -     19     -  13579U

contract Votacion {

    // Direccion del propietario del contrato
    address owner;

    // constructor
    constructor () public {
        owner = msg.sender;
    }

    // relacion entre el nombre del candidato y el hash de sus datos personales
    mapping (string=>bytes32) id_candidato;

    // Relacion entre el nombre del candidato y el numero de votos
    mapping (string=>uint) votos_candidato;

    // Lista para almacenar los nombres de los candidatos
    string[] candidatos;

    // Lista de los hashes de la identidad de los votantes
    bytes32[] votantes;

    // Cualquier persona puede usar esta funcion para presentarse a las elecciones
    function Representar(string memory _nombrePersona, uint _edadPersona, string memory _idPersona) public {
        // Calcular el hash de los datos del candidato
        bytes32 hash_candidato = keccak256(abi.encodePacked(_nombrePersona, _edadPersona, _idPersona));

        // Almacenar el hash de los datos del candidatos ligados a su nombre
        id_candidato[_nombrePersona] = hash_candidato;

        // Almacenamos el nombre del candidato
        candidatos.push(_nombrePersona);
    }
}