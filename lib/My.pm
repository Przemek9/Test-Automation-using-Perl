#!/usr/bin/perl -w
#                                                             My.pl

package My;
use v5.16;
use strict;
use utf8;
use FindBin qw ( $RealBin );
use base 'Exporter';

our @EXPORT = qw(encoding);

sub encoding
{
	# Morse code list
	my %letters;

	# Digits
	$letters{'0'} = '-----';
	$letters{'1'} = '.----';
	$letters{'2'} = '..---';
	$letters{'3'} = '...--';
	$letters{'4'} = '....-';
	$letters{'5'} = '.....';
	$letters{'6'} = '-....';
	$letters{'7'} = '--...';
	$letters{'8'} = '---..';
	$letters{'9'} = '----.';

	my $wynik = '';
	my $string = shift;
	if($string=~ /^\d+$/)
	{
		my @tabelka = split('', $string);
		for my $c ( @tabelka) 
			{
			    $wynik .= $letters{$c};
			}
		return $wynik
	}
	else
	{
		return "Nieprawidlowy argument";
		
	}
}
