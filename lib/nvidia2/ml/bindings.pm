# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.7
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package nvidia2::ml::bindings;

our $VERSION = 5.00;

use base qw(Exporter);
use base qw(DynaLoader);
package bindingsc;
bootstrap nvidia2::ml::bindings;
package nvidia2::ml::bindings;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package nvidia2::ml::bindings;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package nvidia2::ml::bindings;

*new_nvmlHwbcEntry = *bindingsc::new_nvmlHwbcEntry;
*delete_nvmlHwbcEntry = *bindingsc::delete_nvmlHwbcEntry;
*nvmlHwbcEntry_getitem = *bindingsc::nvmlHwbcEntry_getitem;
*nvmlHwbcEntry_setitem = *bindingsc::nvmlHwbcEntry_setitem;
*nvmlInit = *bindingsc::nvmlInit;
*nvmlShutdown = *bindingsc::nvmlShutdown;
*nvmlErrorString = *bindingsc::nvmlErrorString;
*nvmlSystemGetDriverVersion = *bindingsc::nvmlSystemGetDriverVersion;
*nvmlSystemGetNVMLVersion = *bindingsc::nvmlSystemGetNVMLVersion;
*nvmlSystemGetProcessName = *bindingsc::nvmlSystemGetProcessName;
*nvmlUnitGetCount = *bindingsc::nvmlUnitGetCount;
*nvmlUnitGetHandleByIndex = *bindingsc::nvmlUnitGetHandleByIndex;
*nvmlUnitGetUnitInfo = *bindingsc::nvmlUnitGetUnitInfo;
*nvmlUnitGetLedState = *bindingsc::nvmlUnitGetLedState;
*nvmlUnitGetPsuInfo = *bindingsc::nvmlUnitGetPsuInfo;
*nvmlUnitGetTemperature = *bindingsc::nvmlUnitGetTemperature;
*nvmlUnitGetFanSpeedInfo = *bindingsc::nvmlUnitGetFanSpeedInfo;
*nvmlUnitGetDevices = *bindingsc::nvmlUnitGetDevices;
*nvmlSystemGetHicVersion = *bindingsc::nvmlSystemGetHicVersion;
*nvmlDeviceGetCount = *bindingsc::nvmlDeviceGetCount;
*nvmlDeviceGetHandleByIndex = *bindingsc::nvmlDeviceGetHandleByIndex;
*nvmlDeviceGetHandleBySerial = *bindingsc::nvmlDeviceGetHandleBySerial;
*nvmlDeviceGetHandleByUUID = *bindingsc::nvmlDeviceGetHandleByUUID;
*nvmlDeviceGetHandleByPciBusId = *bindingsc::nvmlDeviceGetHandleByPciBusId;
*nvmlDeviceGetName = *bindingsc::nvmlDeviceGetName;
# BLIAKO: addition
*nvmlDeviceGetCudaComputeCapability = *bindingsc::nvmlDeviceGetCudaComputeCapability;
# BLIAKO: end addition
*nvmlDeviceGetSerial = *bindingsc::nvmlDeviceGetSerial;
*nvmlDeviceGetUUID = *bindingsc::nvmlDeviceGetUUID;
*nvmlDeviceGetInforomVersion = *bindingsc::nvmlDeviceGetInforomVersion;
*nvmlDeviceGetInforomImageVersion = *bindingsc::nvmlDeviceGetInforomImageVersion;
*nvmlDeviceGetInforomConfigurationChecksum = *bindingsc::nvmlDeviceGetInforomConfigurationChecksum;
*nvmlDeviceValidateInforom = *bindingsc::nvmlDeviceValidateInforom;
*nvmlDeviceGetDisplayMode = *bindingsc::nvmlDeviceGetDisplayMode;
*nvmlDeviceGetPersistenceMode = *bindingsc::nvmlDeviceGetPersistenceMode;
*nvmlDeviceGetPciInfo_v2 = *bindingsc::nvmlDeviceGetPciInfo_v2;
*nvmlDeviceGetMaxPcieLinkGeneration = *bindingsc::nvmlDeviceGetMaxPcieLinkGeneration;
*nvmlDeviceGetMaxPcieLinkWidth = *bindingsc::nvmlDeviceGetMaxPcieLinkWidth;
*nvmlDeviceGetCurrPcieLinkGeneration = *bindingsc::nvmlDeviceGetCurrPcieLinkGeneration;
*nvmlDeviceGetCurrPcieLinkWidth = *bindingsc::nvmlDeviceGetCurrPcieLinkWidth;
*nvmlDeviceGetClockInfo = *bindingsc::nvmlDeviceGetClockInfo;
*nvmlDeviceGetMaxClockInfo = *bindingsc::nvmlDeviceGetMaxClockInfo;
*nvmlDeviceGetApplicationsClock = *bindingsc::nvmlDeviceGetApplicationsClock;
*nvmlDeviceResetApplicationsClocks = *bindingsc::nvmlDeviceResetApplicationsClocks;
*nvmlDeviceGetSupportedMemoryClocks = *bindingsc::nvmlDeviceGetSupportedMemoryClocks;
*nvmlDeviceGetSupportedGraphicsClocks = *bindingsc::nvmlDeviceGetSupportedGraphicsClocks;
*nvmlDeviceGetFanSpeed = *bindingsc::nvmlDeviceGetFanSpeed;
*nvmlDeviceGetTemperature = *bindingsc::nvmlDeviceGetTemperature;
*nvmlDeviceGetPerformanceState = *bindingsc::nvmlDeviceGetPerformanceState;
*nvmlDeviceGetCurrentClocksThrottleReasons = *bindingsc::nvmlDeviceGetCurrentClocksThrottleReasons;
*nvmlDeviceGetSupportedClocksThrottleReasons = *bindingsc::nvmlDeviceGetSupportedClocksThrottleReasons;
*nvmlDeviceGetPowerState = *bindingsc::nvmlDeviceGetPowerState;
*nvmlDeviceGetPowerManagementMode = *bindingsc::nvmlDeviceGetPowerManagementMode;
*nvmlDeviceGetPowerManagementLimit = *bindingsc::nvmlDeviceGetPowerManagementLimit;
*nvmlDeviceGetPowerManagementLimitConstraints = *bindingsc::nvmlDeviceGetPowerManagementLimitConstraints;
*nvmlDeviceGetPowerManagementDefaultLimit = *bindingsc::nvmlDeviceGetPowerManagementDefaultLimit;
*nvmlDeviceGetPowerUsage = *bindingsc::nvmlDeviceGetPowerUsage;
*nvmlDeviceGetGpuOperationMode = *bindingsc::nvmlDeviceGetGpuOperationMode;
*nvmlDeviceGetMemoryInfo = *bindingsc::nvmlDeviceGetMemoryInfo;
*nvmlDeviceGetComputeMode = *bindingsc::nvmlDeviceGetComputeMode;
*nvmlDeviceGetEccMode = *bindingsc::nvmlDeviceGetEccMode;
*nvmlDeviceGetTotalEccErrors = *bindingsc::nvmlDeviceGetTotalEccErrors;
*nvmlDeviceGetDetailedEccErrors = *bindingsc::nvmlDeviceGetDetailedEccErrors;
*nvmlDeviceGetMemoryErrorCounter = *bindingsc::nvmlDeviceGetMemoryErrorCounter;
*nvmlDeviceGetUtilizationRates = *bindingsc::nvmlDeviceGetUtilizationRates;
*nvmlDeviceGetDriverModel = *bindingsc::nvmlDeviceGetDriverModel;
*nvmlDeviceGetVbiosVersion = *bindingsc::nvmlDeviceGetVbiosVersion;
*nvmlDeviceGetComputeRunningProcesses = *bindingsc::nvmlDeviceGetComputeRunningProcesses;
*nvmlDeviceOnSameBoard = *bindingsc::nvmlDeviceOnSameBoard;
*nvmlUnitSetLedState = *bindingsc::nvmlUnitSetLedState;
*nvmlDeviceSetPersistenceMode = *bindingsc::nvmlDeviceSetPersistenceMode;
*nvmlDeviceSetComputeMode = *bindingsc::nvmlDeviceSetComputeMode;
*nvmlDeviceSetEccMode = *bindingsc::nvmlDeviceSetEccMode;
*nvmlDeviceClearEccErrorCounts = *bindingsc::nvmlDeviceClearEccErrorCounts;
*nvmlDeviceSetDriverModel = *bindingsc::nvmlDeviceSetDriverModel;
*nvmlDeviceSetApplicationsClocks = *bindingsc::nvmlDeviceSetApplicationsClocks;
*nvmlDeviceSetPowerManagementLimit = *bindingsc::nvmlDeviceSetPowerManagementLimit;
*nvmlDeviceSetGpuOperationMode = *bindingsc::nvmlDeviceSetGpuOperationMode;
*nvmlEventSetCreate = *bindingsc::nvmlEventSetCreate;
*nvmlDeviceRegisterEvents = *bindingsc::nvmlDeviceRegisterEvents;
*nvmlDeviceGetSupportedEventTypes = *bindingsc::nvmlDeviceGetSupportedEventTypes;
*nvmlEventSetWait = *bindingsc::nvmlEventSetWait;
*nvmlEventSetFree = *bindingsc::nvmlEventSetFree;
*_getFanInfoByIndex = *bindingsc::_getFanInfoByIndex;
*_getDeviceByIndex = *bindingsc::_getDeviceByIndex;
*_getUIntByIndex = *bindingsc::_getUIntByIndex;
*_createDeviceArray = *bindingsc::_createDeviceArray;
*_freeDeviceArray = *bindingsc::_freeDeviceArray;
*_createProcessArray = *bindingsc::_createProcessArray;
*_freeProcessArray = *bindingsc::_freeProcessArray;
*_createUIntArray = *bindingsc::_createUIntArray;
*_freeUIntArray = *bindingsc::_freeUIntArray;
*_nvmlUnitGetDevices = *bindingsc::_nvmlUnitGetDevices;
*_nvmlDeviceGetComputeRunningProcesses = *bindingsc::_nvmlDeviceGetComputeRunningProcesses;
*_nvmlGetValueNotAvailable_ulonglong = *bindingsc::_nvmlGetValueNotAvailable_ulonglong;
*_getProcessByIndex = *bindingsc::_getProcessByIndex;
*_nvmlDeviceGetSupportedMemoryClocks = *bindingsc::_nvmlDeviceGetSupportedMemoryClocks;
*_nvmlDeviceGetSupportedGraphicsClocks = *bindingsc::_nvmlDeviceGetSupportedGraphicsClocks;

############# Class : nvidia2::ml::bindings::nvmlPciInfo_t ##############

package nvidia2::ml::bindings::nvmlPciInfo_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_busId_get = *bindingsc::nvmlPciInfo_t_busId_get;
*swig_busId_set = *bindingsc::nvmlPciInfo_t_busId_set;
*swig_domain_get = *bindingsc::nvmlPciInfo_t_domain_get;
*swig_domain_set = *bindingsc::nvmlPciInfo_t_domain_set;
*swig_bus_get = *bindingsc::nvmlPciInfo_t_bus_get;
*swig_bus_set = *bindingsc::nvmlPciInfo_t_bus_set;
*swig_device_get = *bindingsc::nvmlPciInfo_t_device_get;
*swig_device_set = *bindingsc::nvmlPciInfo_t_device_set;
*swig_pciDeviceId_get = *bindingsc::nvmlPciInfo_t_pciDeviceId_get;
*swig_pciDeviceId_set = *bindingsc::nvmlPciInfo_t_pciDeviceId_set;
*swig_pciSubSystemId_get = *bindingsc::nvmlPciInfo_t_pciSubSystemId_get;
*swig_pciSubSystemId_set = *bindingsc::nvmlPciInfo_t_pciSubSystemId_set;
*swig_reserved0_get = *bindingsc::nvmlPciInfo_t_reserved0_get;
*swig_reserved0_set = *bindingsc::nvmlPciInfo_t_reserved0_set;
*swig_reserved1_get = *bindingsc::nvmlPciInfo_t_reserved1_get;
*swig_reserved1_set = *bindingsc::nvmlPciInfo_t_reserved1_set;
*swig_reserved2_get = *bindingsc::nvmlPciInfo_t_reserved2_get;
*swig_reserved2_set = *bindingsc::nvmlPciInfo_t_reserved2_set;
*swig_reserved3_get = *bindingsc::nvmlPciInfo_t_reserved3_get;
*swig_reserved3_set = *bindingsc::nvmlPciInfo_t_reserved3_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlPciInfo_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlPciInfo_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlEccErrorCounts_t ##############

package nvidia2::ml::bindings::nvmlEccErrorCounts_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_l1Cache_get = *bindingsc::nvmlEccErrorCounts_t_l1Cache_get;
*swig_l1Cache_set = *bindingsc::nvmlEccErrorCounts_t_l1Cache_set;
*swig_l2Cache_get = *bindingsc::nvmlEccErrorCounts_t_l2Cache_get;
*swig_l2Cache_set = *bindingsc::nvmlEccErrorCounts_t_l2Cache_set;
*swig_deviceMemory_get = *bindingsc::nvmlEccErrorCounts_t_deviceMemory_get;
*swig_deviceMemory_set = *bindingsc::nvmlEccErrorCounts_t_deviceMemory_set;
*swig_registerFile_get = *bindingsc::nvmlEccErrorCounts_t_registerFile_get;
*swig_registerFile_set = *bindingsc::nvmlEccErrorCounts_t_registerFile_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlEccErrorCounts_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlEccErrorCounts_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlUtilization_t ##############

package nvidia2::ml::bindings::nvmlUtilization_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_gpu_get = *bindingsc::nvmlUtilization_t_gpu_get;
*swig_gpu_set = *bindingsc::nvmlUtilization_t_gpu_set;
*swig_memory_get = *bindingsc::nvmlUtilization_t_memory_get;
*swig_memory_set = *bindingsc::nvmlUtilization_t_memory_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlUtilization_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlUtilization_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlMemory_t ##############

package nvidia2::ml::bindings::nvmlMemory_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_total_get = *bindingsc::nvmlMemory_t_total_get;
*swig_total_set = *bindingsc::nvmlMemory_t_total_set;
*swig_free_get = *bindingsc::nvmlMemory_t_free_get;
*swig_free_set = *bindingsc::nvmlMemory_t_free_set;
*swig_used_get = *bindingsc::nvmlMemory_t_used_get;
*swig_used_set = *bindingsc::nvmlMemory_t_used_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlMemory_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlMemory_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlProcessInfo_t ##############

package nvidia2::ml::bindings::nvmlProcessInfo_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_pid_get = *bindingsc::nvmlProcessInfo_t_pid_get;
*swig_pid_set = *bindingsc::nvmlProcessInfo_t_pid_set;
*swig_usedGpuMemory_get = *bindingsc::nvmlProcessInfo_t_usedGpuMemory_get;
*swig_usedGpuMemory_set = *bindingsc::nvmlProcessInfo_t_usedGpuMemory_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlProcessInfo_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlProcessInfo_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlHwbcEntry_t ##############

package nvidia2::ml::bindings::nvmlHwbcEntry_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_hwbcId_get = *bindingsc::nvmlHwbcEntry_t_hwbcId_get;
*swig_hwbcId_set = *bindingsc::nvmlHwbcEntry_t_hwbcId_set;
*swig_firmwareVersion_get = *bindingsc::nvmlHwbcEntry_t_firmwareVersion_get;
*swig_firmwareVersion_set = *bindingsc::nvmlHwbcEntry_t_firmwareVersion_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlHwbcEntry_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlHwbcEntry_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlLedState_t ##############

package nvidia2::ml::bindings::nvmlLedState_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_cause_get = *bindingsc::nvmlLedState_t_cause_get;
*swig_cause_set = *bindingsc::nvmlLedState_t_cause_set;
*swig_color_get = *bindingsc::nvmlLedState_t_color_get;
*swig_color_set = *bindingsc::nvmlLedState_t_color_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlLedState_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlLedState_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlUnitInfo_t ##############

package nvidia2::ml::bindings::nvmlUnitInfo_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_name_get = *bindingsc::nvmlUnitInfo_t_name_get;
*swig_name_set = *bindingsc::nvmlUnitInfo_t_name_set;
*swig_id_get = *bindingsc::nvmlUnitInfo_t_id_get;
*swig_id_set = *bindingsc::nvmlUnitInfo_t_id_set;
*swig_serial_get = *bindingsc::nvmlUnitInfo_t_serial_get;
*swig_serial_set = *bindingsc::nvmlUnitInfo_t_serial_set;
*swig_firmwareVersion_get = *bindingsc::nvmlUnitInfo_t_firmwareVersion_get;
*swig_firmwareVersion_set = *bindingsc::nvmlUnitInfo_t_firmwareVersion_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlUnitInfo_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlUnitInfo_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlPSUInfo_t ##############

package nvidia2::ml::bindings::nvmlPSUInfo_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_state_get = *bindingsc::nvmlPSUInfo_t_state_get;
*swig_state_set = *bindingsc::nvmlPSUInfo_t_state_set;
*swig_current_get = *bindingsc::nvmlPSUInfo_t_current_get;
*swig_current_set = *bindingsc::nvmlPSUInfo_t_current_set;
*swig_voltage_get = *bindingsc::nvmlPSUInfo_t_voltage_get;
*swig_voltage_set = *bindingsc::nvmlPSUInfo_t_voltage_set;
*swig_power_get = *bindingsc::nvmlPSUInfo_t_power_get;
*swig_power_set = *bindingsc::nvmlPSUInfo_t_power_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlPSUInfo_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlPSUInfo_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlUnitFanInfo_t ##############

package nvidia2::ml::bindings::nvmlUnitFanInfo_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_speed_get = *bindingsc::nvmlUnitFanInfo_t_speed_get;
*swig_speed_set = *bindingsc::nvmlUnitFanInfo_t_speed_set;
*swig_state_get = *bindingsc::nvmlUnitFanInfo_t_state_get;
*swig_state_set = *bindingsc::nvmlUnitFanInfo_t_state_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlUnitFanInfo_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlUnitFanInfo_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlUnitFanSpeeds_t ##############

package nvidia2::ml::bindings::nvmlUnitFanSpeeds_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_fans_get = *bindingsc::nvmlUnitFanSpeeds_t_fans_get;
*swig_fans_set = *bindingsc::nvmlUnitFanSpeeds_t_fans_set;
*swig_count_get = *bindingsc::nvmlUnitFanSpeeds_t_count_get;
*swig_count_set = *bindingsc::nvmlUnitFanSpeeds_t_count_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlUnitFanSpeeds_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlUnitFanSpeeds_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : nvidia2::ml::bindings::nvmlEventData_t ##############

package nvidia2::ml::bindings::nvmlEventData_t;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( bindings );
%OWNER = ();
%ITERATORS = ();
*swig_device_get = *bindingsc::nvmlEventData_t_device_get;
*swig_device_set = *bindingsc::nvmlEventData_t_device_set;
*swig_eventType_get = *bindingsc::nvmlEventData_t_eventType_get;
*swig_eventType_set = *bindingsc::nvmlEventData_t_eventType_set;
*swig_reserved_get = *bindingsc::nvmlEventData_t_reserved_get;
*swig_reserved_set = *bindingsc::nvmlEventData_t_reserved_set;
sub new {
    my $pkg = shift;
    my $self = bindingsc::new_nvmlEventData_t(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        bindingsc::delete_nvmlEventData_t($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package nvidia2::ml::bindings;

*NVML_API_VERSION = *bindingsc::NVML_API_VERSION;
*NVML_API_VERSION_STR = *bindingsc::NVML_API_VERSION_STR;
*NVML_VALUE_NOT_AVAILABLE = *bindingsc::NVML_VALUE_NOT_AVAILABLE;
*NVML_FEATURE_DISABLED = *bindingsc::NVML_FEATURE_DISABLED;
*NVML_FEATURE_ENABLED = *bindingsc::NVML_FEATURE_ENABLED;
*nvmlFlagDefault = *bindingsc::nvmlFlagDefault;
*nvmlFlagForce = *bindingsc::nvmlFlagForce;
*NVML_TEMPERATURE_GPU = *bindingsc::NVML_TEMPERATURE_GPU;
*NVML_COMPUTEMODE_DEFAULT = *bindingsc::NVML_COMPUTEMODE_DEFAULT;
*NVML_COMPUTEMODE_EXCLUSIVE_THREAD = *bindingsc::NVML_COMPUTEMODE_EXCLUSIVE_THREAD;
*NVML_COMPUTEMODE_PROHIBITED = *bindingsc::NVML_COMPUTEMODE_PROHIBITED;
*NVML_COMPUTEMODE_EXCLUSIVE_PROCESS = *bindingsc::NVML_COMPUTEMODE_EXCLUSIVE_PROCESS;
*NVML_MEMORY_ERROR_TYPE_CORRECTED = *bindingsc::NVML_MEMORY_ERROR_TYPE_CORRECTED;
*NVML_MEMORY_ERROR_TYPE_UNCORRECTED = *bindingsc::NVML_MEMORY_ERROR_TYPE_UNCORRECTED;
*NVML_MEMORY_ERROR_TYPE_COUNT = *bindingsc::NVML_MEMORY_ERROR_TYPE_COUNT;
*NVML_VOLATILE_ECC = *bindingsc::NVML_VOLATILE_ECC;
*NVML_AGGREGATE_ECC = *bindingsc::NVML_AGGREGATE_ECC;
*NVML_CLOCK_GRAPHICS = *bindingsc::NVML_CLOCK_GRAPHICS;
*NVML_CLOCK_SM = *bindingsc::NVML_CLOCK_SM;
*NVML_CLOCK_MEM = *bindingsc::NVML_CLOCK_MEM;
*NVML_CLOCK_COUNT = *bindingsc::NVML_CLOCK_COUNT;
*NVML_DRIVER_WDDM = *bindingsc::NVML_DRIVER_WDDM;
*NVML_DRIVER_WDM = *bindingsc::NVML_DRIVER_WDM;
*NVML_PSTATE_0 = *bindingsc::NVML_PSTATE_0;
*NVML_PSTATE_1 = *bindingsc::NVML_PSTATE_1;
*NVML_PSTATE_2 = *bindingsc::NVML_PSTATE_2;
*NVML_PSTATE_3 = *bindingsc::NVML_PSTATE_3;
*NVML_PSTATE_4 = *bindingsc::NVML_PSTATE_4;
*NVML_PSTATE_5 = *bindingsc::NVML_PSTATE_5;
*NVML_PSTATE_6 = *bindingsc::NVML_PSTATE_6;
*NVML_PSTATE_7 = *bindingsc::NVML_PSTATE_7;
*NVML_PSTATE_8 = *bindingsc::NVML_PSTATE_8;
*NVML_PSTATE_9 = *bindingsc::NVML_PSTATE_9;
*NVML_PSTATE_10 = *bindingsc::NVML_PSTATE_10;
*NVML_PSTATE_11 = *bindingsc::NVML_PSTATE_11;
*NVML_PSTATE_12 = *bindingsc::NVML_PSTATE_12;
*NVML_PSTATE_13 = *bindingsc::NVML_PSTATE_13;
*NVML_PSTATE_14 = *bindingsc::NVML_PSTATE_14;
*NVML_PSTATE_15 = *bindingsc::NVML_PSTATE_15;
*NVML_PSTATE_UNKNOWN = *bindingsc::NVML_PSTATE_UNKNOWN;
*NVML_GOM_ALL_ON = *bindingsc::NVML_GOM_ALL_ON;
*NVML_GOM_COMPUTE = *bindingsc::NVML_GOM_COMPUTE;
*NVML_GOM_LOW_DP = *bindingsc::NVML_GOM_LOW_DP;
*NVML_INFOROM_OEM = *bindingsc::NVML_INFOROM_OEM;
*NVML_INFOROM_ECC = *bindingsc::NVML_INFOROM_ECC;
*NVML_INFOROM_POWER = *bindingsc::NVML_INFOROM_POWER;
*NVML_INFOROM_COUNT = *bindingsc::NVML_INFOROM_COUNT;
*NVML_SUCCESS = *bindingsc::NVML_SUCCESS;
*NVML_ERROR_UNINITIALIZED = *bindingsc::NVML_ERROR_UNINITIALIZED;
*NVML_ERROR_INVALID_ARGUMENT = *bindingsc::NVML_ERROR_INVALID_ARGUMENT;
*NVML_ERROR_NOT_SUPPORTED = *bindingsc::NVML_ERROR_NOT_SUPPORTED;
*NVML_ERROR_NO_PERMISSION = *bindingsc::NVML_ERROR_NO_PERMISSION;
*NVML_ERROR_ALREADY_INITIALIZED = *bindingsc::NVML_ERROR_ALREADY_INITIALIZED;
*NVML_ERROR_NOT_FOUND = *bindingsc::NVML_ERROR_NOT_FOUND;
*NVML_ERROR_INSUFFICIENT_SIZE = *bindingsc::NVML_ERROR_INSUFFICIENT_SIZE;
*NVML_ERROR_INSUFFICIENT_POWER = *bindingsc::NVML_ERROR_INSUFFICIENT_POWER;
*NVML_ERROR_DRIVER_NOT_LOADED = *bindingsc::NVML_ERROR_DRIVER_NOT_LOADED;
*NVML_ERROR_TIMEOUT = *bindingsc::NVML_ERROR_TIMEOUT;
*NVML_ERROR_IRQ_ISSUE = *bindingsc::NVML_ERROR_IRQ_ISSUE;
*NVML_ERROR_LIBRARY_NOT_FOUND = *bindingsc::NVML_ERROR_LIBRARY_NOT_FOUND;
*NVML_ERROR_FUNCTION_NOT_FOUND = *bindingsc::NVML_ERROR_FUNCTION_NOT_FOUND;
*NVML_ERROR_CORRUPTED_INFOROM = *bindingsc::NVML_ERROR_CORRUPTED_INFOROM;
*NVML_ERROR_UNKNOWN = *bindingsc::NVML_ERROR_UNKNOWN;
*NVML_MEMORY_LOCATION_L1_CACHE = *bindingsc::NVML_MEMORY_LOCATION_L1_CACHE;
*NVML_MEMORY_LOCATION_L2_CACHE = *bindingsc::NVML_MEMORY_LOCATION_L2_CACHE;
*NVML_MEMORY_LOCATION_DEVICE_MEMORY = *bindingsc::NVML_MEMORY_LOCATION_DEVICE_MEMORY;
*NVML_MEMORY_LOCATION_REGISTER_FILE = *bindingsc::NVML_MEMORY_LOCATION_REGISTER_FILE;
*NVML_MEMORY_LOCATION_TEXTURE_MEMORY = *bindingsc::NVML_MEMORY_LOCATION_TEXTURE_MEMORY;
*NVML_MEMORY_LOCATION_COUNT = *bindingsc::NVML_MEMORY_LOCATION_COUNT;
*NVML_FAN_NORMAL = *bindingsc::NVML_FAN_NORMAL;
*NVML_FAN_FAILED = *bindingsc::NVML_FAN_FAILED;
*NVML_LED_COLOR_GREEN = *bindingsc::NVML_LED_COLOR_GREEN;
*NVML_LED_COLOR_AMBER = *bindingsc::NVML_LED_COLOR_AMBER;
*nvmlEventTypeSingleBitEccError = *bindingsc::nvmlEventTypeSingleBitEccError;
*nvmlEventTypeDoubleBitEccError = *bindingsc::nvmlEventTypeDoubleBitEccError;
*nvmlEventTypePState = *bindingsc::nvmlEventTypePState;
*nvmlEventTypeXidCriticalError = *bindingsc::nvmlEventTypeXidCriticalError;
*nvmlEventTypeClock = *bindingsc::nvmlEventTypeClock;
*nvmlEventTypeNone = *bindingsc::nvmlEventTypeNone;
*nvmlEventTypeAll = *bindingsc::nvmlEventTypeAll;
*nvmlClocksThrottleReasonGpuIdle = *bindingsc::nvmlClocksThrottleReasonGpuIdle;
*nvmlClocksThrottleReasonUserDefinedClocks = *bindingsc::nvmlClocksThrottleReasonUserDefinedClocks;
*nvmlClocksThrottleReasonSwPowerCap = *bindingsc::nvmlClocksThrottleReasonSwPowerCap;
*nvmlClocksThrottleReasonHwSlowdown = *bindingsc::nvmlClocksThrottleReasonHwSlowdown;
*nvmlClocksThrottleReasonUnknown = *bindingsc::nvmlClocksThrottleReasonUnknown;
*nvmlClocksThrottleReasonNone = *bindingsc::nvmlClocksThrottleReasonNone;
*nvmlClocksThrottleReasonAll = *bindingsc::nvmlClocksThrottleReasonAll;
*NVML_DEVICE_INFOROM_VERSION_BUFFER_SIZE = *bindingsc::NVML_DEVICE_INFOROM_VERSION_BUFFER_SIZE;
*NVML_DEVICE_UUID_BUFFER_SIZE = *bindingsc::NVML_DEVICE_UUID_BUFFER_SIZE;
*NVML_SYSTEM_DRIVER_VERSION_BUFFER_SIZE = *bindingsc::NVML_SYSTEM_DRIVER_VERSION_BUFFER_SIZE;
*NVML_SYSTEM_NVML_VERSION_BUFFER_SIZE = *bindingsc::NVML_SYSTEM_NVML_VERSION_BUFFER_SIZE;
*NVML_DEVICE_NAME_BUFFER_SIZE = *bindingsc::NVML_DEVICE_NAME_BUFFER_SIZE;
*NVML_DEVICE_SERIAL_BUFFER_SIZE = *bindingsc::NVML_DEVICE_SERIAL_BUFFER_SIZE;
*NVML_DEVICE_VBIOS_VERSION_BUFFER_SIZE = *bindingsc::NVML_DEVICE_VBIOS_VERSION_BUFFER_SIZE;
1;
