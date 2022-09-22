#! /bin/bash

vehicle=$1

case $vehicle in
	"car" )
		echo "Rent of $vehicle is 100 dollars" ;;
	"van" )
		echo "Rent of $vehicle is 80 dollars" ;;
	"bicycle" )
		echo "Rent of $vehicle is 40 dollars" ;;
	"truck" )
		echo "Rent of $vehicle is 150 dollars" ;;
	* )
		echo "$vehicle is unknown"
esac
