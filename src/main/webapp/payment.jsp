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
        
                /* Form container */
		.container {
		    max-width: 1200px;
		    margin: 0 auto;
		    padding: 2rem;
		}
		
		/* Form title */
		h2 {
		    margin-bottom: 1rem;
		}
		
		/* Form fields */
		.mb-3 {
		    margin-bottom: 1rem;
		}
		
		.form-label {
		    display: block;
		    margin-bottom: 0.5rem;
		}
		
		.form-control {
		    width: 100%;
		    padding: 0.5rem;
		    border: 1px solid #e5e7eb;
		    border-radius: 0.25rem;
		}
		
		/* Radio buttons for payment methods */
		.payment-methods {
		    display: flex;
		    gap: 1rem;
		}
		
		.form-check {
		    display: flex;
		    align-items: center;
		}
		
		.form-check-input {
		    margin-right: 0.5rem;
		}
		
		.form-check-label {
		    display: flex;
		    align-items: center;
		}
		
		.form-check-label img {
		    margin-right: 0.5rem;
		    width: 24px;
		    height: 24px;
		}
		
		/* Submit button */
		.form-submit {
		    background-color: #22c55e;
		    color: white;
		    padding: 0.5rem 1rem;
		    border: none;
		    border-radius: 0.25rem;
		    cursor: pointer;
		}
		
		.form-submit:hover {
		    background-color: #16a34a;
		}
		
		/* Button container */
		.btn-container {
		    display: flex;
		    gap: 1rem;
		    margin-top: 1rem;
		}
		
		/* View Payment List button */
		.btn-primary {
		    background-color: #3b82f6;
		    color: white;
		    padding: 0.5rem 1rem;
		    text-decoration: none;
		    border-radius: 0.25rem;
		}
		
		.btn-primary:hover {
		    background-color: #2563eb;
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
    
        <br>

        <!-- Payment form begin -->
        <div class="container">
            <form method="post" action="payment" class="register-form" >
                <h2>Payment Information</h2>
                <div class="mb-3">
                    <label class="form-label">Payment Method</label>
                    <div class="payment-methods">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="paymentMethod" id="mastercard" value="Mastercard" checked>
                            <label class="form-check-label" for="mastercard">
                                <img src="https://img.icons8.com/color/48/000000/mastercard-logo.png" alt="Mastercard Logo"> Mastercard
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="paymentMethod" id="visa" value="Visa">
                            <label class="form-check-label" for="visa">
                                <img src="https://img.icons8.com/color/48/000000/visa.png" alt="Visa Logo"> Visa
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="paymentMethod" id="paypal" value="PayPal">
                            <label class="form-check-label" for="paypal">
                                <img src="https://img.icons8.com/color/48/000000/paypal.png" alt="PayPal Logo"> PayPal
                            </label>
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="cardholdername" class="form-label">Card Holder Name</label>
                    <input type="text" class="form-control" name="cardholdername" id="cardholdername" placeholder="Enter your Name" />
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Card Holder Email</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="Enter your E-mail (example@gmail.com)" />
                </div>

                <div class="mb-3">
                    <label for="cardnumber" class="form-label">Card Number</label>
                    <input type="text" class="form-control" name="cardnumber" id="cardnumber" placeholder="Enter your Card number (****-****-****-****)" />
                </div>

                <div class="mb-3">
                    <label for="amount" class="form-label">Enter the Amount</label>
                    <input type="text" class="form-control" name="amount" id="amount" placeholder="Enter the Amount" />
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="expdate" class="form-label">Expiration Date</label>
                        <input type="text" class="form-control" name="expdate" id="expdate" placeholder="MM/YY" />
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="cvv" class="form-label">CVV</label>
                        <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Enter CVV" />
                    </div>
                </div>
                
                <div class="btn-container">
                    <input type="submit" name="payment" id="payment" class="form-submit btn btn-success" value="Submit Payment" />
                    <a href="paymentList.jsp" class="btn btn-primary" id="viewList">View Payment List</a>
                </div>

            </form>
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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.4.8/sweetalert2.min.js"></script>
    
    <script>
	    // Attach the click event listener programmatically in JavaScript
	    document.getElementById("viewList").addEventListener("click", function (event) {
	        // Prevent the default behavior of the link
	        event.preventDefault();
	
	        // Ask if the user is an accountant
	        const isAccountant = confirm("Are you the Accountant?");
	
	        // If the user is not the accountant, redirect to the registration page
	        if (!isAccountant) {
	            window.location.href = 'payment.jsp';
	        } else {
	            // Prompt for username and password
	            const username = prompt("Enter your username:");
	            const password = prompt("Enter your password:");
	
	            // Validate credentials
	            if (username === "12345" && password === "12345") {
	                alert("Welcome, Accountant!");
	                window.location.href = 'paymentList'; // Allow access to the payment list
	            } else {
	                alert("Invalid credentials! Redirecting to registration page.");
	                window.location.href = 'payment.jsp'; // Redirect if credentials are incorrect
	            }
	        }
	    });
	</script>

	<script>
	document.addEventListener("DOMContentLoaded", function () {
	    const form = document.querySelector('.register-form');
	    
	    form.addEventListener('submit', function (event) {
	        // Prevent default form submission
	        event.preventDefault();
	        
	        // Get values from the form
	        const paymentMethod = document.querySelector('input[name="paymentMethod"]:checked');
	        const cardholderName = document.getElementById('cardholdername').value.trim();
	        const email = document.getElementById('email').value.trim();
	        const cardNumber = document.getElementById('cardnumber').value.trim();
	        const amount = document.getElementById('amount').value.trim();
	        const expDate = document.getElementById('expdate').value.trim();
	        const cvv = document.getElementById('cvv').value.trim();
	
	        // Initialize an array to hold error messages
	        let errors = [];
	
	        // Validation checks
	        if (!paymentMethod) {
	            errors.push("Please select a payment method.");
	        }
	        if (!cardholderName) {
	            errors.push("Card Holder Name is required.");
	        }
	        if (!email) {
	            errors.push("Email is required.");
	        } else {
	            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	            if (!emailPattern.test(email)) {
	                errors.push("Please enter a valid email address.");
	            }
	        }
	        if (!cardNumber) {
	            errors.push("Card Number is required.");
	        } else if (!/^\d{16}$/.test(cardNumber)) {  // Check if card number is exactly 16 digits
	            errors.push("Card Number must be exactly 16 digits long.");
	        }
	        if (!amount) {
	            errors.push("Amount is required.");
	        } else if (isNaN(amount) || amount <= 0) {
	            errors.push("Please enter a valid amount.");
	        }
	        if (!expDate) {
	            errors.push("Expiration Date is required.");
	        } else {
	            const expDatePattern = /^(0[1-9]|1[0-2])\/\d{2}$/;
	            if (!expDatePattern.test(expDate)) {
	                errors.push("Expiration Date must be in MM/YY format.");
	            }
	        }
	        if (!cvv) {
	            errors.push("CVV is required.");
	        } else if (isNaN(cvv) || cvv.length !== 3) {
	            errors.push("CVV must be a 3-digit number.");
	        }
	
	        // Display errors if there are any
	        if (errors.length > 0) {
	            alert(errors.join("\n"));
	        } else {
	            // If no errors, submit the form
	            form.submit();
	        }
	    });
	});
	</script>

</body>
</html>