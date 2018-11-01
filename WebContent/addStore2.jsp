<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8" autoFlush="true" buffer="18kb"
    isErrorPage="false" trimDirectiveWhitespaces="true"
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
    <script src="main.js"></script>
</head>

<body>

    <div class="container">
        <nav class="navbar navbar-light bg-light">
            <span class="navbar-text">
                Fill Information To Add Store
            </span>
        </nav>

        <!-- form for name, keeper, number & address -->
        <form>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="str_name">Store Name</label>
                    <input name="str_name" type="text" class="form-control" placeholder="Store Name">
                </div>

                <div class="form-group col-md-4">
                    <label for="str_keep">Store Keeper</label>
                    <input name="str_keep" type="text" class="form-control" placeholder="Store Keeper">
                </div>

                <div class="form-group col-md-4">
                    <label for="num">Phone Number</label>
                    <input name="num" type="text" class="form-control" placeholder="Phone Number">
                </div>
            </div>

            <!-- address for the store -->
            <div class="form-group">
                <label for="inputAddress">Address</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
            </div>

            <div class="form-group">
                <label for="inputAddress2">Address 2</label>
                <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">City</label>
                    <input type="text" class="form-control" id="inputCity">
                </div>

                <div class="form-group col-md-4">
                    <label for="inputState">State</label>
                    <select id="inputState" class="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                </div>

                <div class="form-group col-md-2">
                    <label for="inputZip">Zip</label>
                    <input type="text" class="form-control" id="inputZip">
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Add Store</button>
        </form>
    </div>

    <script src="assets\javascript\bootstrap.min.js"></script>
</body>

</html>