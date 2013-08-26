using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace randomcolor_vcs
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            int red = rnd.Next(255);
            int green = rnd.Next(255);
            int blue = rnd.Next(255);

            label1.Text = red.ToString("X2") + green.ToString("X2") + blue.ToString("X2");
            groupBox1.BackColor = Color.FromArgb(red, green, blue);
        }
        
        private String stringToHex(String input)
        {
            String temp = "";
            foreach (char letter in input.ToCharArray())
            {
                temp += String.Format("{0:X}", Convert.ToInt32(letter));
            }
            return temp.TrimEnd(' ');
        }
    }
}
