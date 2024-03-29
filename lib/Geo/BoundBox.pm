package Geo::BoundBox;

use 5.028;
use Moose;

with 'Throwable';

use constant { 
	LATLOGMIN => -90.0,
	LATLOGMAX => 90.0,
};


has [ qw( xmin xmax ymin ymax ) ] => (
	is => 'ro',
	isa => 'Num',
	required => 1,
);

sub BUILD {
	my $self = shift;
	my %args = ( xmin => 'xmax', ymin => 'ymax' );

	while ( my ( $argmin, $argmax ) = each %args ) { 
		# min < -90: throw error
		$self->throw(
			error => sprintf(
				"%s (%s) below minimun",
				$argmin, $self->$argmin
			)
		) if $self->$argmin < LATLOGMIN;

		# max > 90: throw error
		$self->throw(
			error => sprintf(
				"%s (%s) above maximum",
				$argmax, $self->$argmax
			)
		) if $self->$argmax > LATLOGMAX;

		# min > max: throw error
		$self->throw( 
			error => sprintf(
				"%s (%s)  greater than %s (%s)",
				$argmin, $self->$argmin, $argmax, $self->$argmax
			)
		) if $self->$argmin >= $self->$argmax;

	}
}

__PACKAGE__->meta->make_immutable;


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
