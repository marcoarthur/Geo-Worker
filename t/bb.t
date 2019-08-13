use strict;
use Test::More;
use Test::Moose;
use Geo::BoundBox;

# replace with the actual test
for ( qw{ xmin, xmax, ymin, ymax } ) { 
	has_attribute_ok( 'Geo::BoundBox' , $_ );
}

# constructor fails when attribute in wrong order

ok 1;


done_testing;
