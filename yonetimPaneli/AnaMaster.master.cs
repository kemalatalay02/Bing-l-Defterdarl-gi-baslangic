using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AnaMaster : System.Web.UI.MasterPage
{
    public static int sayac = 0;

    public void slider()
    {

        //if (sayac == 1)
        //{
        //    Label1.Text = "<img src='resimler/1.jpg' width='960' height='400'/>";
        //}
        if (sayac == 2)
        {
            Label1.Text = "<img src='resimler/2.jpg' width='960' height='400'/>";
        }
        //else if (sayac == 3)
        //{
        //    Label1.Text = "<img src='resimler/3.jpg' width='960' height='400'/>";
        //}
        //else if (sayac == 4)
        //{
        //    Label1.Text = "<img src='resimler/4.jpg' width='960' height='400'/>";
        //}
        else if (sayac == 5)
        {
            Label1.Text = "<img src='resimler/5.png' width='960' height='400'/>";
        }
        else if (sayac == 6)
        {
            Label1.Text = "<img src='resimler/6.png' width='960' height='400'/>";
        }
        //..........................................
        else if (sayac == 7)
        {
            Label1.Text = "<img src='resimler/7.jpg' width='960' height='400'/>";
        }
        else if (sayac == 8)
        {
            Label1.Text = "<img src='resimler/8.jpg' width='960' height='400'/>";
        }
        else if (sayac == 9)
        {
            Label1.Text = "<img src='resimler/9.jpg' width='960' height='400'/>";
        }
        else if (sayac == 10)
        {
            Label1.Text = "<img src='resimler/10.jpg' width='960' height='400'/>";
        }
        else if (sayac == 11)
        {
            Label1.Text = "<img src='resimler/11.jpg' width='960' height='400'/>";
        }
        else if (sayac == 12)
        {
            Label1.Text = "<img src='resimler/12.jpg' width='960' height='400'/>";
        }
        else if (sayac == 13)
        {
            Label1.Text = "<img src='resimler/13.jpg' width='960' height='400'/>";
        }
        else if (sayac ==14)
        {
            Label1.Text = "<img src='resimler/14.jpg' width='960' height='400'/>";
        }
        else if (sayac == 15)
        {
            Label1.Text = "<img src='resimler/15.jpg' width='960' height='400'/>";
        }
        else if (sayac == 16)
        {
            Label1.Text = "<img src='resimler/16.png' width='960' height='400'/>";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        sayac = sayac + 1;
        if (sayac == 16)
        {
            sayac = 1;
        }
        slider();

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {//ileri
        slider();
        sayac = sayac + 1;
        if (sayac == 16)
        {
            sayac = 1;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // geri
        slider();
        sayac = sayac - 1;
        if (sayac == 0)
        {
            sayac = 16;
        }
    }
}
