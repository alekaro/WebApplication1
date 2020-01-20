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
        public string name;
        public double price;
        public string image;
    }

    public partial class CartItem
    {
        public int quantity;
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
            products["elektryk1"] = (new Item { name = "Ibanez GRG121DX", price = 854, image = "elektryki/wand1.jpg" });
            products["elektryk2"] = (new Item { name = "Fender Squier Bullet", price = 569, image = "elektryki/wand2.png" });
           
            products["akustyk1"] = (new Item { name = "Fender FA-115 Dread Pack", price = 399, image = "akustyki/broom1.jpg" });
            products["akustyk2"] = (new Item { name = "Yamaha C-40 BL", price = 629, image = "akustyki/broom2.jpg" });
           

            if (IsPostBack)
            {
                if (System.Web.HttpContext.Current.Session["cart"] == null)
                {
                    System.Web.HttpContext.Current.Session["cart"] = new ArrayList();
                }

                cart = (ArrayList)System.Web.HttpContext.Current.Session["cart"];
                //foreach (CartItem citem in cart)
                //{
                //    Message.Text += "w koszyku";
                //}

                for (int i = 0; i < productList.Items.Count; i++)
                {
                    if (productList.Items[i].Selected)
                    {
                        //Message.Text += productList.Items[i].Value + "<br />";

                        cart.Add(new CartItem { quantity = 1, item = (Item)products[productList.Items[i].Value] });
                    }

                }

                productList.Visible = true;
                categoryLabel.Visible = true;
                btnAddCart.Visible = true;
                productList.Items.Clear();
                foreach (String id in (ArrayList)listOfProducts[Request.Params["category"]])
                    productList.Items.Add(new ListItem("<div><img class=\"small\" src=\"Images/" + ((Item)products[id]).image + "\" /><p><b>" + ((Item)products[id]).name + "</b> (" + ((Item)products[id]).price + "zł)</p></div>", id));


                //((ArrayList)Session["cart"]).Add(Item);


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