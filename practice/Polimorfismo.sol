// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "./Interface.sol";

contract Polimorfismo {

    // Para poder tener la instancia, necesitamos la direccion como parametro extra
    function sumarDesdeContrato(uint numero1, uint numero2, address direccionContrato) 
        public returns (uint) {
        // Hacemos referencia a la interface como si estuviera subida a la red
        // InterfaceSuma va a ser una instancia de Suma, a traves de la implementacion
        Suma interfaceSuma = Suma(direccionContrato);
        return interfaceSuma.sumar(numero1, numero2);
    }

}