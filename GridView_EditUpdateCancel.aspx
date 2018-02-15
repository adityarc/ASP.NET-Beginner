//Customer1.cs
public void UpdateGrid(string city,string email,string username)
        {
            conObj = new SqlConnection(ConfigurationManager.ConnectionStrings["CGICon"].ConnectionString);
            cmdObj = new SqlCommand("Update CustomerDetails SET City=@City,EmailID=@EmailID Where Username=@Username", conObj);
            cmdObj.Parameters.AddWithValue("@City", city);
            cmdObj.Parameters.AddWithValue("@EmailID", email);
            cmdObj.Parameters.AddWithValue("@Username", username);
            if (conObj.State == ConnectionState.Closed)
                conObj.Open();
            cmdObj.ExecuteNonQuery();
            conObj.Close();
        }

//ASPX
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" >
            <Columns>
                <asp:TemplateField HeaderText="Full Name">
                    <ItemTemplate>
                        <asp:Label Text='<%#Eval("CustomerName") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <ItemTemplate>
                        <asp:Label Text='<%#Eval("City") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlCity" runat="server">
                            <asp:ListItem Text="--Select--" />
                            <asp:ListItem Text="Chennai" />
                            <asp:ListItem Text="Bengaluru" />
                            <asp:ListItem Text="Kolkata" />
                            <asp:ListItem Text="Delhi" />
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email ID">
                    <ItemTemplate>
                        <asp:Label Text='<%#Eval("EmailID") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmailID" Text='<%#Eval("EmailID") %>' runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Username">
                    <ItemTemplate>
                        <asp:Label ID="lblUsername" Text='<%#Eval("Username") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button Text="Edit" CommandName="Edit" ID="btnEdit" runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button Text="Update" CommandName="Update" ID="btnUpdate" runat="server" />
                        <asp:Button Text="Cancel" CommandName="Cancel" ID="btnCancel" runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>


//ASPX.CS
Customer1 obj = new Customer1(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GridView1.DataSource = obj.BindGrid();
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = obj.BindGrid();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //DropDownList ddl1 = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("ddlCity");
            //string city1 = ddl1.SelectedItem.ToString();
            string city = (GridView1.Rows[e.RowIndex].FindControl("ddlCity") as DropDownList).SelectedItem.ToString();
            string email = (GridView1.Rows[e.RowIndex].FindControl("txtEmailID") as TextBox).Text;
            string user = (GridView1.Rows[e.RowIndex].FindControl("lblUsername") as Label).Text;
            obj.UpdateGrid(city, email, user);

            GridView1.EditIndex = -1;
            GridView1.DataSource = obj.BindGrid();
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = obj.BindGrid();
            GridView1.DataBind();
        }
