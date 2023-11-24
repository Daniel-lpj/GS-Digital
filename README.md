# GS - Digital

## Endpoints
- Usuário
    - [Registrar](#registrar-usuário)
    - [Login](#login-usuário)
- Sensor
    - [Cadastrar](#cadastrar-sensor)
    - [Detalhar](#detalhar-sensor)
    - [Listar](#listar-sensor)
    - [Apagar](#apagar-sensor)
    - [Alterar](#alterar-sensor)

---

### Registrar Usuário
`POST` /gs/api/registrar

| campo | tipo | obrigatório | descrição
|-------|------|:-------------:|--
| usuario_id | int | sim | é o id de um usuário
| nome | texto | sim | é o nome do usuário
| email | texto | sim | é o email do usuário
| senha | texto | sim | é a senha do usuário

**Exemplo de corpo do request**

```js
{
    "usuario_id" : 1,
    "nome": "Daniel",
    "email": "teste@teste.com",
    "senha": "teste123"
}
```

**Códigos de Resposta**

| código | descrição 
|-|-
| 201 | registrar cadastrado com sucesso
| 400 | erro na validação dos dados da requisição
| 500 | erro interno do servidor

---

### Login Usuário
`POST` /gs/api/login

| campo | tipo | obrigatório | descrição
|-------|------|:-------------:|--
| email | texto | sim | é o email do usuário
| senha | texto | sim | é a senha do usuário

**Exemplo de corpo da resposta**

```js
{
    "email": "teste@teste.com"
    "senha": "teste123"
}
```

**Códigos de Resposta**

| código | descrição 
|-|-
| 201 | login com sucesso
| 400 | erro na validação dos dados da requisição
| 500 | erro interno do servidor


---


### Cadastrar Sensor
`POST` /gs/api/sensor

| campo | tipo | obrigatório | descrição
|-------|------|:-------------:|--
| sensor_id | int | sim | é o id de um sensor
| data_cadastro | texto | sim | é a data de cadastro do sensor
| data_atualizacao | texto | sim | é a data de atualização do sensor
| botao_ativo | boolean | sim | verifica se o botão estão pressionado ou não

**Exemplo de corpo do request**

```js
{
    "sensor_id" : 1,
    "data_cadastro": "01-01-2023",
    "data_atualizacao": "20-11-2023",
    "botao_ativo": true
}
```

**Códigos de Resposta**

| código | descrição 
|-|-
| 201 | sensor cadastrado com sucesso
| 400 | erro na validação dos dados da requisição

---

### Detalhar Sensor
`GET` /gs/api/sensor/{id}

**Exemplo de corpo da resposta**

```js
{
    "sensor_id" : 1,
    "data_cadastro": "01-01-2023",
    "data_atualizacao": "20-11-2023",
    "botao_ativo": true
}
```

**Códigos de Resposta**

| código | descrição 
|-|-
| 200 | dados retornados no corpo da resposta
| 404 | não foi encontrada sensor com o id informado

---

### Listar Sensor
`GET` /gs/api/sensor

**Exemplo de corpo da resposta**

```js
{
    "sensor_id" : 1,
    "data_cadastro": "01-01-2023",
    "data_atualizacao": "20-11-2023",
    "botao_ativo": true
},
{
    "sensor_id" : 2,
    "data_cadastro": "01-01-2023",
    "data_atualizacao": "20-11-2023",
    "botao_ativo": false
}
```

**Códigos de Resposta**

| código | descrição 
|-|-
| 200 | dados retornados no corpo da resposta
| 404 | não foi encontrada sensor com o id informado

---

### Apagar Sensor
`DELETE` /gs/api/sensor/{id}

**Exemplo de corpo da resposta**

```js
{
    "mensagem": "Sensor apagado com sucesso"
}
```

**Códigos de Resposta**

| código | descrição 
|-|-
| 200 | dados apagados com sucesso
| 404 | não foi encontrada sensor com o id informado

---

### Alterar Sensor
`PUT` /gs/api/sensor/{id}

**Exemplo de corpo da resposta**

```js
{
    "mensagem": "Sensor atualizado com sucesso"
}
```

**Códigos de Resposta**

| código | descrição 
|-|-
| 200 | dados atualizados com sucesso
| 404 | não foi encontrada sensor com o id informado

