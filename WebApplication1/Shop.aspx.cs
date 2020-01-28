using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace WebApplication1
{
    public partial class Item
    {
        public string nazwa;
        public double cena;
    }

    public partial class CartItem
    {
        public Item item;
    }

    public partial class Shop : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList cart = null;
            Hashtable listOfProducts = new Hashtable();
            ArrayList elektryki = new ArrayList();
            elektryki.Add("elektryk1");
            elektryki.Add("elektryk2");
            listOfProducts["elektryki"] = elektryki;

            ArrayList akustyki = new ArrayList();
            akustyki.Add("akustyk1");
            akustyki.Add("akustyk2");
            listOfProducts["akustyki"] = akustyki;
            
            Hashtable products = new Hashtable();
            products["elektryk1"] = (new Item { nazwa = "Ibanez GRG121DX", cena = 854 });
            products["elektryk2"] = (new Item { nazwa = "Fender Squier Bullet", cena = 569 });
           
            products["akustyk1"] = (new Item { nazwa = "Fender FA-115 Dread Pack", cena = 399 });
            products["akustyk2"] = (new Item { nazwa = "Yamaha C-40 BL", cena = 629 });
           

            if (IsPostBack)
            {
                if (System.Web.HttpContext.Current.Session["cart"] == null)
                {
                    System.Web.HttpContext.Current.Session["cart"] = new ArrayList();
                }

                cart = (ArrayList)System.Web.HttpContext.Current.Session["cart"];
                

                for (int i = 0; i < productList.Items.Count; i++)
                {
                    if (productList.Items[i].Selected)
                    {

                        cart.Add(new CartItem { item = (Item)products[productList.Items[i].Value] });
                    }

                }

                productList.Visible = true;
                categoryLabel.Visible = true;
                btnAddCart.Visible = true;
                productList.Items.Clear();
                foreach (String id in (ArrayList)listOfProducts[Request.Params["category"]])
                    productList.Items.Add(new ListItem("<div><p><b>" + ((Item)products[id]).nazwa + "</b> (" + ((Item)products[id]).cena + "zł)</p></div>", id));


               


            }

            cart = (ArrayList)System.Web.HttpContext.Current.Session["cart"];
            int count = 0;
            if (cart != null)
            {
                count = cart.Count;
            }

            cartCount.Text = "W koszyku: " + count;

        }

    }
}