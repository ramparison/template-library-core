################################################################################
# This is 'namespaces/standard/quattor/blockdevices.tpl', a pan-templates's file
################################################################################
#
# VERSION:    3.2.9, 25/11/09 16:16
# AUTHOR:     Martin Bock
# MAINTAINER: Marco Emilio Poleggi <Marco.Emilio.Poleggi@cern.ch>, German Cancio <German.Cancio.Melia@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
#
# type definition for block devices.
#
#
#
# DESCRIPTION: @DESCRIPTION@

#
############################################################

declaration template quattor/blockdevices;

include {"quattor/physdevices"};

type blockdev_string = string with exists ("/system/blockdevices/" + SELF)
    || error (SELF + " must be a path relative to /system/blockdevices");
type physdev_string = string with exists ("/system/blockdevices/physical_devs/" + SELF) || error (SELF + " must be a path relative to "
    + "/system/blockdevices/physical_devs");
type parttype_string = string with ( SELF=='primary' ||
    SELF=='extended' || SELF=='logical');
type vg_string = string with exists ("/system/blockdevices/volume_groups/"
    + SELF) ||
    error (SELF
	+ "must be a path relative to /system/blockdevices/volume_groups");

type blockdevices_partition_type = {
	# Device holding the partition
	"holding_dev" : physdev_string
	"size" ? long # "Size in MB"
	"ksopts" ? string # "Kickstart options for disk e.g. --grow, only for installation (AII)"
	"type" : parttype_string = "primary"
};

#
# Software RAID using the MD device
#
type blockdevices_md_type = {
    "device_list" : blockdev_string[] # "List of device paths"
    "raid_level" : string with match (SELF,'RAID[0156]')
    "stripe_size" : long = 64 # "Stripe size in KB"
    "num_spares" ? long # "Number of spare devices"
};

#
# LVM
#
type blockdevices_logicalvolumes_type = {
    "size" ? long # "Size in MB"
    "volume_group" : vg_string
    "stripe_size" ? long # Size of the stripe. If not used, no striping
};

type blockdevices_lvm_type = {
    "device_list" : blockdev_string[] # "List of device paths"
};


# Files containing filesystems, to be mounted with loopback
# option.
type blockdevices_file_type = {
	"size" : long # "Size in MB"
	"owner" : string = "root" # "User owning the file"
	"group" : string = "root" # "Group owning the file"
	"permissions" ? long # "Permission bits for the file"
};

# String defining either a port or a hardware RAID unit.
type raid_device_path = string with exists ("/system/blockdevices/hwraid"
    + SELF)
    || is_card_port (SELF);

type blockdevices_disk_type = {
    "device_path" ? raid_device_path
    "label" : string with match (SELF, ("^(none|msdos|gpt|aix|bsd)$"))
    "readahead" ? long # Blocks for readahead
};

type card_port_string = string with is_card_port (SELF);

# String modelling
# New block device describing hardware RAID.
type blockdevices_hwraid_type = {
    "device_list" : card_port_string[]
    "raid_level" ? string with match (SELF,'^(RAID1|RAID5|RAID6|JBOD)$')
    "num_spares" ? long # "Number of spares required"
    "stripe_size" ? long # "Stripe size in KB"
};


# TMPFS devices (dummy devices)
type blockdevices_tmpfs_type = {
};

type structure_blockdevices = {
#    include component_type
    "physical_devs" ? blockdevices_disk_type {}
    "volume_groups" ? blockdevices_lvm_type {}
    "logical_volumes" ? blockdevices_logicalvolumes_type {}
    "md" ? blockdevices_md_type {}
    "partitions" ? blockdevices_partition_type {}
    "files" ? blockdevices_file_type {}
    "hwraid" ?  blockdevices_hwraid_type {}
    "tmpfs" ? blockdevices_tmpfs_type
};