use strict;
use Test::More;
use Test::Moose;
use Test::Fatal;
use Geo::BoundBox;

# attributes for a bound box
for ( qw{ xmin xmax ymin ymax } ) { 
	has_attribute_ok( 'Geo::BoundBox' , $_ );
}

my @atts = qw( xmin xmax ymin ymax );
my $good_args =  [ [1,2,3,4], [10,20,30,40] ];
my $bad_args = [ [2,1,3,4], [1,1,1,1] ];

# instantiate a well formed
for ( @$good_args ) {
	my %args;
	@args{ @atts } = @$_;
	isa_ok(
		my $bb = Geo::BoundBox->new( \%args ),
		'Geo::BoundBox',
		'Instantiate correctly'
	);
}

# try to instantiate a wrong BoundBox
for ( @$bad_args ) {
	my %args;
	@args{ @atts } = @$_;

	like(
		exception { my $bb = Geo::BoundBox->new( \%args ); },
		qr/greater than/,
		'Error message match'
	);
}


done_testing;
