package Geo::Overpass::Query;

use 5.028;
our $VERSION = '0.01';
use Moose;
use experimental qw(signatures);
use Geo::Worker::Types qw( Clauses );

has clauses => (
    is       => 'ro',
    isa      => Clauses,
    default  => sub { [] },
    required => 1,
);

__PACKAGE__->meta->make_immutable;

1;
__END__

=encoding utf-8

=head1 NAME

Geo::Overpass::Query - Right now only a bag of string that should be a valid
query. But we plan to understand how to create a reasonable pseudo translator
for queries in the simple Overpass query language.

Something along the lines of DBIx ideas forming hashes strutuctures into
compound sql. See SYNOPSIS

=head1 SYNOPSIS

  use Geo::Overpass::Query;
  my $q = Geo::Overpass::Query->new( { nodes => { amenity => 'restaurant' } );
  say $q->translate

=head1 DESCRIPTION

Geo::Overpass::Query is a simple query constructor for Overpass API

=head1 AUTHOR

Marco Arthur E<lt>arthurpbs@gmail.comE<gt>

=head1 COPYRIGHT

Copyright 2019- Marco Arthur

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
