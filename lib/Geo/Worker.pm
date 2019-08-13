package Geo::Worker;

use 5.028;
our $VERSION = '0.01';
use Moose;

has bb => (
	is => 'ro',
	isa => 'Geo::BoundBox',
	required => 1,
);

1;

__END__

=encoding utf-8

=head1 NAME

Geo::Worker - A Minion Worker to retrieve xml file from a boundbox

=head1 SYNOPSIS

  use Geo::Worker;

  my $w = Geo::Worker->( [-23.55, -23.33, -44.4, -44.2 ] );
  $w->run();

=head1 DESCRIPTION

Geo::Worker is

=head1 AUTHOR

Marco Arthur E<lt>arthurpbs@gmail.comE<gt>

=head1 COPYRIGHT

Copyright 2019- Marco Arthur

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
