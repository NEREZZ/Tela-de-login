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
            painel.Location = new Point(this.Width / 2 - 218, this.Height / 2 - 198);
            Acessar.FlatAppearance.MouseOverBackColor = Color.FromArgb(252, 239, 164);
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

            // Substitua "sua_cadeia_conexao" pela string de conexão real do seu banco de dados.
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\pedro\\source\\repos\\ProjetoLogin\\ProjetoLogin\\Usuarios.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Substitua "sua_tabela" pelo nome real da sua tabela no banco de dados.
                string query = "INSERT INTO informacaoUsuario (matricula, senha) VALUES (@Matricula, @Senha)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Matricula", matricula);
                    command.Parameters.AddWithValue("@Senha", senha);

                    int rowsAffected = command.ExecuteNonQuery();

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
