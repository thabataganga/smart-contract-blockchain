// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.7.4;

contract FiliacaoSindical {
    // Campos publicos
    string public termos;
    string public empresa;
    string public dataDeAssinatura;
    address public sindicato; // Endereco de quem criou

    // Campos privados
    // O endereço de quem assina já esta implicito
    string nome;
    string cpf;
    string cargo;
    string clt_numero;
    string endereco;

    // Aeita ou nao assinar o contrato
    enum AceiteContrato {
        Sim,
        Nao
    }

    enum ReceberEmail {
        Sim,
        Nao
    }

    // mapeia o aceite
    mapping(AceiteContrato => address[]) filiacao;
    mapping(ReceberEmail => address[]) email;
    mapping(address => bool) filiados;

    // Guarda o estado
    constructor(string memory _termos) {
        sindicato = msg.sender;
        termos = _termos;
    }

    /// Definir o comportamento do contrato

    //  Faz a assinatura
    function assinarFiliacao(AceiteContrato _aceiteContrato) public {
        require(!filiados[msg.sender], "Ja assinou o contrato de filiacao");
        filiacao[_aceiteContrato].push(msg.sender);
        filiados[msg.sender] = true;
    }

    function aceitarEmail(ReceberEmail _receberEmail) public {
        require(filiados[msg.sender], "Ainda nao assinou a filiacao");
        email[_receberEmail].push(msg.sender);
        filiados[msg.sender] = true;
    }

    // Verifica as assinaturas
    function verAssinatura(AceiteContrato _aceiteContrato)
        public
        view
        returns (address[] memory)
    {
        return (filiacao[_aceiteContrato]);
    }

    function verEmail(ReceberEmail _receberEmail)
        public
        view
        returns (address[] memory)
    {
        return (email[_receberEmail]);
    }
}
