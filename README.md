
# 📚 Biblioteca Pública Online
Sistema de aluguel de livros desenvolvido em Ruby on Rails 8. Os usuários podem consultar, cadastrar e alugar livros digitalmente. Ideal para bibliotecas públicas e centros educacionais.


## Stack utilizada


**Back-end:**
- **Ruby 3.2+ com `rbenv` ou `rvm`**
- **PostgreSQL**
- **Node.js + npm**
- **Bundler (`gem install bundler`)**
- **Git**
**Front-end:**
- **Rails 8.0+**
- **TailwindCSS**
## Instalação

### Clonar

```bash
    git clone https://github.com/JIgor-Silva/bookLend
    cd <!-- IMPLEMENTAR AQUI: NOME_DO_REPOSITORIO -->
```

## Instale dependências   
```bash
   bundle install
   npm install
```

# Prepare o banco de dados
modifique 
```bash
  name  
  passaword
```
no arquivo database.yml, apos isso abra o bash e digite o comando    
```bash
 bin/rails db:create db:migrate db:seed

```                            


# Inicie o servidor com hot reload e Tailwind

```bash
 
  bin/dev
```
## Payload:

```bash
 {
  "titulo": "Dom Casmurro",
  "autor": "Machado de Assis",
  "ano_publicacao": 1899,
  "descricao": "Clássico da literatura brasileira"
}

```

## Testes
```bash
 
  RAILS_ENV=test bundle exec rspec

```

## Funcionalidades

- Preview em tempo real
- Reponsivo
- Implementação do modo de configuração por email




## 🤝 Contribuindo
Contribuições são sempre bem-vindas!

Por favor, siga o `código de conduta` desse projeto.

    Fork este repositório

    Crie sua branch (git checkout -b feat/minha-feature-TASK-001)

    Commit (git commit -m "feat(aluguel-controller-TASK-001): adiciona aluguel")

    Push (git push origin feat/minha-feature-TASK-001)

    Abra um Pull Request na branch main
