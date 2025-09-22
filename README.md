# Projeto prático final: Sistema de biblioteca universitária
## Funcionalidade Geral do Sistema
1. Catalogação
    - Autores, editoras, gêneros
    - Livros são registrados assiandos ao autor, à editora e ao gênero adequado

2. Inventáro físico
   - Cada livro recebe várias cópias; cópias são alocadas a diferentes filiais da biblioteca.
   - O campo 'status' em book_copies indica se a cópia está dispinível, emprestada, reservada ou perdida
     
3.  Empréstimos
     - Um membro solicita o emrpréstimo de uma cópia. insere-se um registro em loans com data de empréstimo e prazo de devolução.
     - Uma trigger automática passa o 'status' da cópia para "loaned" após o INSERT em loans.
     - Na devolução, a data 'return_date' é preenchida e o status da cópia volta para "available".

4. Resesrvas
    -  Se todas as cópias de um livro estiverem emprestadas, o membro pode criar uma reservation.
    -  Quando uma cópia é devolvida, um processo (por trigger ou procedimento) pode "cumprir" a reserva, alterando seu 'status' para "fulfilled"
  e bloqueando a cópia até o membro retirá-la.

5. Gestão  de filiais
    - Bibliotecas associadas a cada filial gerenciam operações locais (cadastro de novos membros, controle de estoque, relatórios).

6. Consultas e relatórios
    - É possível extrair dados como livros mais emprestados, membros com reservas ativas, histórico de empréstimos atrasados etc., usando JOINs, CTEs e window functions.

7. Segurança e Backup
    - Perfis de acesso (roles) garantem que só usuários com permissões gravem ou apagem dados críticos.
    - Rotinas de backup ('pg_dump') e restore ('pg_restore') protegem contra perda de dados.
