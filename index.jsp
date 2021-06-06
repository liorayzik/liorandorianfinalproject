<html>
<head>
  <title>Echoing HTML Request Parameters</title>

<style>

body{text-align: center;}
li{text-align: center;}

</style>
</head>
<body>
  <h3>Choose the best singer:</h3>
  <form method="get">
    <input type="checkbox" name="author" value="justin bieber" id="myCheckbox1">justin
	<label for="myCheckbox1"><img src="https://pbs.twimg.com/profile_images/3728552888/56787fabf148f1ec54024664e3d0103b.png" /></label>
    <input type="checkbox" name="author" value="beyonce" id="myCheckbox2">beyonce
	<label for="myCheckbox2"><img src="https://i.pinimg.com/originals/3a/6a/c0/3a6ac00943c746f692dbeafe7db6a67d.jpg" /></label>
    <input type="checkbox" name="author" value="ed sheeran" id="myCheckbox3">ed sheeran
	<label for="myCheckbox3"><img src="https://pbs.twimg.com/profile_images/648879249214996481/95dCW0uB_400x400.jpg" /></label>
    <input type="submit" value="submit">
	
  </form>
 
  <%
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected singer(s):</h3>
    <ul>
  <%
      for (int i = 0; i < authors.length; ++i) {
  %>
        <li><%= authors[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>

</body>
</html>