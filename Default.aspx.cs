using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=APOORVA;Initial Catalog=students;User ID=sa;Password=12345");


    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        Bind();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {

        if (txtno.Text != "" && txtname.Text != "" && txtaddress.Text != "")
        {
            string Ins;

            Ins = "insert into dbo.Test values ('" + txtno.Text + "','" + txtname.Text + "','" + txtaddress.Text + "')";
            SqlCommand cmd = new SqlCommand(Ins, cn);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Data Save Successfully";
            Bind();
        }
        else
        {
            lblmsg.Text = "Data Must Be There";
        }
        
        
       
    }

    public void Bind()
    {
        string str;
        str = "select * from dbo.Test";
        DataSet ds = new DataSet();
        SqlDataAdapter adpt = new SqlDataAdapter(str, cn);
        adpt.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtno.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtaddress.Text = GridView1.SelectedRow.Cells[3].Text;
        txtno.Enabled = false;

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {

        if (txtno.Text != "" && txtname.Text != "" && txtaddress.Text != "")
        {
            string Ins;

            Ins = "update dbo.Test set name= '" + txtname.Text + "',address ='" + txtaddress.Text + "' where no='" + txtno.Text + "'";
            SqlCommand cmd = new SqlCommand(Ins, cn);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Data Updated Successfully";
            Bind();
        }
        else
        {
            lblmsg.Text = "Data Must Be There";
        }
    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        string Ins;

        Ins = "delete from dbo.Test where no='" + txtno.Text + "'";
        SqlCommand cmd = new SqlCommand(Ins, cn);
        cmd.ExecuteNonQuery();
        lblmsg.Text = "Data Deleted Successfully";
        Bind();
    }
}