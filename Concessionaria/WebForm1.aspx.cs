using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RiepilogoPreventivo.Visible = false;
        }
      
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string autoSelezionata = ListAuto.SelectedItem.Text;
            double prezzoAuto= Convert.ToDouble(ListAuto.SelectedValue);
            
                    
                    if (autoSelezionata == "Ford Fiesta Active 1.1 75 CV Titanium")
                    {
                        Image1.ImageUrl = "./images/Ford_Fiesta.jpg";
                    }
                    else if (autoSelezionata == "Audi A1 allstreet 35 TFSI")
                    {
                        Image1.ImageUrl = "./images/Audi_A1.jpg";
                    }
                    else if (autoSelezionata == "BMW X1 xDrive 25e")
                    {
                        Image1.ImageUrl = "./images/Bmw_X1.jpg";
                    }
                    else if (autoSelezionata == "Jeep 1.5 T4 MHEV Renegade Uplands")
                    {
                        Image1.ImageUrl = "./images/jeep.jpg";
                    }
                
                    PrezzoBase.Text= $"<b>{prezzoAuto.ToString("c2")}<b/>";
;

        }

        protected void CalcolaPreventivo_click(object sender, EventArgs e)
        {
            double costoAuto = Convert.ToDouble(ListAuto.SelectedValue);
            double costoOptional = 0;
            double tot = 0;
            int costoGaraniza = Convert.ToInt32(elencoGaranzia.SelectedValue);
            int totAnniGaranzia = costoGaraniza * 120;

            for(int i=0; i< CheckBoxList1.Items.Count; i++) 
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    // andiamo a sommare il costo degli optional selezionati

                    costoOptional += Convert.ToDouble(CheckBoxList1.Items[i].Value);
                }
                         
            
            }
            tot=costoAuto+costoOptional+totAnniGaranzia;
            
            Preventivo.Text = tot.ToString("c2");    
            RiepilogoPreventivo.Visible = true;


        }

        


    }
}