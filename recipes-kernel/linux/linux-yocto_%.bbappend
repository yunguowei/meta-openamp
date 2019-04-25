FILESEXTRAPATHS_prepend := "${THISDIR}:"
SRC_URI_append = " file://openamp-kmeta;type=kmeta;name=openamp-kmeta;destsuffix=openamp-kmeta"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-remoteproc-Add-ZYNQMP_A53-support.patch \
	    file://0002-adding-elf64-support.patch \
	    file://0003-Adding-openamp.dtsi.patch \
	    file://0004-adding-debug-print-info.patch \
	    file://0005-adding-AMP_LOADER.patch \
	    file://0006-start-secondary-core.patch \
           "

KERNEL_FEATURES_append = "${@bb.utils.contains('DISTRO_FEATURES', 'openamp', ' cfg/openamp.scc', '', d)}"
