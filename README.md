# smart-contract-blockchain

- Projeto de conclusão de curso da disciplina de Blockchain e Identidades Digitais da Pós Graduação em Inovação Tecnológica da Unifesp SJC

## Objetivo

- Assinatura Digital de contrato de filiação com a possibilidade de mapear a atuação do sindicatos nas empresas, preservando o anonimato dos filiados.
- A partir dessa estrutura é gerada uma identidade digital para cada filiado que no futuro poderá ser integrado em um DApp para votação, assinatura de acordo coletivo, requerimento de documentos, solicitação de seguro, pagamento de contribuição mensal e recisão contratual.

### Estrutura do Contrato de Filiação

```
address colaborador;
string public termos;
string public empresa;
string public dataDeFiliacao;
string public dataDeDesfiliacao;
string nome;
string cpf;
string cargo;
string clt_numero;
string endereco;
```

### O Contrato

- O usuário concorda ou não em se filiar e se concorda em receber email de marketing.
