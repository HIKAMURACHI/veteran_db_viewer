﻿using System;
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
    public partial class AddPh : Form
    {
        private MySqlConnection connection;
        public static string connectionString;
        public static string snils;

        public AddPh()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            adddb();
            viewdb();
        }

        private void AddPh_Load(object sender, EventArgs e)
        {
            conexion();
            viewdb();
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
            string query = "CALL `view_ph` ('" + snils + "');";
            //string query = "CALL `view_pass` ('Петр', 'Карнишов', 'Сергеевич');";
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
            string query = "CALL `add_phone`('" + textBox1.Text + "', '" + snils + "');";
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

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
