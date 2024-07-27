using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace ProjetoLogin
{
    public partial class tela1 : Form
    {
        public tela1()
        {
            InitializeComponent();
        }

        private void tela1_Load(object sender, EventArgs e)
        {
        // define onde que a tela irá iniciar
            painel.Location = new Point(this.Width / 2 - 218, this.Height / 2 - 198);
            // define a cor do botao de passar o mouse em cima
            Acessar.FlatAppearance.MouseOverBackColor = Color.FromArgb(252, 239, 164);
            // define a cor do botao de clicado
            Acessar.FlatAppearance.MouseDownBackColor = Color.FromArgb(216, 200, 119);
        }

        private void Acessar_Click(object sender, EventArgs e)
        {
            if (caixaUser.Text == "" || caixaSenha.Text == "")
            {
                MessageBox.Show("Preencha o usuário e a senha");
                return;
            }

            string matricula = caixaUser.Text;
            string senha = caixaSenha.Text;

            // string de conexão do banco de dados( chave do banco de dados/endereço).
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\pedro\\source\\repos\\ProjetoLogin\\ProjetoLogin\\Usuarios.mdf;Integrated Security=True";
            // abre a conexão com o banco de dados
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // recebe os valores digitados pelo usuario e adiciona no banco de dados
                string query = "INSERT INTO informacaoUsuario (matricula, senha) VALUES (@Matricula, @Senha)";
                // inicia o comando para adicionar as informações do usuario e adiciona matricula e senha 
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Matricula", matricula);
                    command.Parameters.AddWithValue("@Senha", senha);
                // verifica se alguma linha foi afetada após enviar os dados
                    int rowsAffected = command.ExecuteNonQuery();
                // se alguma linha for afetada for maior que 0 ou seja modificada/adicionada, deve ser bem sucedido
                    if (rowsAffected > 0)
                    {
                        Console.WriteLine("Dados armazenados no banco de dados com sucesso.");
                    }
                    else
                    {
                        Console.WriteLine("Falha ao armazenar dados no banco de dados.");
                    }
                }
            }
        }






    }
}
