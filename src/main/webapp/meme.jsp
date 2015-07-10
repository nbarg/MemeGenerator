<%-- 
    Document   : meme
    Created on : Jul 6, 2015, 3:29:41 PM
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
                img.src = 'http://hdwpics.com/images/2743D5558525/Skyrim-Dragon.jpg';
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
        </style>
    </head>
    <body>
        <table>
            <tr>
                <td id="thepic" style="background:url(http://hdwpics.com/images/2743D5558525/Skyrim-Dragon.jpg);">
                    <textarea id="toptext">HI</textarea>
                    <textarea id="bottomtext">BYE</textarea>
                </td>
                <td>
                    <input type="text" id="toptextin" />
                    <input type="button" onclick="dothing()" value="Button" /> <br />
                    <input type="text" id="bottomtextin" />
                    <input type="button" onclick="dothing2()" value="Button" />
                </td>
            </tr>
        </table>
        <input type="button" onclick="loadpic()" value="LoadPicture" />
        <h3>File Upload:</h3>
        Select a file to upload: <br />
        <form action="FileUpload" method="post" enctype="multipart/form-data">
            <input type="file" name="file" size="50" />
            <br />
            <input type="submit" value="Upload File" />
        </form>
    </body>
</html>

