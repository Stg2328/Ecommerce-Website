<%-- 
    Document   : products
    Created on : 11 Feb, 2022, 11:32:36 AM
    Author     : Lenovo
--%>


<%@page import="java.util.HashMap"%>
<%@page import="com.vvp.web.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!-- Start Categories of The Month -->
<!--    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Categories of The Month</h1>
                <p>
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                    deserunt mollit anim id est laborum.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="./img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">Watches</h5>
                <p class="text-center"><a class="btn btn-success">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="./img/category_img_02.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Shoes</h2>
                <p class="text-center"><a class="btn btn-success">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="./img/category_img_03.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Accessories</h2>
                <p class="text-center"><a class="btn btn-success">Go Shop</a></p>
            </div>
        </div>
    </section>-->
    <!-- End Categories of The Month -->



    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Featured Product</h1>
                    <p>
                        Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        Excepteur sint occaecat cupidatat non proident.
                    </p>
                </div>
            </div>
       
            
            <div class="row">
                 <%
                    for(int i=1;i<=products.size();i++)
                        {
                           Product p = products.get(i);

                %>    
                <div class="col-12 col-md-4 mb-4">
                     
                    <div class="card h-100">
                      
                        <a href="single_product.jsp?pid=<%= i %>">
                            <img src="<%= p.getImage()%>" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right"><%= p.getPrice()%></li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark"><%= p.getPname()%></a>
                            <p class="card-text">
                               <%= p.getPdesc()%>
                            </p>
                            <p class="text-muted">Reviews (<%= p.getReviews()%>)</p>
                        </div>
                    </div>
                </div>
            <%

                }
            %>

            </div>
        </div>
    </section>

    <!-- End Featured Product -->