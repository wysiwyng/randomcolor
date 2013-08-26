<?php
$color = rand(0,0xffffff);

?>
<html>
    <head>
        <title>randomcolor-php</title>
    </head>
    <body style="background-color:#<?echo sprintf('%2X',$color);?>">
        <p>
            reload page for new color, current color html code is: <? echo sprintf('%2X',$color); ?>
        </p>
    </body>
</html>