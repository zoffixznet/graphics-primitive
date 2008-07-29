package Graphics::Primitive::Brush;
use Moose;
use Moose::Util::TypeConstraints;

enum 'LineCap' => qw(butt round square);
enum 'LineJoin' => qw(miter round bevel);

has 'color' => ( is => 'rw', isa => 'Graphics::Color' );
has 'dash_pattern' => ( is => 'rw', isa => 'ArrayRef' );
has 'width' => ( is => 'rw', isa => 'Int', default => 1 );
has 'line_cap' => ( is => 'rw', isa => 'LineCap', default => 'butt' );
has 'line_join' => ( is => 'rw', isa => 'LineJoin', default => 'miter' );

no Moose;
1;
__END__

=head1 NAME

Graphics::Primitive::Brush

=head1 DESCRIPTION

Graphics::Primitive::Brush represents the visible trace of 'ink' along a
path.

=head1 SYNOPSIS

  use Graphics::Primitive::Brush;

  my $stroke = Graphics::Primitive::Brush->new({
    line_cap => 'round',
    line_join => 'miter',
    width => 2
  });

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Graphics::Primitive::Brush.  Defaults to a width of 1,
a line_cap 'butt' and a line_join of 'miter'.

=back

=head2 Instance Methods

=over 4

=item I<dash_pattern>

Set/Get the dash pattern.  A dash pattern is an arrayref of numbers
representing the lengths of the various line segments of the dash.  Event
numbered elements are considered opaque and odd elements are transparent.

=item I<line_cap>

Set/Get the line_cap of this stroke.  Valid values are butt, round and square.

=item I<line_join>

Set/Get the line_join of this stroke. Valid values are miter, round and bevel.

=item I<width>

Set/Get the width of this stroke.  Defaults to 1

=back

=head1 AUTHOR

Cory Watson, C<< <gphat@cpan.org> >>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 BUGS

Please report any bugs or feature requests to C<bug-geometry-primitive at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Geometry-Primitive>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.