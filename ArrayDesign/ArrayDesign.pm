##############################
#
# Bio::MAGE::ArrayDesign
#
##############################
package Bio::MAGE::ArrayDesign;

use strict;
use Carp;
use Bio::MAGE::Base;
require Exporter;
use Tie::IxHash;

use Bio::MAGE::ArrayDesign::ArrayDesign;
use Bio::MAGE::ArrayDesign::PhysicalArrayDesign;
use Bio::MAGE::ArrayDesign::ZoneLayout;
use Bio::MAGE::ArrayDesign::ZoneGroup;
use Bio::MAGE::ArrayDesign::Zone;
use Bio::MAGE::ArrayDesign::ReporterGroup;
use Bio::MAGE::ArrayDesign::FeatureGroup;
use Bio::MAGE::ArrayDesign::DesignElementGroup;
use Bio::MAGE::ArrayDesign::CompositeGroup;


use vars qw(@ISA $VERSION @EXPORT_OK %EXPORT_TAGS $__MAGEML_LISTS);

@ISA = qw(Bio::MAGE::Base Exporter);
$VERSION = q[$Id: ArrayDesign.pm,v 1.8 2002/10/13 21:56:03 jason_e_stewart Exp $];

sub initialize {
  my $self = shift;
  $self->reportergroup_list([]);
  $self->compositegroup_list([]);
  $self->arraydesign_list([]);

  $self->mageml_lists([ReporterGroup=>$self->reportergroup_list,
	CompositeGroup=>$self->compositegroup_list,
	ArrayDesign=>$self->arraydesign_list]);
  $self->tagname(q[ArrayDesign_package]);
  return 1;
}



=head1 NAME

Bio::MAGE::ArrayDesign - Container module for classes in the MAGE ArrayDesign package 

=head1 SYNOPSIS

  use Bio::MAGE::ArrayDesign;

=head1 DESCRIPTION

This is a I<package> module that encapsulates a number of classes in
the Bio::MAGE hierarchy. These classes belong to the
ArrayDesign package of the MAGE-OM object model.

=head1 CLASSES

The Bio::MAGE::ArrayDesign module contains the following
Bio::MAGE classes:

=over


=item * ArrayDesign


=item * PhysicalArrayDesign


=item * ZoneLayout


=item * ZoneGroup


=item * Zone


=item * ReporterGroup


=item * FeatureGroup


=item * DesignElementGroup


=item * CompositeGroup


=back



=head1 CLASS METHODS

=over

=item @class_list = Bio::MAGE::ArrayDesign::classes();

This method returns a list of non-fully qualified class names
(i.e. they do not have 'Bio::MAGE::' as a prefix) in this package.

=cut

sub classes {
  return ('ArrayDesign', 'PhysicalArrayDesign', 'ZoneLayout', 'ZoneGroup', 'Zone', 'ReporterGroup', 'FeatureGroup', 'DesignElementGroup', 'CompositeGroup');
}

=item $obj_ref = Bio::MAGE::ArrayDesign->new(%parameters)

=item $obj_ref_copy = $obj_ref->new()

The C<new()> method is the class constructor. If invoked with an
existing object instance, it is a copy constructor.

B<Return value>: It returns a reference to an object of class
C<Bio::MAGE::ArrayDesign>.

B<Side effects>: It invokes the C<initialize()> method if it is defined
by the class.

=cut





=back

=head1 INSTANCE METHODS

=over

=cut

=item $array_ref = $arraydesign->getReporterGroup_list()

This method handles the list for the C<Bio::MAGE::ARRAY(0x10499078)::ReporterGroup> class. It returns a reference to an array of the
class objects of that type associated with this package object.

This is useful when retrieving data from parsed MAGE-ML file.

=cut

sub getReporterGroup_list {
  my $self = shift;
  return $self->reportergroup_list();
}

=item $array_ref = $arraydesign->getCompositeGroup_list()

This method handles the list for the C<Bio::MAGE::ARRAY(0x10499078)::CompositeGroup> class. It returns a reference to an array of the
class objects of that type associated with this package object.

This is useful when retrieving data from parsed MAGE-ML file.

=cut

sub getCompositeGroup_list {
  my $self = shift;
  return $self->compositegroup_list();
}

=item $array_ref = $arraydesign->getArrayDesign_list()

This method handles the list for the C<Bio::MAGE::ARRAY(0x10499078)::ArrayDesign> class. It returns a reference to an array of the
class objects of that type associated with this package object.

This is useful when retrieving data from parsed MAGE-ML file.

=cut

sub getArrayDesign_list {
  my $self = shift;
  return $self->arraydesign_list();
}



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




=item $val = $arraydesign->reportergroup_list()

=item $val = $arraydesign->reportergroup_list($val)

This is the unified setter/getter method for the reportergroup_list slot. If
C<$val> is specified, the setter method is invoked, with no
parameters, the getter method is invoked.

Input parameters: the optional C<$val> will invoke the setter method.

Return value: for both setter and getter the current value of the reportergroup_list
slot

Side effects: none

Exceptions: none

=cut

sub reportergroup_list {
  my $self = shift;
  if (@_) {
    $self->{__REPORTERGROUP_LIST} = shift;
  }
  return $self->{__REPORTERGROUP_LIST};
}

=item $val = $arraydesign->compositegroup_list()

=item $val = $arraydesign->compositegroup_list($val)

This is the unified setter/getter method for the compositegroup_list slot. If
C<$val> is specified, the setter method is invoked, with no
parameters, the getter method is invoked.

Input parameters: the optional C<$val> will invoke the setter method.

Return value: for both setter and getter the current value of the compositegroup_list
slot

Side effects: none

Exceptions: none

=cut

sub compositegroup_list {
  my $self = shift;
  if (@_) {
    $self->{__COMPOSITEGROUP_LIST} = shift;
  }
  return $self->{__COMPOSITEGROUP_LIST};
}

=item $val = $arraydesign->arraydesign_list()

=item $val = $arraydesign->arraydesign_list($val)

This is the unified setter/getter method for the arraydesign_list slot. If
C<$val> is specified, the setter method is invoked, with no
parameters, the getter method is invoked.

Input parameters: the optional C<$val> will invoke the setter method.

Return value: for both setter and getter the current value of the arraydesign_list
slot

Side effects: none

Exceptions: none

=cut

sub arraydesign_list {
  my $self = shift;
  if (@_) {
    $self->{__ARRAYDESIGN_LIST} = shift;
  }
  return $self->{__ARRAYDESIGN_LIST};
}

=item $val = $arraydesign->mageml_lists()

=item $val = $arraydesign->mageml_lists($val)

This is the unified setter/getter method for the mageml_lists slot. If
C<$val> is specified, the setter method is invoked, with no
parameters, the getter method is invoked.

Input parameters: the optional C<$val> will invoke the setter method.

Return value: for both setter and getter the current value of the mageml_lists
slot

Side effects: none

Exceptions: none

=cut

sub mageml_lists {
  my $self = shift;
  if (@_) {
    $self->{__MAGEML_LISTS} = shift;
  }
  return $self->{__MAGEML_LISTS};
}

=item $val = $arraydesign->tagname()

=item $val = $arraydesign->tagname($val)

This is the unified setter/getter method for the tagname slot. If
C<$val> is specified, the setter method is invoked, with no
parameters, the getter method is invoked.

Input parameters: the optional C<$val> will invoke the setter method.

Return value: for both setter and getter the current value of the tagname
slot

Side effects: none

Exceptions: none

=cut

sub tagname {
  my $self = shift;
  if (@_) {
    $self->{__TAGNAME} = shift;
  }
  return $self->{__TAGNAME};
}




=back

=cut

sub register {
  my ($self,$obj) = @_;

  # should we have the identifier checking code here??
  my %mageml_lists = @{$self->mageml_lists()};
  my $list_ref;
  foreach my $class (keys %mageml_lists) {
    if ($obj->isa("Bio::MAGE::ArrayDesign::$class")) {
      $list_ref = $mageml_lists{$class};
      last;
    }
  }
  return unless defined $list_ref;
  push(@{$list_ref}, $obj);
}

sub obj2mageml {
  my ($self,$writer) = @_;

  my $empty = 0;
  my $tag = $self->tagname();
  $writer->write_start_tag($tag,$empty);

  # we use IxHash because we need to preserve insertion order
  tie my %list_hash, 'Tie::IxHash', @{$self->mageml_lists()};
  foreach my $list_name (keys %list_hash) {
    if (scalar @{$list_hash{$list_name}}) {
      my $tag = $list_name . '_assnlist';
      $writer->write_start_tag($tag,$empty);
      foreach my $obj (@{$list_hash{$list_name}}) {
	# this may seem a little odd, but the writer knows how to write out 
	# the objects. Create a subclass of $OPTIONS{namespace}::XMLWriter to 
	# modify the output of the obj2mageml process
	$writer->obj2mageml($obj);
      }
      $writer->write_end_tag($tag);
    }
  }

  # and we're done
  $writer->write_end_tag($tag);

}


###############################################################################
# obj2database
###############################################################################
sub obj2database {
  my ($self,$writer) = @_;

  my $empty = 0;
  my $tag = $self->tagname();
  #$writer->write_start_tag($tag,$empty);

  # we use IxHash because we need to preserve insertion order
  tie my %list_hash, 'Tie::IxHash', @{$self->mageml_lists()};
  foreach my $list_name (keys %list_hash) {
    if (scalar @{$list_hash{$list_name}}) {
      my $tag = $list_name . '_assnlist';
      #$writer->write_start_tag($tag,$empty);
      foreach my $obj (@{$list_hash{$list_name}}) {
	# this may seem a little odd, but the writer knows how to write out
	# the objects. Create a subclass of Bio::MAGE::XMLWriter to
	# modify the output of the obj2mageml process
	$writer->obj2database($obj);
      }
      #$writer->write_end_tag($tag);
    }
  }

  # and we're done
  #$writer->write_end_tag($tag);

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

