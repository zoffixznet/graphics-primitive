package Graphics::Primitive::Stroke;
use Moose;
use Moose::Util::TypeConstraints;

enum 'LineCap' => qw(butt round square);
enum 'LineJoin' => qw(miter round bevel);

has 'width' => ( is => 'rw', isa => 'Int', default => 1 );
has 'line_cap' => ( is => 'rw', isa => 'LineCap', default => 'butt' );
has 'line_join' => ( is => 'rw', isa => 'LineJoin', default => 'miter' );

1;
__END__

=head1 NAME

Graphics::Primitive::Stroke

=head1 DESCRIPTION

Graphics::Primitive::Stroke represents the visible trace of 'ink' along a
path.

=head1 SYNOPSIS

  use Graphics::Primitive::Stroke;

  my $stroke = Graphics::Primitive::Stroke->new({
    line_cap => 'round',
    line_join => 'miter',
    width => 2
  });

=head1 METHODS

=head2 Constructor

=over 4

=item new

Creates a new Graphics::Primitive::Stroke.  Defaults to a width of 1,
a line_cap 'butt' and a line_join of 'miter'.

=back

=head2 Class Methods

=over 4

=item line_cap

Set/Get the line_cap of this stroke.

=item line_join

Set/Get the line_join of this stroke.

=item width

Set/Get the width of this stroke.

=back

=head1 AUTHOR

Cory Watson, C<< <cory.watson at iinteractive.com> >>

=head1 ACKNOWLEDGEMENTS

Many of the ideas here come from my experience using the Cairo library.  It is
entirely possible that 

=head1 BUGS

Please report any bugs or feature requests to C<bug-geometry-primitive at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Geometry-Primitive>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.