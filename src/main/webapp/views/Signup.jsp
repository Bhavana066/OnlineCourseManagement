<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background: url(https://t4.ftcdn.net/jpg/10/83/86/87/240_F_1083868718_TC1kP5r95ZthLk4Knd04iEIBgS5hz2w5.jpg) no-repeat center center fixed; /* Add your background image URL here */
            background-size: cover; /* Make the background cover the entire page */
        }
    </style>
</head>
<body class="bg-gray-100">
    <!-- Navbar at the top of the page -->
    <jsp:include page="navbar.jsp" />

    <!-- Signup box container -->
    <div class="flex items-center justify-center min-h-screen"> <!-- Centering vertically and horizontally -->
        <div class="bg-white bg-opacity-80 p-8 rounded-lg shadow-md w-full max-w-md">
            <center><h1 class="text-2xl font-bold mb-6">Sign Up</h1></center>
            
            <!-- Display error message if signup fails -->
            <c:if test="${not empty errorMessage}">
                <p style="color:red;">${errorMessage}</p>
            </c:if>

            <!-- Signup form with proper action URL -->
            <form action="${pageContext.request.contextPath}/signup/submit" method="post">
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="full-name">Username</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="name" name="name" type="text" placeholder="Full name" required>
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="email">Email</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="email" name="email" type="email" placeholder="Email" required>
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="password">Password</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="password" name="password" type="password" placeholder="Password" required>
                </div>
                <div class="mb-4">
                <form method="post" action="insertstudent"></form>
                    <button class="w-full bg-blue-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="submit">
                        Sign up
                    </button>
                </div>
            </form>
            <div class="mt-6 text-center">
                <p class="text-gray-700">Already have an account? <a href="${pageContext.request.contextPath}/studentlogin" class="text-blue-600 underline">Log in</a></p>
            </div>
        </div>
    </div>
     <%@ include file="footer.jsp" %>
</body>
</html>
