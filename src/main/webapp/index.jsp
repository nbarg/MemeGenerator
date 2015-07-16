<%-- 
    Document   : nateMeme
    Created on : Jul 3, 2015, 8:51:53 AM
    Author     : nathanael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Meme G   enerator</title>
        <script>

        </script>
        <style>
            body{
                background-color: #d2eef2;
            }
            #wrapper{

            }
            #image {

                height: 76%;    

            }
            img{
                position: fixed;
                margin-bottom:auto;
                margin-left:auto;
                margin-right:auto;
                margin-top: 5%;
                top:0;
                bottom:0;
                left:0;
                right:0;
                height: 73%;   
                top: 0%;
                border: black solid;
                border-width: 2px;
            }
            #bottom {
                text-align: center;
            }
            #upload {
                width: 20%;
                position: relative;
                left: 40%;
                text-align: left;
            }
            h1{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Meme Generator</h1>
        <div id="image">
            <img src="DisplayImage" alt="Select an image to upload!">
        </div>

        <div id="bottom">
            Select an image to upload: <br />
            <form id="upload" action="FileUpload" method="post" enctype="multipart/form-data">
                <input type="file" name="file" size="50" />
                <br />
                <input type="submit" value="Upload File" />
            </form>
            <form id="words" action="WordAdder" method="POST">
                Text for top of image: <input type="text" name="toptext" id="toptext">
                Text for bottom of image: <input type="text" name="bottomtext" id="bottomtext">
                <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>

