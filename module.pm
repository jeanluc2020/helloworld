package module;

sub new {
   my $class = shift;
   my $self = {};
   my $value = shift;
   $value ||= "Foo";
   $self->{foo} = $value;
   bless($self,$class);
}

sub do_print {
   my $self = shift;
   print $self->{foo} . "\n";
}

sub doit {
   my $self = shift;
   return $self->{foo};
}

1;
