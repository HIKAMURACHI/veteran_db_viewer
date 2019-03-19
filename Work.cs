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
    public partial class Work : Form
    {        
        private MySqlConnection connection;
        public static string connectionString;
        public static string user, password;
        public static string server, database, port, sslM;        

        public Work()
        {
            InitializeComponent();                     
            StreamReader sr = new StreamReader("dbview.txt");                        
            while (!sr.EndOfStream)
            {
                comboBox1.Items.Add(sr.ReadLine());                
            }
            sr.Close();

            comboBox1.SelectedIndex = 0;

            file();
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (comboBox1.SelectedIndex == 0)
            {
                int row_index = dataGridView1.CurrentRow.Index;
                textBox2.Text = dataGridView1.Rows[row_index].Cells[0].Value.ToString();
                textBox1.Text = dataGridView1.Rows[row_index].Cells[1].Value.ToString();
                textBox3.Text = dataGridView1.Rows[row_index].Cells[2].Value.ToString();
                dateTimePicker1.Value = Convert.ToDateTime(dataGridView1.Rows[row_index].Cells[3].Value);
                textBox7.Text = dataGridView1.Rows[row_index].Cells[4].Value.ToString();
                textBox8.Text = dataGridView1.Rows[row_index].Cells[5].Value.ToString();
                textBox9.Text = dataGridView1.Rows[row_index].Cells[6].Value.ToString();
                textBox14.Text = dataGridView1.Rows[row_index].Cells[7].Value.ToString();
                textBox17.Text = dataGridView1.Rows[row_index].Cells[8].Value.ToString();
                textBox15.Text = dataGridView1.Rows[row_index].Cells[9].Value.ToString();
                textBox16.Text = dataGridView1.Rows[row_index].Cells[10].Value.ToString();
                dateTimePicker2.Value = Convert.ToDateTime(dataGridView1.Rows[row_index].Cells[11].Value);
                comboBox2.Text = dataGridView1.Rows[row_index].Cells[12].Value.ToString();
                comboBox3.Text = dataGridView1.Rows[row_index].Cells[13].Value.ToString();
                comboBox4.Text = dataGridView1.Rows[row_index].Cells[14].Value.ToString();
                comboBox5.Text = dataGridView1.Rows[row_index].Cells[15].Value.ToString();
                if (dataGridView1.Rows[row_index].Cells[16].Value.ToString() == "True") checkBox1.Checked = true; else checkBox1.Checked = false;
                if (dataGridView1.Rows[row_index].Cells[17].Value.ToString() == "True") checkBox2.Checked = true; else checkBox2.Checked = false;
                if (dataGridView1.Rows[row_index].Cells[18].Value.ToString() == "True") checkBox3.Checked = true; else checkBox3.Checked = false;
                if (dataGridView1.Rows[row_index].Cells[19].Value.ToString() == "True") checkBox4.Checked = true; else checkBox4.Checked = false;
                textBox11.Text = dataGridView1.Rows[row_index].Cells[20].Value.ToString();
                tabPage.SelectedIndex = 1;
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            conexion();
            viewdb();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            conexion();
            addmain();
            addstat();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            AddPh.connectionString = connectionString;
            AddPh.snils = textBox7.Text;
            AddPh phone = new AddPh();            
            phone.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AddAdd.connectionString = connectionString;
            AddAdd.snils = textBox7.Text;
            AddAdd address = new AddAdd();
            address.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            AddPass.connectionString = connectionString;
            AddPass.snils = textBox7.Text;
            AddPass.inn = textBox8.Text;
            AddPass.bank = textBox9.Text;
            AddPass passport = new AddPass();
            passport.ShowDialog();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            file_chek();
            file();
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
            string query = "Select * from `" + comboBox1.Text + "`;";
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
                    MessageBox.Show(query + " " + connectionString);
                    connection.Close();
                }
            }
        }

        public void addmain() // Qury tab
        {           
            string query = "CALL `add_main` ('" + textBox2.Text + "', '" + textBox1.Text + "', '" + textBox3.Text + "', '" + Convert.ToDateTime(dateTimePicker1.Text).ToString("yyyy-MM-dd") + "', '" + textBox7.Text + "','" + textBox8.Text + "', '" + textBox9.Text + "', '" + Convert.ToDateTime(dateTimePicker2.Text).ToString("yyyy-MM-dd") + "', " + Convert.ToInt32(textBox15.Text) + ", " + Convert.ToInt32(textBox16.Text) + "," + Convert.ToInt32(textBox17.Text) + ", " + Convert.ToInt32(textBox14.Text) + "); ";            
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
                    MessageBox.Show("Информация не добавлена");
                    connection.Close();
                }
            }          
        }

        public void addstat()
        {
            string query = "CALL `add_stat`(" + textBox7.Text + ", " + comboBox4.Text + "   , " + checkBox1.Checked + ", " + checkBox2.Checked + ", '" + comboBox2.Text + "', '" + comboBox3.Text + "', '" + comboBox5.Text + "', " + checkBox3.Checked + ", " + checkBox4.Checked + ", '" + textBox11.Text+ "')";
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
                catch (Exception ex)
                {
                    MessageBox.Show("статус не добавлен");
                    connection.Close();
                }
            }
        }

        private void file()
        {
            string path1 = "status.txt";
            string path2 = "order.txt";
            string path3 = "disablity.txt";
            string path4 = "pay.txt";

            comboBox2.Items.Clear();
            comboBox3.Items.Clear();
            comboBox4.Items.Clear();
            comboBox5.Items.Clear();
            
            if (System.IO.File.Exists(path1))
            {
                StreamReader sr1 = new StreamReader(path1);
                while (!sr1.EndOfStream)
                {
                    comboBox2.Items.Add(sr1.ReadLine());
                }
                sr1.Close();
            }

            if (System.IO.File.Exists(path2))
            {
                StreamReader sr2 = new StreamReader(path2);
                while (!sr2.EndOfStream)
                {
                    comboBox3.Items.Add(sr2.ReadLine());
                }
                sr2.Close();
            }

            if (System.IO.File.Exists(path3))
            {
                StreamReader sr3 = new StreamReader(path3);
                while (!sr3.EndOfStream)
                {
                    comboBox4.Items.Add(sr3.ReadLine());
                }
                sr3.Close();
            }

            if (System.IO.File.Exists(path4))
            {
                StreamReader sr4 = new StreamReader(path4);
                while (!sr4.EndOfStream)
                {
                    comboBox5.Items.Add(sr4.ReadLine());
                }
                sr4.Close();
            }
        }

        private void file_chek()
        {
            string path1 = "status.txt";
            string path2 = "order.txt";
            string path3 = "pay.txt";
            string s;

            if (!File.Exists(path1))
            {
                File.Create(path1).Close();
            }
            else
            {
                StreamReader sr = new StreamReader(path1, Encoding.Default);
                s = sr.ReadToEnd();
                sr.Close();
                if (s.IndexOf(comboBox2.Text) > -1)
                {
                    MessageBox.Show("статус");
                }
                else
                {
                    File.AppendAllText(path1, comboBox2.Text);
                }
            }

            if (!File.Exists(path2))
            {
                File.Create(path2).Close();
            }
            else
            {
                StreamReader sr1 = new StreamReader(path2, Encoding.Default);
                s = sr1.ReadToEnd();
                sr1.Close();
                if (s.IndexOf(comboBox3.Text) > -1)
                {
                    MessageBox.Show("приказ");
                }
                else
                {
                    File.AppendAllText(path2, comboBox3.Text);
                }
            }


            if (!File.Exists(path3))
            {
                File.Create(path3).Close();
            }
            else
            {
                StreamReader sr2 = new StreamReader(path3, Encoding.Default);
                s = sr2.ReadToEnd();
                sr2.Close();
                if (s.IndexOf(comboBox5.Text) > -1)
                {
                    MessageBox.Show("период");
                }
                else
                {
                    File.AppendAllText(path3, comboBox5.Text);
                }
            }
        }
    }
}
