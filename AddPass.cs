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


namespace veteran_org
{
    public partial class AddPass : Form
    {
        private MySqlConnection connection;
        public static string connectionString;        
        public static string snils, inn, bank;        

        public AddPass()
        {
            InitializeComponent();
        }

        private void conexion() // db connect
        {        
            connection = new MySqlConnection(connectionString);

            try
            {
                connection.Open();
            }
            catch (MySqlException)
            {
                MessageBox.Show(connectionString);
                connection.Close();
            }
        }

        private void viewdb() // Qury tab
        {            
            string query = "CALL `view_pass` ('" + snils + "');";            
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    using (MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn))
                    {
                        DataSet ds = new DataSet();
                        adapter.Fill(ds);
                        dataGridView1.DataSource = ds.Tables[0];
                    }                    
                    connection.Close();
                }
                catch
                {
                    MessageBox.Show(query);
                    connection.Close();
                }
            }
        }

        private void adddb()
        {
            string query = "CALL `add_pass`('" + inn + "', '" + bank + "', " + Convert.ToInt32(textBox1.Text) + ", " + Convert.ToInt32(textBox2.Text) + ", '" + Convert.ToDateTime(dateTimePicker1.Text).ToString("yyyy-MM-dd") + "', '" + textBox3.Text + "');";
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    using (MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn))
                    {
                        DataSet ds = new DataSet();
                        adapter.Fill(ds);
                    }
                    connection.Close();
                }
                catch
                {
                    MessageBox.Show(query);
                    connection.Close();
                }
            }
        }

        private void AddPass_Load(object sender, EventArgs e)
        {
            conexion();
            viewdb();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            adddb();
            viewdb();
        }
    }
}
