use inc::Module::Install 0.90;
use strict;
use warnings;

if ($Module::Install::AUTHOR) {
    require Module::Install::AuthorTests;
}

name 'MooseX-Types-Email';
all_from 'lib/MooseX/Types/Email.pm';

requires 'MooseX::Types::Moose';
requires 'Email::Valid';
requires 'Email::Abstract';

test_requires 'Test::More';
test_requires 'Test::Deep';
test_requires 'Test::Fatal';

author_tests 't/author';

auto_set_repository;

WriteAll();

