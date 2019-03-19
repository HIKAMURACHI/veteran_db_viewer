using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.IO;

namespace veteran_org
{
    public partial class Login : Form
    {          
        private MySqlConnection connection;        
        private string user;
        private string password;        
        private string connectionString;
        private string server, database, port, sslM;

        IEnumerable<string> connectdb;

        public Login()
        {
            InitializeComponent();
        }        

        private void button2_Click(object sender, EventArgs e)
        {
            conexion();   
        }

        private void conexion() // db connect
        {
            bool chek = false;

            connectdb = File.ReadLines("connect.txt");

            user = textBox1.Text;
            password = textBox2.Text;
            server = connectdb.ElementAt(0);
            database = connectdb.ElementAt(1);
            port = connectdb.ElementAt(2);
            sslM = connectdb.ElementAt(3);           

            connectionString = String.Format("server={0};port={1};user={2}; password={3}; database={4}; SslMode={5}", server, port, user, password, database, sslM);

            connection = new MySqlConnection(connectionString);

            try
            {
                connection.Open();
                connection.Close();
                chek = false;
            }
            catch (MySqlException)
            {
                MessageBox.Show(connectionString);
                chek = true;
            }
            finally
            {
                if (!chek)
                {                    
                    Work.connectionString = connectionString;
                    this.Hide();
                    Work work = new Work();
                    work.ShowDialog();
                    this.Close();
                }
            }
        }
    }
}
