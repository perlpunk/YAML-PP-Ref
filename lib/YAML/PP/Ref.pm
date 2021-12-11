package YAML::PP::Ref;
use strict;
use warnings;

use base 'YAML::PP';
use YAML::PP::Ref::Parser;

sub new {
    my ($class, %args) = @_;
    $args{parser} ||= YAML::PP::Ref::Parser->new;
    $class->SUPER::new(%args);
}

1;
