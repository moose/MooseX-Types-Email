use strict;
use warnings;
use Test::More tests => 2;
use Test::Fatal;

use MooseX::Types::Email qw/EmailAddress/;

ok(
    EmailAddress->check('bobtfish@bobtfish.net'),
    'bobtfish@bobtfish.net is an ok email',
);

like(
    EmailAddress->validate('wob'),
    qr/be a valid e-mail/,
    'validation fails, as "wob" is not a valid email',
);

