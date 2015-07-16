<%-- 
    Document   : nateMeme
    Created on : Jul 3, 2015, 8:51:53 AM
    Author     : nathanael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Can we make things</title>
        <script>
            function dothing() {
                document.getElementById("toptext").innerHTML = document.getElementById("toptextin").value;
            }
            function dothing2() {
                document.getElementById("bottomtext").innerHTML = document.getElementById("bottomtextin").value;
            }
            function loadpic() {
                var img = new Image();
                img.src = 'DisplayImage';
                document.getElementById("thepic").width = img.width;
                document.getElementById("thepic").height = img.height;
                document.getElementById("toptext").width = img.height;
                document.getElementById("bottomtext").width = img.height;
            }
        </script>
        <style>
            div#toptext {
                text-align : center;
                font-family:Impact;
                color:white;
                font-size:50px;
                stroke-width: 2px;
                stroke:black;
                -webkit-text-stroke: 2px black;
            }
            div#bottomtext {
                text-align : center;
                font-family:Impact;
                color:white;
                font-size:50px;
                stroke-width: 2px;
                stroke:black;
                -webkit-text-stroke: 2px black;
            }
            #wrapper{
                 
            }
            #image {
               
               height: 75%;
              
            }
            img{
                //position:absolute;
                margin:auto;
                top:0;
                bottom:0;
                left:0;
                right:0;
                height: 100%;   
            }
        </style>
    </head>
    <body>
        
            <div id="image">
                <img src="DisplayImage" alt="Select an image to upload!">
            </div>
        
        <h3>Image Upload:</h3>
        Select an image to upload: <br />
        <form action="FileUpload" method="post" enctype="multipart/form-data">
            <input type="file" name="file" size="50" />
            <br />
            <input type="submit" value="Upload File" />
        </form>
        <form action="WordAdder" method="POST">
            <input type="text" name="toptext">
            <input type="text" name="bottomtext">
            <input type="submit" value="Submit">
        </form>
    </body>
</html>

