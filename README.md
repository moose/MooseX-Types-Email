# NAME

MooseX::Types::Email - Email address validation type constraints for Moose.

# VERSION

version 0.006

# SYNOPSIS

    package MyClass;
    use Moose;
    use MooseX::Types::Email qw/EmailAddress EmailMessage EmailAddresses EmailMessages/;
    use namespace::autoclean;

    has email => ( isa => EmailAddress, required => 1, is => 'ro' );
    has message => ( isa => EmailMessage, required => 1, is => 'ro' );

    has emails => ( isa => EmailAddresses, required => 1, is => 'ro' );
    has messages => ( isa => EmailMessages, required => 1, is => 'ro' );

# DESCRIPTION

Moose type constraints which uses [Email::Valid](http://search.cpan.org/perldoc?Email::Valid) and [Email::Abstract](http://search.cpan.org/perldoc?Email::Abstract) to check
for valid email addresses and messages.  Types that support both single items
and an arrayref of items are available.

Note that `EmailMessage` must be an object that can be passed to
[Email::Abstract](http://search.cpan.org/perldoc?Email::Abstract). Currently, constraining strings is not supported due to the
leniency of Email::Abstract.

# SEE ALSO

- [Moose::Util::TypeConstraints](http://search.cpan.org/perldoc?Moose::Util::TypeConstraints)
- [MooseX::Types](http://search.cpan.org/perldoc?MooseX::Types)
- [Email::Valid](http://search.cpan.org/perldoc?Email::Valid)
- [Email::Abstract](http://search.cpan.org/perldoc?Email::Abstract)

# ORIGIN

Shamelessly extracted from [Reaction::Types::Email](http://search.cpan.org/perldoc?Reaction::Types::Email).

# ACKNOWLEDGEMENTS

Chris Nehren `<apeiron@cpan.org>` added support for validing email
messages.

Karen Etheridge `<ether@cpan.org>` added support for lists of email
addresses and messages.

# AUTHOR

Tomas Doran (t0m) <bobtfish@bobtfish.net

# COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Tomas Doran (t0m).

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
