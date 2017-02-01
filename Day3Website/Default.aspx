<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <h1>Welcome to Web Development</h1>

        <% if (Name.Contains("Nathan"))
            { %>
        <h3><%=Name %> is the man</h3>
        <% } %>
        <% else
        { %>
        <h3><%=Name %> is a bum</h3>
        <%}%>

        <a href="About.aspx"> About Me</a>

        <br/>
        <form id="form1" runat="server">
            <div class="form-group">
                <input type="text" class="form-control" name="Word" />
                <br />
                <br />
                <br />

                <select name="Winner">
                    
                    <% foreach (var option in Options)
                        { %>
                    <option value="<%=option.ToLower() %>"><%= option %></option>
                    <% } %>
                   
                </select>
                 <% if (Winner == "mays")
                        {%>
                    
                    <h1>YAAAAYY</h1>
                    <%} %>


            </div>

            <div>
                <input type="submit" class="btn btn-primary" value="Submit" />

            </div>
        </form>
    </div>

</body>
</html>
