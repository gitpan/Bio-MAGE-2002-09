##############################
#
# Bio::MAGE::Measurement::TimeUnit
#
##############################
package Bio::MAGE::Measurement::TimeUnit;

use strict;
use Carp;
use Bio::MAGE::Base;
use Bio::MAGE::Association;
use Bio::MAGE::Measurement::Unit;


use vars qw($VERSION @ISA @EXPORT @EXPORT_OK $__ASSOCIATIONS);

require Exporter;

@ISA = qw(Bio::MAGE::Base Bio::MAGE::Measurement::Unit Exporter);
$VERSION = q[$Id: TimeUnit.pm,v 1.3 2002/06/17 21:11:41 jason_e_stewart Exp $];

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT_OK = qw();


=head1 Bio::MAGE::Measurement::TimeUnit

=head2 SYNOPSIS

  use Bio::MAGE::Measurement::TimeUnit;

    # creating an empty instance
  my $timeunit = Bio::MAGE::Measurement::TimeUnit->new();

    # creating an already populated instance
  my $timeunit = Bio::MAGE::Measurement::TimeUnit->new(unitNameCV=>$unitNameCV_value);

    # setting and retrieving object attributes
  my $unitNameCV_val = $timeunit->unitNameCV();
  $timeunit->unitNameCV($value);


=head2 DESCRIPTION

From the MAGE-OM documentation for the C<TimeUnit> class:

Time



=cut


=head2 INHERITANCE


Bio::MAGE::Measurement::TimeUnit has the following super classes

=over 


=item * Bio::MAGE::Measurement::Unit


=back


=head2 CLASS METHODS

The following methods can all be called without first having an
instance of the class via the Bio::MAGE::Measurement::TimeUnit->methodname() syntax.


=item new()

=item new(%args)


The object constructor C<new()> accepts the following optional
named-value style arguments:

=over


=item * unitNameCV

Sets the value of the unitNameCV attribute (from C<Bio::MAGE::Measurement::TimeUnit>).


=item * unitName

Sets the value of the unitName attribute (from C<Bio::MAGE::Measurement::Unit>).


=item * propertySets

Sets the value of the propertySets association (from C<Bio::MAGE::Extendable>).


=back



=cut

#
# code for new() inherited from Base.pm
#

=item $obj->set_slots(%parameters)

=item $obj->set_slots(\@name_list, \@value_list)

The C<set_slots()> method is used to set a number of slots at the same
time. It has two different invocation methods. The first takes a named
parameter list, and the second takes two array references.

B<Return value>: none

B<Side effects>: will call C<croak()> if a slot_name is used that the class
does not define.

=cut

#
# code for set_slots() inherited from Base.pm
#

=item $obj->get_slots(@name_list)

The C<get_slots()> method is used to get the values of a number of
slots at the same time.

B<Return value>: a list of instance objects

B<Side effects>: none

=cut

#
# code for get_slots() inherited from Base.pm
#

=item $val = $obj->set_slot($name,$val)

The C<set_slot()> method sets the slot C<$name> to the value C<$val>

B<Return value>: the new value of the slot, i.e. C<$val>

B<Side effects>: none

=cut

#
# code for set_slot() inherited from Base.pm
#

=item $val = $obj->get_slot($name)

The C<get_slot()> method is used to get the values of a number of
slots at the same time.

B<Return value>: a single slot value, or undef if the slot has not been
initialized.

B<Side effects>: none

=cut

#
# code for get_slot() inherited from Base.pm
#

=item @names = $obj->get_slot_names()

The C<get_slot_names()> method is used to retrieve the name of all
slots defined for a given object.

B<Return value>: a single slot value, or undef if the slot has not been
initialized.

B<Side effects>: none

=cut

#
# code for get_slot_names() inherited from Base.pm
#



=item $name = class_name()

Returns the full class name for this class, Bio::MAGE::Measurement::TimeUnit.

=cut

sub class_name {
  return q[Bio::MAGE::Measurement::TimeUnit];
}

=item $package_name = package()

Returns the unresolved package name (i.e. no 'Bio::MAGE::') of the
package that contains class, Bio::MAGE::Measurement::TimeUnit.

=cut

sub package {
  return q[Measurement];
}

=item @classes = subclasses()

returns the list of subclasses for this class.

=cut

sub subclasses {
  my @list = ();
  return @list;
}

=item @classes = superclasses()

returns the list of superclasses for this class.

=cut

sub superclasses {
  my @list = ('Bio::MAGE::Measurement::Unit');
  return @list;
}

=item @methods = attribute_methods()

returns the list of attribute accessor methods for this class.

=cut

sub attribute_methods {
  my $class = shift;
  my @list = ('unitNameCV');
  if ($class->superclasses()) {
    foreach ($class->superclasses()) {
      push(@list,$_->attribute_methods());
    }
  }
  return @list;
}

=item @methods = association_methods()

returns the list of association accessor methods for this class.

=cut

sub association_methods {
  my $class = shift;
  my @list = ();
  if ($class->superclasses()) {
    foreach ($class->superclasses()) {
      push(@list,$_->association_methods());
    }
  }
  return @list;
}

=item %assns = associations()

returns the association meta-information in a hash where the keys are
the association names and the values are C<Bio::MAGE::Association>
objects that provide the meta-information for the association.

=cut

sub associations {
  my $class = shift;
  my @list = ();
  # superclasses first
  if ($class->superclasses()) {
    foreach ($class->superclasses()) {
      push(@list,$_->associations());
    }
  }
  # then associations from this class
  if (defined $__ASSOCIATIONS) {
    push(@list,@{$__ASSOCIATIONS})
  }
  return @list;
}


=head2 ATTRIBUTES

Attributes are simple data types that belong to a single instance of a
class. In the Perl implementation of the MAGE-OM classes, the
interface to attributes is implemented using separate setter and
getter methods for each attribute.

Bio::MAGE::Measurement::TimeUnit: has the following attribute accessor methods:

=over


=item unitNameCV

Methods for the unitNameCV attribute.

=over


=item $val = $timeunit->setUnitNameCV($val)

The restricted setter method for the unitNameCV attribute.

Input parameters: the value to which the unitNameCV attribute will be set 

Return value: the current value of the unitNameCV attribute 

Side effects: none

Exceptions: will call C<croak()> if no input parameters are specified, or
if too many input parameters are specified 

=cut

sub setUnitNameCV {
  my $self = shift;
  croak(__PACKAGE__ . "::setUnitNameCV: no arguments passed to setter")
    unless @_;
  croak(__PACKAGE__ . "::setUnitNameCV: too many arguments passed to setter")
    if @_ > 1;
  my $val = shift;
  
  return $self->{__UNITNAMECV} = $val;
}



=item $val = $timeunit->getUnitNameCV()

The restricted getter method for the unitNameCV attribute.

Input parameters: none

Return value: the current value of the unitNameCV attribute 

Side effects: none

Exceptions: will call C<croak()> if any input parameters are specified

=cut

sub getUnitNameCV {
  my $self = shift;
  croak(__PACKAGE__ . "::getUnitNameCV: arguments passed to getter")
    if @_;
  return $self->{__UNITNAMECV};
}




=back

Attributes Inherited from Bio::MAGE::Measurement::Unit


=item unitName

From the MAGE-OM documentation for the C<unitName> attribute:

The name of the unit.



=over


=item $val = $unit->setUnitName($val)

The restricted setter method for the unitName attribute.

Input parameters: the value to which the unitName attribute will be set 

Return value: the current value of the unitName attribute 

Side effects: none

Exceptions: will call C<croak()> if no input parameters are specified, or
if too many input parameters are specified 

=cut


=item $val = $unit->getUnitName()

The restricted getter method for the unitName attribute.

Input parameters: none

Return value: the current value of the unitName attribute 

Side effects: none

Exceptions: will call C<croak()> if any input parameters are specified

=cut



=back



=back


=cut



sub initialize {
  my $self = shift;
  return 1;
}



=head1 BUGS

Please send bug reports to mged-mage@lists.sf.net

=head1 AUTHOR

Jason E. Stewart (jason@openinformatics.com)

=head1 SEE ALSO

perl(1).

=cut

#
# End the module by returning a true value
#
1;

