const email = document.getElementById("email");
const senha = document.getElementById("senha");
const lembrar = document.getElementById("lembrar");
const botaoLogin = document.getElementById("login");


botaoLogin.addEventListener("click", function (e) {

    e.preventDefault();

    
    const valorEmail = email.value;
    const valorSenha = senha.value;
    const valorLembrar = lembrar.checked;

    
    if (valorEmail === "" || valorSenha === "") {
        alert("Preencha todos os campos!");
        return;
    }

    
    console.log("Email:", valorEmail);
    console.log("Senha:", valorSenha);
    console.log("Lembrar senha:", valorLembrar);

    
    alert("Login realizado com sucesso!");

});