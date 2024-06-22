<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Shopping System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" />
    <style>
        /* Basic styling reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Navigation Bar Styles */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            padding: 15px;
        }

        .logo a {
            color: white;
            font-size: 24px;
            text-decoration: none;
            font-weight: bold;
        }

        .nav-links {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        .nav-links li {
            margin-left: 20px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            padding: 10px 15px;
            transition: background 0.3s ease;
        }

        .nav-links a:hover {
            background-color: #575757;
            border-radius: 4px;
        }

        /* Footer Styles */
        .footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
        }

        .footer-container {
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
        }

        .footer-section {
            max-width: 200px;
        }

        .footer-section h3 {
            margin-bottom: 15px;
            font-size: 18px;
        }

        .footer-section p,
        .footer-section ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .footer-section a {
            color: white;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-section a:hover {
            color: #f2a365;
        }

        .social-icons a {
            margin-right: 10px;
            font-size: 20px;
        }

        .footer-bottom {
            text-align: center;
            margin-top: 20px;
        }

        /* Main content styling */
        .main-content {
            padding: 50px;
        }

        /* Product card styling */
        .product-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .product-image {
            height: 200px;
            background-size: cover;
            background-position: center;
        }

        .product-info {
            padding: 15px;
        }

        .product-title {
            font-size: 1.2rem;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .product-description {
            font-size: 0.9rem;
            color: #666;
            margin-bottom: 15px;
        }

        .product-price {
            font-size: 1.1rem;
            font-weight: bold;
            color: #e74c3c;
            margin-bottom: 15px;
        }

        .btn-add-to-cart {
            background-color: #3498db;
            color: white;
        }

        .btn-pay-now {
            background-color: #2ecc71;
            color: white;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="logo">
            <a href="#">OnlineShopping</a>
        </div>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="products.jsp">Products</a></li>
            <li><a href="cart.jsp">Cart</a></li>
            <li><a href="orders.jsp">Orders</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="login.jsp">Login</a></li>
        </ul>
    </nav>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container">
            <h1 class="text-center mb-5">Featured Products</h1>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="product-card">
                        <div class="product-image" style="background-image: url('./images/item1.jpg');"></div>
                        <div class="product-info">
                            <h2 class="product-title">Smartphone X</h2>
                            <p class="product-description">Latest model with advanced features and long-lasting battery.</p>
                            <p class="product-price">$699.99</p>
                            <div class="d-flex justify-content-between">
                                <button class="btn btn-add-to-cart">Add to Cart</button>
                                <a href="payment.jsp"><button class="btn btn-pay-now">Pay Now</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="product-card">
                        <div class="product-image" style="background-image: url('./images/item2.jpg');"></div>
                        <div class="product-info">
                            <h2 class="product-title">Laptop Pro</h2>
                            <p class="product-description">Powerful laptop for professionals and creatives.</p>
                            <p class="product-price">$1299.99</p>
                            <div class="d-flex justify-content-between">
                                <button class="btn btn-add-to-cart">Add to Cart</button>
                                <a href="payment.jsp"><button class="btn btn-pay-now">Pay Now</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="product-card">
                        <div class="product-image" style="background-image: url('./images/item3.jpg');"></div>
                        <div class="product-info">
                            <h2 class="product-title">Wireless Earbuds</h2>
                            <p class="product-description">High-quality sound with noise cancellation technology.</p>
                            <p class="product-price">$149.99</p>
                            <div class="d-flex justify-content-between">
                                <button class="btn btn-add-to-cart">Add to Cart</button>
                                <a href="payment.jsp"><button class="btn btn-pay-now">Pay Now</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="footer-container">
            <div class="footer-section about">
                <h3>About Us</h3>
                <p>We provide the best online shopping experience with a wide variety of products available at your fingertips.</p>
            </div>
            <div class="footer-section links">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="products.jsp">Products</a></li>
                    <li><a href="cart.jsp">Cart</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-section social">
                <h3>Follow Us</h3>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 OnlineShopping. All rights reserved.</p>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>