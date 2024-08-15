<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="projectss.WebForm2" %>

<a href="WebForm2.aspx"> <!--WebForm2.aspx --> </a>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
          padding: 0px;
          margin: 0px;
          box-sizing: border-box;
        }

        .heading{/*Main heading division*/
          padding-left: 550px;
          height: 100px;
          background-color: #03012c;
           color: azure;

          background-image: url('magneq_logo-removebg-preview.png');
          background-size: 80px;
          background-repeat: no-repeat;
          background-position: 450px;
         
    
          padding-top: 10px;
          text-transform: uppercase;
         
        }
        #mag{/*maqneq heading*/
           font-size: 45px;
         }
        #online{/*Online heading*/
          font-size: 25px;
            padding-left: 120px;
         }
        .form{/*Form division*/
            padding: 20px;
           margin-top: 2%;
           margin-left: 30%;
           margin-right: 30%;
           
        }
        .form-sec{/*Form sections*/
                display: flex;
                 flex-direction: column;
               column-gap: 20px;
              padding: 20px;
             height: 520px;
   
           background-color: rgb(224, 226, 227);
          border: 1px solid gray;
           border-radius: 30px;
        }
        h3{/*Registration form heading*/
           text-align: center;
                margin-bottom: 10px;
             font-size: 35px;
           color: rgb(219, 50, 50);
           color: #828144;
         }
        .input{/*Inputs*/
            padding: 10px 20px;
           border: 2px solid gray;
           border-radius: 5px;
          margin-top: 10px;
          margin-bottom: 10px;
          box-shadow:3px 3px 3px rgb(112, 112, 112);
          
        }
        .tech{/*Dropdown list for technologies*/
            padding:9px;
            border: 2px solid gray;
            border-radius: 5px;
            margin-top:10px;
            margin-bottom:20px;
            box-shadow:3px 3px 3px rgb(112, 112, 112);
        }
        .btn{/*Submit button*/
            margin-left: 190px;
            margin-right:190px;
           font-size: 20px;
           padding: 5px;
          border: 2px solid gray;
           border-radius: 10px;
           background-color: #adb192;
           color: azure;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Main Heading -->
        <div class="heading">
           <h2 id="mag">magneq software</h2>
           <h4 id="online">online exam</h4>
        </div>
        <!-- Form elements/Inputs -->
        <div class="form">
            <div class="form-sec">
                <h3>Registration Form</h3>
                  
           <!-- Inputs -->

                <!-- Name -->
                <asp:TextBox ID="txt1" 
                    runat="server" 
                    placeholder="Enter Name" 
                    Class="input">
                </asp:TextBox>
                <!-- RegularExpression for name -->
                <asp:RegularExpressionValidator ID="Req1" 
                    runat="server" 
                    ErrorMessage="Enter valid name" 
                    ControlToValidate="txt1" 
                    ForeColor="Red" 
                    ValidationExpression="[a-zA-Z]+" 
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
                <!-- Validator for name -->
                <asp:RequiredFieldValidator ID="Req1_1" 
                    runat="server" 
                    ControlToValidate="txt1"     
                    ErrorMessage="Name is required." 
                    ForeColor="Red" Display="Dynamic"> 
                </asp:RequiredFieldValidator>
              
                <!-- Email -->
                <asp:TextBox ID="Txt2" 
                    runat="server" 
                    placeholder="Enter Email" 
                    Class="input">
                </asp:TextBox>
                <!--Regular Expression for mail -->
                <asp:RegularExpressionValidator 
                    ID="regualr1" 
                    runat="server" 
                    ErrorMessage="Invalid email" 
                    ForeColor="Red" 
                    ControlToValidate="Txt2" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
               
                <!-- Phone Number -->
                <asp:TextBox ID="Txt3" 
                    runat="server" 
                    placeholder="Enter Phone Number" 
                    Class="input">
                </asp:TextBox>
                <!-- RegularExpression for phone number -->
                <asp:RegularExpressionValidator ID="Regular2" 
                    runat="server" 
                    ErrorMessage="Invalid Entry" 
                    ForeColor="Red" 
                    ControlToValidate="Txt3" 
                    ValidationExpression="[0-9]{10}" 
                    Display="Dynamic">
                </asp:RegularExpressionValidator>

                <!-- Password -->
                <asp:TextBox ID="Txt4" 
                    runat="server" 
                    placeholder="Enter Password" 
                    Class="input" 
                    TextMode="password">
                </asp:TextBox>
                <!-- Regular Expression for Password -->
                <asp:RegularExpressionValidator  
                      ID="Regular3" 
                      runat="server"
                      ErrorMessage="Invalid Entry" 
                      ForeColor="Red" 
                      ControlToValidate="Txt4" 
                      ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$" 
                      Display="Dynamic">
               </asp:RegularExpressionValidator>

                <!-- Dropdown List for Technologies -->
                <asp:DropDownList class="tech" ID="tech2" runat="server">
                      <asp:ListItem Text="Select Technology" Value="" />
                      <asp:ListItem Text="FullStack Java" Value="FullStackJava" />
                      <asp:ListItem Text="FullStack Python" Value="FullStackPython" />
                      <asp:ListItem Text="FullStack .Net" Value="FullStackDotNet" />
                      <asp:ListItem Text="Software Testing" Value="SoftwareTesting" />
                      <asp:ListItem Text="Mainframes" Value="Mainframes" />
                </asp:DropDownList>
                <!--Validator for Dropdown list -->
                <asp:RequiredFieldValidator ID="Req_4" 
                    runat="server" 
                    ControlToValidate="tech2" 
                    InitialValue="" 
                    ErrorMessage="Name is required." 
                    ForeColor="Red"> 
                </asp:RequiredFieldValidator>
               
                <!-- Submit button -->
                <asp:Button ID="button" 
                    runat="server" 
                    text="submit" 
                    Class="btn" 
                    OnClick="button_Click"/>

            </div>
           
        </div>
    </form>
</body>
</html>
