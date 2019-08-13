package Geo::BoundBox;

use 5.028;
use experimental qw( signatures );
use Moose;
use Carp;

with 'Throwable';


has [ qw( xmin xmax ymin ymax ) ] => (
	is => 'ro',
	isa => 'Float',
	required => 1,
);

sub BUILD( $self )  {

	my @args = qw( xmin xmax ymin ymax );

	for ( my ( $argmin, $argmax ) = @args ) { 

		# min > max: throw error
		$self->throw( 
			sprintf "%s (%s)  greater then %s (%s)",
			$argmin, $argmax, $self->$argmin, $self->$argmax
		) if $self->$argmin > $self->$argmax;
	}
}

1;

__END__

=encoding utf-8

=head1 NAME

Geo::BoundBox - Represents a bound box

=head1 SYNOPSIS

  use Geo::BoundBox;


=head1 DESCRIPTION

Geo::BoundBox is

=head1 AUTHOR

Marco Arthur E<lt>arthurpbs@gmail.comE<gt>

=head1 COPYRIGHT

Copyright 2019- Marco Arthur

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
