<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="WebApplication2.CustomerDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Details Form</title>
    <link href="Styles/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 202px;
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">
        <asp:validationsummary ForeColor="Red" runat="server"></asp:validationsummary>    
     <div style="float:right;height:1250px;width:500px;background-color:#cfbcbc;border-radius: 10px 10px 10px 10px">
         <table style="align-content:center; border-color:black;margin:25px 25px 25px 25px; padding:15px 15px 15px 15px">
             <%--<tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="lblCustID" runat="server" Text="Customer ID"></asp:Label>
                 </td>
              </tr>
             
              <tr>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtCustomerID" runat="server" placeholder ="Ex. C001 " />
                 </td>
             </tr>
             <tr>
                 <td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="rfvCID" runat ="server" ControlToValidate="txtCustomerID" ForeColor="Red" ErrorMessage="Field cannot be blank." />
                 </td>
             </tr>
             --%>
             <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="LblCustName" runat="server" Text="Customer Name"></asp:Label>
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtCustomerName" placeholder="You Full Name" runat="server" />
                 </td>
             </tr>
             <tr>
                 <td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="rfvCN" runat ="server" ControlToValidate="txtCustomerName" ForeColor="Red" ErrorMessage="Field cannot be blank." />
                 </td>
             </tr>
              <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="txtLocation" runat="server" Text="Location"></asp:Label>
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style1">
                     <asp:DropDownList ID="DrpCity" runat="server">
                         <asp:ListItem Value="0" Text="--Select--" />
                         <asp:ListItem Value="1" Text="Bangalore" />
                         <asp:ListItem Value="2" Text="Chennai" />
                         <asp:ListItem Value="3" Text="Kolkata" />
                         <asp:ListItem Value="4" Text="Mysore" />
                     </asp:DropDownList>
                 </td>
             </tr>
             <tr><td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="rfvCity" runat ="server" ControlToValidate="DrpCity" ForeColor="Red" ErrorMessage="Field cannot be blank." />
             </td></tr>
             <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="lblPhone" runat="server" Text="Mobile No."></asp:Label>
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:TextBox ID="txtPhone" placeholder="Ex 9000000000" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr><td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="rfvPhone" runat ="server" ControlToValidate="txtPhone" ForeColor="Red" ErrorMessage="Field cannot be blank." />
             </td></tr>
             <tr>
                 <td colspan="2" class="auto-style1">
                     <asp:RegularExpressionValidator Text="*" ID ="RegPhn" runat="server" ControlToValidate="txtPhone"  ErrorMessage="Phone Number not valid." ForeColor="Red" ValidationExpression="\d{10}" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="lblAddress" runat="server" Text="Address"></asp:Label>
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtAddress" placeholder="Your Address" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr><td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator ID="rfvAddress" Text="*" runat ="server" ControlToValidate="txtAddress" ForeColor="Red" ErrorMessage="Field cannot be blank." />
             </td></tr>
              <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="lblEMail" runat="server" Text="Email Address"></asp:Label>
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtEmail" placeholder="abc@example.com" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr><td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="rfvEmail" runat ="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Field cannot be blank." />
                     
             </td></tr>
             <tr>
                 <td colspan="2" class="auto-style1">
                     <asp:RegularExpressionValidator Text="*" ID ="regEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ErrorMessage="Email not valid." ForeColor="Red" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="lblPincode" runat="server" Text="Pincode"></asp:Label>
                 </td>
              </tr>
                
              <tr>
                 <td class="auto-style1">
                <asp:TextBox ID="txtPincode" placeholder="Pincode" runat="server"></asp:TextBox>     
                 </td>
             </tr>
             <tr>
                 <td colspan="2" class="auto-style1">
                     <asp:RegularExpressionValidator Text="*" ID ="RegPincode" runat="server" ControlToValidate="txtPincode"  ErrorMessage="Pincode not valid." ForeColor="Red" ValidationExpression="\d{6}" />
                 </td>
             </tr>
             <tr><td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="rfvPincode" runat ="server" ControlToValidate="txtPincode" ForeColor="Red" ErrorMessage="Field cannot be blank." />
             </td></tr>
             <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="lblRegDate" runat="server" Text="Registration Date"></asp:Label>
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtRegDate" placeholder="DD-MM-YYYY" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr><td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="rfvRegDate" runat ="server" ControlToValidate="txtRegDate" ForeColor="Red" ErrorMessage="Field cannot be blank." />
             </td></tr>
              <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="lblUsername" runat="server" Text="Username"></asp:Label>
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtUsername" placeholder="Enter Username" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr><td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="rfvUsername" runat ="server" ControlToValidate="txtUsername" ForeColor="Red" ErrorMessage="Username cannot be blank." />
             </td></tr>
             <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="lblPswd" runat="server" Text="Password"></asp:Label>
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtPassword" textmode = "Password" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr><td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="RfvPswd" runat ="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Password cannot be blank." />
             </td></tr>
             <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Label CssClass="common" ID="LblCnfrmPswd" runat="server" Text="Confirm Password"></asp:Label>
                 </td>
             </tr>
             
             <tr>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtConfirmPassword" textmode = "Password" runat="server"></asp:TextBox>
                 </td>
             </tr>
             
             <tr><td colspan="2" class="auto-style1">
                     <asp:RequiredFieldValidator Text="*" ID="rfvcnfpswd" runat ="server" ControlToValidate="txtConfirmPassword" ForeColor="Red" ErrorMessage="Confirm Password cannot be blank." />
             </td></tr>
             <tr><td colspan="2" class="auto-style1">
                     <asp:CompareValidator Text="*" ID="cmpPswd" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ForeColor="Red" ErrorMessage="Passwords not matching." />
             </td></tr>
             
            
             
             <tr>
                 <td class="auto-style1">
                     <br />
                     <asp:Button ID="cmdSubmit" runat="server" Text="Submit" OnClick="cmdSubmit_Click" />
                     <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="false" OnClick="btnReset_Click" />
                     <%--<input type="submit" name="fval" value="Submit" onclick="storeData(); matchpswd()"/>
                     <input type="reset" name="res" value="Reset" onclick="clearAll()"/> 
                     <input type="button" name="get" value="Get Data" onclick="getData()" />--%>
                     <br />
                     <asp:CheckBox ID="ChkRemberme" runat="server" />Remember Me
                 </td>
             </tr>
              <tr>
                  <td> <asp:Label ID="txtMsg" Text="" runat="server" /> </td>
              </tr>
         </table>   
        </div>
    
    </form>
</body>
</html>
