#!/usr/bin/perl

package Methods::CheckNames;

use strict;
use warnings;

use XSLoader;

our $VERSION = "0.03";

eval {
	require XSLoader;
	XSLoader::load(__PACKAGE__, $VERSION);
	1;
} or do {
	require DynaLoader;
	push our @ISA, 'DynaLoader';
	__PACKAGE__->bootstrap($VERSION);
};

__PACKAGE__

__END__

=pod

=head1 NAME

Methods::CheckNames - Statically check for named methods

=head1 SYNOPSIS

	my Foo $object;

	$object->method(); # dies at compile time unless a method can be found

=head1 DESCRIPTION

This module enables simplistic checking of method names for typed my variables.

It's not much more than a proof of concept.

=head1 TODO

=over 4

=item *

Use the C<can> meta method instead of C<gv_fetchmethod>

=item *

Make the checking pluggable

=item *

Checking should be lexically scoped. Not a huge issue for now, since C<my Foo
$var> is not commonly used.

=back

=head1 VERSION CONTROL

This module is maintained using Darcs. You can get the latest version from
L<http://nothingmuch.woobling.org/code>, and use C<darcs send> to commit
changes.

=head1 AUTHOR

Yuval Kogman E<lt>nothingmuch@woobling.orgE<gt>

=head1 COPYRIGHT

	Copyright (c) 2008 Yuval Kogman. All rights reserved
	This program is free software; you can redistribute
	it and/or modify it under the same terms as Perl itself.

=cut

