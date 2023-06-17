#!/bin/sh 
echo "Enter Principle:" 
read p 
echo "Enter Duration:" 
read t 
echo "Enter Interest rate :" 
read r 

si=`echo "scale=2;( $p * $t * $r ) / 100" | bc`
echo "Simple Interest = $si"