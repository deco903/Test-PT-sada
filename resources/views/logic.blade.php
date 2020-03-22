
<html>
    <head>
        <title>logic</title>
    </head>
 <body>
    <form action="" method="post">
        <tr>
            <td>masukan angka</td>
            <td></td>
            <td>
                <input name="bilangan" type="text" placeholder="bilangan akhir">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="proses">
            </td>
        </tr>
    </form>
    <?php
        $angka = 1225441;
        $split = str_split($angka);
        $len = count($split);
        for ($i=0; $i <= $len - 1; $i++) 
        {
            echo $split[$i];
            for ($j = 0; $j < $len - $i - 1; $j++) {
                echo '0';
            }
            echo '<br/>';
        }
    
    ?>
 </body>   
</html>


<?php
// $angka = 1225441;
// $split = str_split($angka);
// $len = count($split);
// for ($i=0; $i <= $len - 1; $i++) 
// {
// 	echo $split[$i];
// 	for ($j = 0; $j < $len - $i - 1; $j++) {
// 		echo '0';
// 	}
// 	echo '<br/>';
// }