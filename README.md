# Online Payment Management System

## Overview

This project is a Java-based web application designed for managing online payment information. It allows users to perform Create, Read, Update, and Delete (CRUD) operations on payment records stored in a MySQL database.
The application utilizes Java Servlets for backend logic and JSPs for the user interface.

## Features

*   **Create Payments:** Add new payment records with details like cardholder name, email, card number, amount, expiry date, and CVV.
*   **View Payments:** Display a list of all stored payment records.
*   **Update Payments:** Modify the details of existing payment records.
*   **Delete Payments:** Remove payment records from the system.

## Technology Stack

*   **Backend:** Java Servlets
*   **Frontend:** JavaServer Pages (JSP), HTML, CSS
*   **Database:** MySQL
*   **Runtime Environment:** Apache Tomcat (or any other Java Servlet container)

## Prerequisites

Before you begin, ensure you have the following installed:

*   **Java Development Kit (JDK):** Version 8 or higher (a recent LTS version is recommended).
*   **Apache Tomcat:** Version 9.x or higher (or another compatible Java Servlet container).
*   **MySQL Server:** Version 8.x or higher.
*   **MySQL JDBC Driver:** The application uses `com.mysql.cj.jdbc.Driver`. You'll need the corresponding JAR file (e.g., `mysql-connector-j-X.X.XX.jar`). This should typically be placed in the `WEB-INF/lib` directory of the deployed web application or in Tomcat's shared library folder.

## Setup and Installation

1.  **Clone the Repository:**
    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```
    (Replace `<repository-url>` and `<repository-directory>` with the actual URL and project directory name)

2.  **Database Setup:**
    *   Ensure your MySQL server is running.
    *   Create a new database named `shopping`. You can use a MySQL client or command line:
        ```sql
        CREATE DATABASE shopping;
        ```
    *   Use the `shopping_DB.sql` file provided in the repository to create the `payment` table and import initial data.
        ```bash
        mysql -u <your_username> -p shopping < shopping_DB.sql
        ```
        (Replace `<your_username>` with your MySQL username)
    *   **Important:** The database connection details (URL, username, password) are currently hardcoded in the Java servlet files (e.g., `src/main/java/com/oop/payment/paymentServlet.java`, `UpdatePaymentProcessServlet.java`, etc.). You will need to update these to match your MySQL configuration. Look for lines like:
        ```java
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSl=false", "root", "Chamika1999");
        ```
        Change `"root"` and `"Chamika1999"` to your MySQL username and password.

3.  **Project Build:**
    *   This project appears to be structured as an Eclipse project. The recommended way to build is to import it into Eclipse IDE:
        *   Open Eclipse.
        *   Go to `File > Import...`.
        *   Choose `General > Existing Projects into Workspace`.
        *   Select the root directory of the cloned repository.
        *   Ensure the project is correctly recognized as a Dynamic Web Project.
        *   Eclipse should handle the build process automatically.
    *   You will also need to add the MySQL JDBC driver JAR to the project's build path if it's not already included or managed by Eclipse. Typically, you would place the JAR file in the `src/main/webapp/WEB-INF/lib` directory and ensure it's part of the deployment assembly in Eclipse.

4.  **Deployment:**
    *   Once built, export the project as a WAR (Web Application Archive) file from Eclipse.
        *   Right-click on the project in Project Explorer.
        *   Select `Export > WAR file`.
        *   Choose a destination for the WAR file.
    *   Deploy the generated WAR file to your Apache Tomcat server (or other servlet container). This usually involves copying the WAR file to Tomcat's `webapps` directory. Tomcat will then automatically deploy the application.

## Usage

Once the application is deployed to Tomcat (or your servlet container), you can access it through your web browser.

*   **Default URL:** The application will typically be available at `http://localhost:8080/<project-name>/`
    *   Replace `<project-name>` with the name of the deployed WAR file (e.g., if your WAR is `ShoppingPayment.war`, the URL would be `http://localhost:8080/ShoppingPayment/`).
    *   The main page is `index.jsp`.

*   **Key Functionalities:**
    *   **Adding a new payment:** Navigate to `payment.jsp` (e.g., `http://localhost:8080/<project-name>/payment.jsp`). Fill in the form and submit.
    *   **Viewing all payments:** Navigate to `paymentList.jsp` (e.g., `http://localhost:8080/<project-name>/paymentList.jsp`). This page displays a table of all payments.
    *   **Updating a payment:** From the `paymentList.jsp`, there should be options to update existing payments. This will likely redirect you to a form pre-filled with the payment details (e.g., `editPayment.jsp`).
    *   **Deleting a payment:** From the `paymentList.jsp`, there should be options to delete payments.

## Project Structure

A brief overview of the key directories and files:

*   `src/main/java/`: Contains the Java source code for servlets, model classes, and other backend logic.
    *   `com/oop/payment/`: Package containing all payment-related Java classes.
*   `src/main/webapp/`: Contains the web application resources.
    *   `*.jsp`: JavaServer Pages for the user interface (e.g., `index.jsp`, `payment.jsp`, `paymentList.jsp`, `editPayment.jsp`).
    *   `WEB-INF/`: Contains web application deployment descriptor (`web.xml`) and libraries (`lib/`).
    *   `images/`: Contains images used in the application.
*   `shopping_DB.sql`: SQL script for setting up the `shopping` database and the `payment` table.
*   `.settings/`, `.classpath`, `.project`: Eclipse IDE project configuration files.

