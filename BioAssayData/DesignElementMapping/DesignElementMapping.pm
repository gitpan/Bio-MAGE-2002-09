##############################
#
# Bio::MAGE::BioAssayData::DesignElementMapping
#
##############################
package Bio::MAGE::BioAssayData::DesignElementMapping;

use strict;
use Carp;
use Bio::MAGE::Base;
use Bio::MAGE::Association;
use Bio::MAGE::Extendable;


use vars qw($VERSION @ISA @EXPORT @EXPORT_OK $__ASSOCIATIONS);

require Exporter;

@ISA = qw(Bio::MAGE::Base Bio::MAGE::Extendable Exporter);
$VERSION = q[$Id: DesignElementMapping.pm,v 1.4 2002/08/24 16:12:16 jason_e_stewart Exp $];

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT_OK = qw();


=head1 Bio::MAGE::BioAssayData::DesignElementMapping

=head2 SYNOPSIS

  use Bio::MAGE::BioAssayData::DesignElementMapping;

    # creating an empty instance
  my $designelementmapping = Bio::MAGE::BioAssayData::DesignElementMapping->new();

    # creating an already populated instance
  my $designelementmapping = Bio::MAGE::BioAssayData::DesignElementMapping->new(designElementMaps=>$designElementMaps_value);

    # setting and retrieving object associations
  my $designElementMaps_val = $designelementmapping->designElementMaps();
  $designelementmapping->designElementMaps($value);


=head2 DESCRIPTION

From the MAGE-OM documentation for the C<DesignElementMapping> class:

Container of the mappings of the input DesignElement dimensions to the output DesignElement dimension.



=cut


=head2 INHERITANCE


Bio::MAGE::BioAssayData::DesignElementMapping has the following super classes

=over 


=item * Bio::MAGE::Extendable


=back


=head2 CLASS METHODS

The following methods can all be called without first having an
instance of the class via the Bio::MAGE::BioAssayData::DesignElementMapping->methodname() syntax.


=item new()

=item new(%args)


The object constructor C<new()> accepts the following optional
named-value style arguments:

=over


=item * designElementMaps

Sets the value of the designElementMaps association (from C<Bio::MAGE::BioAssayData::DesignElementMapping>).


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

Returns the full class name for this class, Bio::MAGE::BioAssayData::DesignElementMapping.

=cut

sub class_name {
  return q[Bio::MAGE::BioAssayData::DesignElementMapping];
}

=item $package_name = package()

Returns the unresolved package name (i.e. no 'Bio::MAGE::') of the
package that contains class, Bio::MAGE::BioAssayData::DesignElementMapping.

=cut

sub package {
  return q[BioAssayData];
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
  my @list = ('Bio::MAGE::Extendable');
  return @list;
}

=item @methods = attribute_methods()

returns the list of attribute accessor methods for this class.

=cut

sub attribute_methods {
  my $class = shift;
  my @list = ();
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
  my @list = ('designElementMaps');
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

Bio::MAGE::BioAssayData::DesignElementMapping: has the following attribute accessor methods:

=over



=back


=cut



BEGIN {
  $__ASSOCIATIONS = [
          'designElementMaps',
          bless( {
                   '__NAME' => 'designElementMaps',
                   '__IS_REF' => 1,
                   '__CARDINALITY' => '1..N',
                   '__CLASS_NAME' => 'DesignElementMap',
                   '__RANK' => '1',
                   '__DESCRIPTION' => 'The maps for the DesignElements.',
                   '__ORDERED' => 0
                 }, 'Bio::MAGE::Association' )
        ]

}

=head2 ASSOCIATIONS

Associations are references to other class objects which can be shared
by multiple class instances at the same time. In the Perl
implementation of MAGE-OM classes, associations are implemented using
three separate methods:

=over

=item get*

Retrieves the current value. If the association has list cardinality,
an array reference is returned.

=item set*

Sets the current value B<replacing> any existing value. If the
association has list cardinality, the argument must be an array
reference. Unless you know what you are doing, you probably should be
using the add* methods.

=item add*

This method exists only for associations with list cardinality. It
appends a list of objects to any values that may already be stored in
the association.

=back

Bio::MAGE::BioAssayData::DesignElementMapping: has the following association accessor methods:

=over


=item designElementMaps


From the MAGE-OM documentation for the C<designElementMaps> association:

The maps for the DesignElements.



=over


=item $array_ref = $designelementmapping->setDesignElementMaps($array_ref)

The restricted setter method for the designElementMaps association.

Input parameters: the value to which the designElementMaps association will be set : a reference to an array of objects of type C<Bio::MAGE::BioAssayData::DesignElementMap>

Return value: the current value of the designElementMaps association : a reference to an array of objects of type C<Bio::MAGE::BioAssayData::DesignElementMap>

Side effects: none

Exceptions: will call C<croak()> if no input parameters are specified, or
if too many input parameters are specified , or if $array_ref is not a reference to an array class C<Bio::MAGE::BioAssayData::DesignElementMap> instances

=cut

sub setDesignElementMaps {
  my $self = shift;
  croak(__PACKAGE__ . "::setDesignElementMaps: no arguments passed to setter")
    unless @_;
  croak(__PACKAGE__ . "::setDesignElementMaps: too many arguments passed to setter")
    if @_ > 1;
  my $val = shift;
    croak(__PACKAGE__ . "::setDesignElementMaps: expected array reference, got $self")
    unless UNIVERSAL::isa($val,'ARRAY');
  foreach my $val (@{$val}) {
    croak(__PACKAGE__ . "::setDesignElementMaps: wrong type: " . ref($val) . " expected Bio::MAGE::BioAssayData::DesignElementMap")
      unless UNIVERSAL::isa($val,'Bio::MAGE::BioAssayData::DesignElementMap');
  }

  return $self->{__DESIGNELEMENTMAPS} = $val;
}



=item $array_ref = $designelementmapping->getDesignElementMaps()

The restricted getter method for the designElementMaps association.

Input parameters: none

Return value: the current value of the designElementMaps association : a reference to an array of objects of type C<Bio::MAGE::BioAssayData::DesignElementMap>

Side effects: none

Exceptions: will call C<croak()> if any input parameters are specified

=cut

sub getDesignElementMaps {
  my $self = shift;
  croak(__PACKAGE__ . "::getDesignElementMaps: arguments passed to getter")
    if @_;
  return $self->{__DESIGNELEMENTMAPS};
}



=item $designelementmapping->addDesignElementMaps(@vals)

Because the designElementMaps association has list cardinality, it may store more
than one value. This method adds the current list of objects in the designElementMaps
association.

Input parameters: the list of values C<@vals> to add to the designElementMaps
association. B<NOTE>: submitting a single value is permitted.

Return value: none

Side effects: none

Exceptions: will call C<croak()> if no input parameters are specified
, or if any of the objects in @vals is not an instance of class C<Bio::MAGE::BioAssayData::DesignElementMap>

=cut

sub addDesignElementMaps {
  my $self = shift;
  croak(__PACKAGE__ . "::addDesignElementMaps: no arguments passed to setter")
    unless @_;
  my @vals = @_;
    foreach my $val (@vals) {
    croak(__PACKAGE__ . "::addDesignElementMaps: wrong type: " . ref($val) . " expected Bio::MAGE::BioAssayData::DesignElementMap")
      unless UNIVERSAL::isa($val,'Bio::MAGE::BioAssayData::DesignElementMap');
  }

  push(@{$self->{__DESIGNELEMENTMAPS}},@vals);
}



=back

Associations Inherited from Bio::MAGE::Extendable


=item propertySets


From the MAGE-OM documentation for the C<propertySets> association:

Allows specification of name/value pairs.  Meant to primarily help in-house, pipeline processing of instances by providing a place for values that aren't part of the specification proper.



=over


=item $array_ref = $extendable->setPropertySets($array_ref)

The restricted setter method for the propertySets association.

Input parameters: the value to which the propertySets association will be set : a reference to an array of objects of type C<Bio::MAGE::NameValueType>

Return value: the current value of the propertySets association : a reference to an array of objects of type C<Bio::MAGE::NameValueType>

Side effects: none

Exceptions: will call C<croak()> if no input parameters are specified, or
if too many input parameters are specified , or if $array_ref is not a reference to an array class C<Bio::MAGE::NameValueType> instances

=cut


=item $array_ref = $extendable->getPropertySets()

The restricted getter method for the propertySets association.

Input parameters: none

Return value: the current value of the propertySets association : a reference to an array of objects of type C<Bio::MAGE::NameValueType>

Side effects: none

Exceptions: will call C<croak()> if any input parameters are specified

=cut


=item $extendable->addPropertySets(@vals)

Because the propertySets association has list cardinality, it may store more
than one value. This method adds the current list of objects in the propertySets
association.

Input parameters: the list of values C<@vals> to add to the propertySets
association. B<NOTE>: submitting a single value is permitted.

Return value: none

Side effects: none

Exceptions: will call C<croak()> if no input parameters are specified
, or if any of the objects in @vals is not an instance of class C<Bio::MAGE::NameValueType>

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

