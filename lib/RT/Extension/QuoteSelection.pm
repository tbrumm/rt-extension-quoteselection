use strict;
use warnings;
package RT::Extension::QuoteSelection;

our $VERSION = '0.01';

RT->AddJavaScript("RTx-QuoteSelection.js");

=encoding utf8

=head1 NAME

RT-Extension-QuoteSelection - Quotes selected text, if any, when replying/commenting to tickets

=head1 WHAT'S THIS DO?

Highlight a snippet of text on the ticket display page and click a Reply or
Comment link.  I<Voilà!>  Your highlighted text (and B<only> your highlighted
text) is quoted in the message box.

Both the per-transaction Reply/Comment links and the Reply/Comment links under
the Actions menu will use the selected text, if any.

=head1 CAVEATS

User signatures aren't inserted when highlighted text is quoted.

The per-transaction Reply/Comment links will consider your update a response to
the transaction even if you quote from an entirely different transaction.  This
doesn't matter to most people, and only affects email threading.

=head1 INSTALLATION 

=over

=item perl Makefile.PL

=item make

=item make install

May need root permissions

=item Edit your /opt/rt4/etc/RT_SiteConfig.pm

Add this line:

    Set(@Plugins, qw(RT::Extension::QuoteSelection));

or add C<RT::Extension::QuoteSelection> to your existing C<@Plugins> line.

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 AUTHOR

Thomas Sibley <trs@bestpractical.com>

=head1 BUGS

All bugs should be reported via mail to
L<bug-RT-Extension-QuoteSelection@rt.cpan.org|mailto:bug-RT-Extension-QuoteSelection@rt.cpan.org>
or via the web at
L<rt.cpan.org|http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-QuoteSelection>.


=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2012 by Best Practical Solutions

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;
