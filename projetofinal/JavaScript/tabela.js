
  // Função para salvar no localStorage e atualizar a tabela
  function atualizarTabela() {
    const dados = JSON.parse(localStorage.getItem('cadastros')) || [];
    const tbody = document.querySelector('#tabela tbody');
    tbody.innerHTML = '';
    dados.forEach((item, index) => {
      const tr = document.createElement('tr');
      tr.innerHTML = `<table>
        <td>${item.nome}</td>
        <td>${item.email}</td>
        <td>${item.endereco}</td>
        <td>${item.telefone}</td>
        <td>${item.senha}</td>
        <td>
          <button onclick="editarCadastro(${index})">Editar</button>
          <button onclick="excluirCadastro(${index})">Excluir</button>
        </td></table>
      `;
      tbody.appendChild(tr);
    });
  }

  // Função para editar
  function editarCadastro(index) {
    const dados = JSON.parse(localStorage.getItem('cadastros')) || [];
    const item = dados[index];
    document.getElementById('nome').value = item.nome;
    document.getElementById('email').value = item.email;
    document.getElementById('endereco').value = item.endereco;
    document.getElementById('telefone').value = item.telefone;
     document.getElementById('senha').value = item.senha;
    dados.splice(index, 1);
    localStorage.setItem('cadastros', JSON.stringify(dados));
    atualizarTabela();
  }

  // Função para excluir
  function excluirCadastro(index) {
    const dados = JSON.parse(localStorage.getItem('cadastros')) || [];
    dados.splice(index, 1);
    localStorage.setItem('cadastros', JSON.stringify(dados));
    atualizarTabela();
  }

  // Enviar o formulário
  document.getElementById('cadastroForm').addEventListener('submit', function(event) {
    event.preventDefault();
    const nome = document.getElementById('nome').value;
    const email = document.getElementById('email').value;
     const endereco = document.getElementById('endereco').value;
      const telefone = document.getElementById('telefone').value;
      const senha = document.getElementById('senha').value;
    const dados = JSON.parse(localStorage.getItem('cadastros')) || [];
    dados.push({ nome, email, endereco, telefone, senha });
    localStorage.setItem('cadastros', JSON.stringify(dados));
    atualizarTabela();
    event.target.reset();
  });

  // Inicializa a tabela quando a página carrega
  window.onload = atualizarTabela;

