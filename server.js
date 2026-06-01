const express = require('express');
const path =  require('path');
const cors = require('cors');
const db= require('./api/db');
const app = express();

app.use(express.static(path.join(__dirname)));

console.log('Tipo do app: ',typeof app); 
console.log('Tem listen?', typeof app.listen);


app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended: true}));

// Cria a rota de teste
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname,'index.html'));
 res.json({msg: 'API VendaJa rodando !'});   
});
// Lista produtos com json pra ficar mais bonitinho
app.get('/produtos', async (req,res) =>{
    console.log('Rota /produtos FOI CHAMADA!');
    try{
        const statusFiltro = req.query.status || 'disponível'; // pega da URL:/produtos? status=pausado
const sql = `
select p.id_p, p.titulo, p.descricao, p.cor, p.preco, p.status,
c.nome as categoria_nome,
u.nome as vendedor_nome
from produtos p
join produtos c on p.id_categoria = c.id_categoria
join usuarios u ON p.id_vendedor = u.id_u
where p.status =?
`;

        console.log('Vai fazer query no banco...');

       const [produtos] = await db.query('SELECT * FROM produtos');
       console.log('Deu certo,produtos:', produtos);
        res.json(produtos);

    } catch(error){
        console.log('ERRO COMPLETO:',error);

        console.log('TIPO DO ERRO COMPLETO:',typeof error);
        res.status(500).json({ erro: String(error), stack: error.stack});
    };
 });
    // cadastrar produto novo
    app.post('/produtos', async (req, res) => {
        try{
const { id_vendedor, id_categoria, titulo, descricao, preco, status} = req.body;
const [result] = await db.query(
    'INSERT INTO produtos (id_vendedor, id_categoria, titulo, descricao, preco, status) VALUES (?,?,?,?,?,?)',
    [id_vendedor, id_categoria, titulo, descricao, preco, status]
    );
res.status(201).json({msg: 'Produto criado !', id: result.insertId });

        } catch(error) {
            console.log('ERRO DETALHADO:',error);
            console.log('ERRO COMPLETO:', error.stack);
            
    
            res.status(500).json({ erro: error.toString(error)});
        }
});
app.listen(3000, () => {
    console.log('Servidor rodando na porta 3000');
});
