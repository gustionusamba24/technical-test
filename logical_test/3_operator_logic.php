<?php

function pembagian($a, $b)
{
    $hasil = 0;
    while ($a >= $b) {
        $a = $a - $b;
        $hasil++;
    }
    return $hasil;
}

echo pembagian(7, 2);
