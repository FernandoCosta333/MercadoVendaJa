const botaoCadastrar = document.getElementById("cadastrar");

botaoCadastrar.addEventListener("click", function (e) {

    e.preventDefault();

    // PEGAR VALORES DOS INPUTS
    const nome = document.getElementById("Nome").value;
    const contacto = document.getElementById("contacto").value;
    const email = document.getElementById("email").value;
    const senha = document.getElementById("password").value;
    const confirmarSenha = document.getElementById("confirmarpass").value;
    const data = document.getElementById("Data").value;
    const provincia = document.getElementById("Provincia").value;
    const bi = document.getElementById("BI").value;

    // VALIDAR SENHAS
    if (senha !== confirmarSenha) {
        alert("As senhas não coincidem!");
        return;
    }

    // VALIDAR CAMPOS VAZIOS
    if (
        nome === "" ||
        contacto === "" ||
        email === "" ||
        senha === "" ||
        confirmarSenha === "" ||
        data === "" ||
        provincia === "" ||
        bi === ""
    ) {
        alert("Preencha todos os campos!");
        return;
    }

    // MOSTRAR DADOS NO CONSOLE
    console.log("Nome:", nome);
    console.log("Contacto:", contacto);
    console.log("Email:", email);
    console.log("Senha:", senha);
    console.log("Data:", data);
    console.log("Província:", provincia);
    console.log("BI:", bi);

    alert("Cadastro realizado com sucesso!");

});