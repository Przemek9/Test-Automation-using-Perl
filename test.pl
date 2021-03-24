#!/usr/bin/perl -w
#                                                             test.pl

use strict;
use warnings; 
use FindBin qw($Bin);
use lib "$Bin/lib";
use My;

my $liczba_bledow = 0; 
my $argument = "";
my $wynik_oczekiwany = "";
my $wynik_programu = ""; 
 
##### SCENARIUSZ I #####

$argument = "1993";
$wynik_oczekiwany = ".--------.----....--";
$wynik_programu = (encoding($argument));

print "\n\n----- Scenariusz I ----- \n";
print "Argument wyslany do programu: $argument \n";
print "Wynik oczekiwany: $wynik_oczekiwany\n";
print "Wynik programu:   $wynik_programu\n";
if ($wynik_programu eq $wynik_oczekiwany) 
{
    print "Weryfikacja poprawna\n\n";
} 
else 
{
    print "Weryfikacja niepoprawna\n\n";
    $liczba_bledow++;
}

##### SCENARIUSZ II #####
 
$argument = "1234567";
$wynik_oczekiwany = ".----..---...--....-.....-....--...";
$wynik_programu = (encoding($argument));

print "\n\n----- Scenariusz II ----- \n";
print "Argument wyslany do programu: $argument \n";
print "Wynik oczekiwany: $wynik_oczekiwany\n";
print "Wynik programu:   $wynik_programu\n";
if ($wynik_programu eq $wynik_oczekiwany) 
{
    print "Weryfikacja poprawna\n\n";
}
else
{
    print "Weryfikacja niepoprawna\n\n";
    $liczba_bledow++;
}

##### SCENARIUSZ III #####
 
$argument = "kotek";
$wynik_oczekiwany = "Nieprawidlowy argument";
$wynik_programu = (encoding($argument));

print "\n\n----- Scenariusz III ----- \n";
print "Argument wyslany do programu: $argument \n";
print "Wynik oczekiwany: $wynik_oczekiwany\n";
print "Wynik programu:   $wynik_programu\n";
if ($wynik_programu eq $wynik_oczekiwany) 
{
    print "Weryfikacja poprawna\n\n";
}
else
{
    print "Weryfikacja niepoprawna\n\n";
    $liczba_bledow++;
}

##### SCENARIUSZ IV #####
 
$argument = "999999999";
$wynik_oczekiwany = "----.----.----.----.----.----.----.----.----.";
$wynik_programu = (encoding($argument));

print "\n\n----- Scenariusz IV ----- \n";
print "Argument wyslany do programu: $argument \n";
print "Wynik oczekiwany: $wynik_oczekiwany\n";
print "Wynik programu:   $wynik_programu\n";
if ($wynik_programu eq $wynik_oczekiwany) 
{
    print "Weryfikacja poprawna\n\n";
}
else
{
    print "Weryfikacja niepoprawna\n\n";
    $liczba_bledow++;
}

##### SCENARIUSZ V #####
 
$argument = "333333333333333";
$wynik_oczekiwany = "...--...--...--...--...--...--...--...--...--...--...--...--...--...--...--";
$wynik_programu = (encoding($argument));

print "\n\n----- Scenariusz V ----- \n";
print "Argument wyslany do programu: $argument \n";
print "Wynik oczekiwany: $wynik_oczekiwany\n";
print "Wynik programu:   $wynik_programu\n";
if ($wynik_programu eq $wynik_oczekiwany) 
{
    print "Weryfikacja poprawna\n\n";
}
else
{
    print "Weryfikacja niepoprawna\n\n";
    $liczba_bledow++;
}


##### SCENARIUSZ VI #####
 
$argument = "-3";
$wynik_oczekiwany = "-...-...--"; #program nie zamienia liczb ujemnych --> nalezy opcję zmiany "-" na "-...-"
$wynik_programu = (encoding($argument));

print "\n\n----- Scenariusz VI ----- \n";
print "Argument wyslany do programu: $argument \n";
print "Wynik oczekiwany: $wynik_oczekiwany\n";
print "Wynik programu:   $wynik_programu\n";
if ($wynik_programu eq $wynik_oczekiwany) 
{
    print "Weryfikacja poprawna\n\n";
}
else
{
    print "Weryfikacja niepoprawna\n\n";
    $liczba_bledow++;
}


##### SCENARIUSZ VII #####
 
$argument = "3,3";
$wynik_oczekiwany = "...----..--...--";  #program nie zamienia liczb zmiennoprzecinkowych --> nalezy opcję zmiany "," na "--..--"
$wynik_programu = (encoding($argument));

print "\n\n----- Scenariusz VII ----- \n";
print "Argument wyslany do programu: $argument \n";
print "Wynik oczekiwany: $wynik_oczekiwany\n";
print "Wynik programu:   $wynik_programu\n";
if ($wynik_programu eq $wynik_oczekiwany) 
{
    print "Weryfikacja poprawna\n\n";
}
else
{
    print "Weryfikacja niepoprawna\n\n";
    $liczba_bledow++;
}


##### PODSUMOWANIE #####
print "\n############################\n";
print "Podsumowanie:\n";
if($liczba_bledow == 0) 
{
	print "Weryfikacja poprawna\n";
	print "Liczba bledow: ",$liczba_bledow, "\n";
}	
else 
{
	print "Weryfikacja nie poprawna\n";
	print "Liczba bledow: ",$liczba_bledow, "\n";
}
print "############################\n";
