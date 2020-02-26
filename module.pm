package module;

sub new {
   my $class = shift;
   my $self = {};
   $self->{foo} = "Foo";
   bless($self,$class);
}

sub do_print {
   my $self = shift;
   print $self->{foo} . "\n";
}

1;
