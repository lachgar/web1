<%-- 
    Document   : Services
    Created on : Oct 18, 2018, 11:19:09 PM
    Author     : mst
--%>

<%@page import="beans.Service"%>
<%@page import="service.ServiceService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">


        <!-- Bootstrap Core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- DataTables CSS -->
        <link href="../vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="../vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="../script/script.js" type="text/javascript"></script>
    </head>

    <body>

        <div id="wrapper">

            <%@ include file="NavbarMenu.jsp" %>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Gestion des Services</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.Form -->

                <form action="../AddService">
                    <legend>Ajouter Service</legend> 

                    <table border="0">

                        <tr>               
                            <td><label>Nom :</label></td>
                            <td></td>
                            <td><input class="form-control" type="text" name="nom" id="nom"/></td>

                        </tr>
                        <tr>
                            <td></td>
                            <td><br><button type="submit" value="Valider" id="save" class="btn btn-success">Valider</button><br></td>
                            <td><br></td>

                        </tr>

                    </table>
                    <br>
                    <input type="hidden" id="idupdate" name="idupdate" value="" />
                </form>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Tableau des Services
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Name</th>
                                                <th>Last Name</th>
                                                <th>Username</th>
                                            </tr>
                                        <tbody>
                                            <%
                                                ServiceService ss = new ServiceService();
                                                for (Service s : ss.findAll()) {
                                            %>
                                            <tr>
                                                <td><%= s.getId()%></td>
                                                <td><%= s.getNom()%></td>
                                                <td><a href="../DeleteService?id=<%=s.getId()%>">Supprimer</a></td>
                                                <td><input id ="update" type="button" value="Modifier" onclick="f(<%=s.getId()%>, '<%=s.getNom()%>')" /></td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                </div>
                <!-- /#page-wrapper -->

            </div>
            <!-- /#wrapper -->

            <!-- jQuery -->
            <script src="../vendor/jquery/jquery.min.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

            <!-- Metis Menu Plugin JavaScript -->
            <script src="../vendor/metisMenu/metisMenu.min.js"></script>

            <!-- DataTables JavaScript -->
            <script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
            <script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
            <script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>

            <!-- Custom Theme JavaScript -->
            <script src="../dist/js/sb-admin-2.js"></script>

            <!-- Page-Level Demo Scripts - Tables - Use for reference -->
            <script>
                                                    $(document).ready(function () {
                                                        $('#dataTables-example').DataTable({
                                                            responsive: true
                                                        });
                                                    });
            </script>

    </body>

</html>
