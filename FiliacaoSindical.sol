// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.7.4;

contract FiliacaoSindical {
    string public termos;
    string public empresa;
    string public dataDeFiliacao;
    string public dataDeDesfiliacao;

    address colaborador;
    string nome;
    string cpf;
    string cargo;
    string clt_numero;
    string endereco;

    enum AceiteContrato {
        Sim,
        Nao
    }

    mapping(AceiteContrato => address[]) filiacao;

    constructor(string memory _termos) {
        termos = _termos;
    }

    function assinar(AceiteContrato _aceiteContrato) public {
        filiacao[_aceiteContrato].push(msg.sender);
    }

    function verResultado(AceiteContrato _aceiteContrato)
        public
        returns (address[] memory)
    {}
}
