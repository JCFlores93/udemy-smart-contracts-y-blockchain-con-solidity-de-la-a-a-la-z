pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Enteros{
    // Variables enteras sin signo
    uint mi_primer_entero;
    uint mi_primer_entero_inicializado = 3;
    uint cota = 5000;

    // Variables enteras sin signo con un numero especifico de bits
    uint8 entero_8_bits;
    uint64 entero_64_bits = 7000;
    uint16 entero_16_bits;
    uint256 entero_256_bits;

    // Variables enteras sin signo
    uint mi_primer_entero_con_signo;
    uint mi_primer_entero_con_signo_inicializado = -32;
    uint cota = 5000;

    // Variables enteras con signo con un numero especifico de bits
    int72 entero_con_signo_72_bits;
    int240 entero_con_signo_240_bits = 90000;
    int256 entero_con_256_bits;

      
    //Variables de tipo string (cadenas de texto)
    string mi_primer_string;
    string public saludo = "Hola, ¿cómo estais?";
    string public string_vacio = "";
    
    //Variables booleanas
    bool mi_primer_booleano;
    bool public  flag_true =true;
    bool public flag_false = false;
    
    //Variables de tipo bytes
    bytes32 mi_primer_bytes;
    bytes4 segundo_bytes;
    string public nombre = "Joan";
    bytes32 public hash = keccak256(abi.encodePacked(nombre));
    bytes4 public identificador;
    
    function ejemploBytes4() public{
        identificador = msg.sig;
    }
    
    //Variables address
    address mi_primera_direccion;
    address public direccion_local_1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public direccion_local_2 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
}