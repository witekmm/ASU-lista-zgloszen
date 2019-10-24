#!/usr/bin/perl
use strict;
use warnings;
use Tk;


my $mw = MainWindow->new;

$mw->Button(
	-width => 25,
    	-text    => 'Dodaj zgloszenie',
	-background => '#4dd671',
    	-command => sub{add_request_view()},
)->pack;

$mw->Button(
	-width => 25,
    	-text    => 'Obsluz zgloszenie',
	-background => '#4e98d9',
    	-command => sub{handle_request_view()},
)->pack;

$mw->Button(
	-width => 25,
    	-text    => 'Statystyki',
	-background => '#a865f0',
    	-command => sub{statistics_view()},
)->pack;

$mw->Button(
	-width => 25,
    	-text    => 'Wyjdz',
	-background => 'red',
    	-command => sub{ exit() },
)->pack;


MainLoop;

sub statistics_view{

}

sub add_request_view{
	my $rw = $mw->Toplevel();
	#label i pole dla adresu strony
	$rw->Label(-text => 'Adres strony:')->pack;
	my $siteadress = $rw->Entry(
		-width => 50,
	)->pack;
	#label i pole dla adresu kontaktowego
	$rw->Label(-text => 'Adres korespondencyjny:')->pack;
	my $contact = $rw->Entry(
		-width => 50,
	)->pack;
	#label i pole dla opisu
	$rw->Label(-text => 'Opis problemu:')->pack;
	my $description = $rw->Entry(
		-width => 50,
	)->pack;
	#przycisk akceptacji
	$rw->Button(
	    	-text    => 'Wyslij',
		-background => 'green',
	    	-command => sub { dodaj_zgloszenie(); $rw->destroy},
	)->pack;
	#przycisk wyjscia z okna
	$rw->Button(
	    	-text    => 'Cofnij',
		-background => 'red',
	    	-command => sub { $rw->destroy},
	)->pack;
}

sub handle_request_view{
	
	
}

sub add_request{


}







