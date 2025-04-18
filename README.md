
# 📚 Biblioteca Pública

Aplicação web para gerenciamento de livros, usuários e empréstimos em uma biblioteca pública. Desenvolvido com Ruby on Rails 8 e PostgreSQL, com autenticação via Devise e cobertura de testes com RSpec.

---

## ✅ Pré-requisitos

Antes de começar, certifique-se de ter o seguinte instalado na sua máquina:

- Ruby 3.3.0+ (use \`rbenv\` ou \`rvm\` para gerenciar versões)
- Rails 8.0.2+
- PostgreSQL 12+
- Node.js e Yarn ou npm
- Git
- Bundler (\`gem install bundler\`)

---

# 🚀 Instalação

## Clone o repositório

### bash
### git clone https://github.com/JIgor-Silva/bookLend

### Instale as dependências

\`\`\`bash
bundle install
\`\`\`

Instale os pacotes JS/CSS:

\`\`\`bash
bin/dev # ou use:
npm install && npm run build
\`\`\`

### Configure o banco de dados

Edite o arquivo \`.env\` (ou \`config/database.yml\`) com suas credenciais PostgreSQL. Exemplo:

\`\`\`env
DB_USERNAME=seu_usuario
DB_PASSWORD=sua_senha
\`\`\`

Crie o banco:

\`\`\`bash
bin/rails db:create db:migrate
\`\`\`

Se necessário, rode os seeds:

\`\`\`bash
bin/rails db:seed
\`\`\`

---

## ▶️ Rodando a aplicação

\`\`\`bash
bin/dev
\`\`\`

Ou apenas:

\`\`\`bash
bin/rails server
\`\`\`

Acesse: [http://localhost:3000](http://localhost:3000)

---

## 🧪 Rodando os testes

Execute os testes com:

\`\`\`bash
bundle exec rspec
\`\`\`

Gere o relatório de cobertura com:

\`\`\`bash
COVERAGE=true bundle exec rspec
\`\`\`

---

## 🐳 Docker (opcional)

Para rodar com Docker (futuramente com Kamal):

\`\`\`bash
docker build -t biblioteca_publica .
docker run -p 3000:3000 biblioteca_publica
\`\`\`

---

## 🌱 Criando sua branch

1. Certifique-se de estar na branch principal:

\`\`\`bash
git checkout main
git pull
\`\`\`

2. Crie uma nova branch com a convenção:

\`\`\`
git checkout -b tipo(metodo-modelo)-local-da-feature-TASK-00
\`\`\`

Exemplos:
- \`feat(create-Livro)-model-TASK-01\`
- \`fix(update-Emprestimo)-controller-TASK-02\`

---

## ✅ Fazendo commits

Utilize mensagens claras e padronizadas:

\`\`\`bash
git commit -m "feat(api-create-LivroService)-TASK-03"
\`\`\`

---

## 🚀 Subindo sua branch

\`\`\`bash
git push origin nome-da-sua-branch
\`\`\`

Abra um **Pull Request** no GitHub!

---

## 🐞 Corrigindo bugs

1. Atualize sua branch \`main\`:

\`\`\`bash
git checkout main
git pull
\`\`\`

2. Crie a branch de correção com prefixo \`fix\`:

\`\`\`bash
git checkout -b fix(nome-da-feature)-TASK-0X
\`\`\`

3. Faça as alterações e siga o fluxo de commit/push/PR normalmente.

---

## 🤝 Contribuindo

1. Faça um fork do projeto.
2. Crie uma branch (\`git checkout -b minha-feature\`)
3. Commit suas mudanças (\`git commit -m 'feat: minha nova feature'\`)
4. Push para o seu fork (\`git push origin minha-feature\`)
5. Abra um Pull Request.

---

## 📚 Tecnologias e Ferramentas

- Ruby on Rails 8
- PostgreSQL
- Devise (autenticação)
- RSpec, FactoryBot, Faker (testes)
- Tailwind CSS (via cssbundling)
- Rubocop + SimpleCov
- Git e GitHub
EOF
