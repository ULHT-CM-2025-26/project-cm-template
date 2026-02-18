# cmproject

A new Flutter project.

## Pressupostos para os testes

Nota: Existem testes que dependem de outros para serem passarem, nestes casos, será apresentada uma mensagem com a indicação dos testes que estão a falhar. Esta dependencia pode ser removida de duas formas:
1. Diretamente no teste, passsando o argumento `skipCheckDependsOn` com o valor `true` na funcão `checkDependsOn`
2. Na implementação da função `checkDependsOn`, o valor por omissão do argumento `skipCheckDependsOn` para `true`

* Existe a classe `Station` com os atributos ....
* Existe a classe `MetroRepository` com a API .... Construtor vazio, não inicializa logo com estação alguma
* O `main()` deve pré-inicializar o `MetroRepository` com 3 estações (podem inventar os id's e dados, pois os testes vão inicializar de outra forma)
* O Provider injeta instância de `MetroRepository`
* Os items da `NavigationBar` têm as seguintes keys:
    * `dashboard-bottom-bar-item`
    * `list-bottom-bar-item`
    * `map-bottom-bar-item`
    * `incidents-report-bottom-bar-item`
* A `ListView` onde são apresentadas as estações tem a key `list-view`
* Os campos do formulário para inserir os incidentes têm que ser do tipo `TestableFormField` com as seguintes keys:
    * `incident-station-selection-field`
    * `incident-type-selection-field`
    * `incident-rating-field`
    * `incident-datetime-field`
    * `incident-notes-field`
    * E um Button `incident-form-submit-button`
* Todos os campos do formulário são de preenchimento obrigatório, excepto o campo `incident-notes-field`
* Caso não preenchido, ao submeter o formulário, deverá ser apresentadas indicações de erro para cada campo
* O campo `incident-rating-field` deve aceitar apenas números inteiros entre 1 e 5, caso contrário, deve apresentar uma indicação de erro
    * 'Preencha a estação'
    * 'Preecha o tipo de incidente'
    * 'Preencha a avaliação'
    * 'Preencha a data e hora'
* Ainda em caso de erro, o formulário deverá aprenser uma `Snackbar` com uma mensagem sugestiva para o utilizador corrigir os erros