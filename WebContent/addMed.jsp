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
                Fill Information To Add Medicine
            </span>
        </nav>
        
        <form>
            <!-- Name and Manufacturer of medicine -->
            <div class="row">
                <div class="col">
                    <label for="medicine">Name of Medicine</label>
                    <input name="medicine" type="text" class="form-control" placeholder="Name of Medicine">
                </div>
                <div class="col">
                    <label for="mfg">Manufacturer</label>
                    <input name="mfg" type="text" class="form-control" placeholder="Name of Manufacturer">
                </div>
            </div>
            <br>

            <!-- salt 1 and composition -->
            <div class="row">
                <div class="col">
                    <label for="salt1">Salt 1</label>
                    <input name="salt1" type="text" class="form-control" placeholder="Name of Salt">
                </div>
                <div class="col">
                    <label for="com1">Composition</label>
                    <input name="com1" type="text" class="form-control" placeholder="Composition %">
                </div>
            </div>
            <br>

            <!-- salt 2 and composition -->
            <div class="row">
                <div class="col">
                    <label for="salt2">Salt 2</label>
                    <input name="salt2" type="text" class="form-control" placeholder="Name of Salt">
                </div>
                <div class="col">
                    <label for="com2">Composition</label>
                    <input name="com2" type="text" class="form-control" placeholder="Composition %">
                </div>
            </div>
            <br>

            <!-- salt 2 and composition -->
            <div class="row">
                <div class="col">
                    <label for="salt3">Salt 3</label>
                    <input name="salt3" type="text" class="form-control" placeholder="Name of Salt">
                </div>
                <div class="col">
                    <label for="com3">Composition</label>
                    <input name="com3" type="text" class="form-control" placeholder="Composition %">
                </div>
            </div>
            <br>

            <!-- capacity -->
            <div class="row">

                <div class="col">
                    <label for="cap">Capacity of Medicine(in mg)</label>
                    <input name="cap" type="text" class="form-control" placeholder="Capacity">
                </div>
                <div class="col">
                    <label for="pills">No. of pills per sachet</label>
                    <input name="pills" type="text" class="form-control" placeholder="No. of Pills">
                </div>
            </div>
            <br>


            <button type="submit" class="btn btn-primary">Add Medicine</button>
        </form>
    </div>


    <script src="assets\javascript\bootstrap.min.js"></script>
</body>

</html>