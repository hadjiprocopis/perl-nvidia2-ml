package nvidia2::ml::Utils;

use strict;
use warnings;

use nvidia2::ml;

our $VERSION = 5.00;

sub enquire_gpu_hardware {
	my $parent = (caller(1))[3]; if( ! defined($parent) ){ $parent = 'N/A' }
	my $whoami = ( caller(0) )[3];

	my ($rc, $asub, @result);
	my $ret = {};

	# for the time this installs as a module alongside Inline::CUDA
	# this is temporary until NVIDIA fixes nvidia::ml at CPAN
#	$rc = eval {
#		require nvidia::ml;
#		nvidia::ml->import();
#		1;
#	};
#	if( ! $rc ){ print STDERR "$whoami (via $parent) : error, failed to import modile 'nvidia::ml' at runtime (require). This module is provided at the root dir of this package. Here is the error:\n$@\n"; return undef }

	# init ...
	$rc = nvidia2::ml::nvmlInit(); if( $rc != $nvidia2::ml::bindings::NVML_SUCCESS ){ print STDERR "$whoami (via $parent) : error, call to '".'nvidia2::ml::nvmlInit'."()' has failed with code '$rc'.\n"; return undef }

	for my $abind (qw/
		nvmlDeviceGetCount nvmlSystemGetDriverVersion
	/){
		no strict 'refs';
		$asub = "nvidia2::ml::$abind";
		($rc, @result) = $asub->(); if( $rc != $nvidia2::ml::bindings::NVML_SUCCESS ){ print STDERR "$whoami (via $parent) : error, call to '"."$asub"."()' has failed with code '$rc'.\n"; return undef }
		$ret->{$abind} = [@result];
	}

	# no point to continue if no cuda-capable GPUs were found, but it is not an error
	# \%ret is returned and user must check the count
	$ret->{GPU} = undef;
	my $numGPU = $ret->{nvmlDeviceGetCount}->[0];
	if( $numGPU == 0 ){ print STDERR "$whoami (via $parent) : warning, no CUDA-capable GPUs found.\n"; return $ret }

	$ret->{GPU} = [];
	for my $aGPUindex (0..($numGPU-1)){
		my $device = nvidia2::ml::nvmlDeviceGetHandleByIndex($aGPUindex);
		if( ! defined $device ){ print STDERR "$whoami (via $parent) : error, failed to get device handle for GPU with index $aGPUindex.\n"; return undef }
		my $RG = {};
		push @{$ret->{GPU}}, $RG;
		for my $abind (qw/
			nvmlDeviceGetName
			nvmlDeviceGetCudaComputeCapability
		/){
			no strict 'refs';
			$asub = "nvidia2::ml::$abind";
			($rc, @result) = $asub->($device); if( $rc != $nvidia2::ml::bindings::NVML_SUCCESS ){ print STDERR "$whoami (via $parent) : error, call to '"."$asub"."()' has failed for GPU with index '$aGPUindex' with error code '$rc'.\n"; return undef }
			$RG->{$abind} = [@result];
		}
	}
		
	# and shutdown
	$rc = nvidia2::ml::nvmlShutdown(); if( $rc != $nvidia2::ml::bindings::NVML_SUCCESS ){ print STDERR "$whoami (via $parent) : error, call to '".'nvidia2::ml::nvmlShutdown'."()' has failed with code '$rc'.\n"; return undef }

	return $ret;
}

1;
