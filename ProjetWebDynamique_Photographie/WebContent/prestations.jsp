<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="PrestationsPackage.Prestations"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Prestations</title>
</head>
<body>
				<%
					try {
						String connectionUrl = "jdbc:mysql://localhost/photographie";
						String userId = "root";
						String password = "Artichaut07";

						Class.forName("com.mysql.jdbc.Driver");
						Connection cn = (Connection) DriverManager.getConnection(connectionUrl, userId, password);
						Statement st = (Statement) cn.createStatement();
						String sql = "SELECT * FROM photographie.prestations";
						ResultSet result = st.executeQuery(sql);

						ArrayList<Prestations> PrestaType = new ArrayList<Prestations>();

						while (result.next()) {

							Prestations modele = new Prestations();
							modele.setType_prestation(result.getString("type_prestation"));
							modele.setDescription_prestation(result.getString("description_prestation"));
							modele.setPrix(result.getInt("prix"));

							PrestaType.add(modele);
						}
						for (int i = 0; i < PrestaType.size(); i++) {
							out.print(PrestaType.get(i).getType_prestation());
							out.print(PrestaType.get(i).getDescription_prestation());
							out.print(PrestaType.get(i).getPrix());
						}
					}

					catch (SQLException e) { // TODO
						e.printStackTrace();
					}
				%>
			
		<CENTER>
			<a href=home.jsp> <br>Menu
			</a>
	</CENTER>
    <HR>
    <jsp:include page="footer.html"></jsp:include>
    <HR>
</body>
</html>