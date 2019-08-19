package Geo::Worker::Types;

use strict;
use warnings;

use Type::Library
  -base,
  -declare => qw( Primitives Clause Clauses );
use Type::Utils -all;
use Types::Standard -types;

our $VERSION = '0.01';

declare Primitives, as enum( [ qw{ Node Way Relation Tag } ] );
declare Clause,  as Str;
declare Clauses, as ArrayRef [Clause];

1;
__END__

=encoding utf-8

=head1 NAME

Geo::Worker::Types - Types constraints for Geo::Worker objects

=head1 SYNOPSIS

  use Geo::Worker::Types;

=head1 DESCRIPTION

Geo::Worker::Types 

=head1 AUTHOR

Marco Arthur E<lt>arthurpbs@gmail.comE<gt>

=head1 COPYRIGHT

Copyright 2019- Marco Arthur

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
