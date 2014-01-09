PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/ose/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/ose/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/ose/prebuilt/common/bin/50-ose.sh:system/addon.d/50-ose.sh \
    vendor/ose/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/ose/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# OSE-specific init file
PRODUCT_COPY_FILES += \
    vendor/ose/prebuilt/common/etc/init.local.rc:root/init.ose.rc

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/ose/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/ose/prebuilt/common/xbin/zip:system/xbin/zip \
    vendor/ose/prebuilt/common/xbin/zipalign:system/xbin/zipalign

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/ose/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/ose/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/ose/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/ose/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/ose/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/ose/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/ose/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/ose/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/ose/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/ose/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/ose/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/ose/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/ose/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/ose/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/ose/prebuilt/common/etc/init.d/11battery:system/etc/init.d/11battery \
    vendor/ose/prebuilt/common/etc/init.d/12touch:system/etc/init.d/12touch \
    vendor/ose/prebuilt/common/etc/init.d/13minfree:system/etc/init.d/13minfree \
    vendor/ose/prebuilt/common/etc/init.d/14gpurender:system/etc/init.d/14gpurender \
    vendor/ose/prebuilt/common/etc/init.d/15sleepers:system/etc/init.d/15sleepers \
    vendor/ose/prebuilt/common/etc/init.d/16journalism:system/etc/init.d/16journalism \
    vendor/ose/prebuilt/common/etc/init.d/17sqlite3:system/etc/init.d/17sqlite3 \
    vendor/ose/prebuilt/common/etc/init.d/18wifisleep:system/etc/init.d/18wifisleep \
    vendor/ose/prebuilt/common/etc/init.d/19iostats:system/etc/init.d/19iostats \
    vendor/ose/prebuilt/common/etc/init.d/20setrenice:system/etc/init.d/20setrenice \
    vendor/ose/prebuilt/common/etc/init.d/21tweaks:system/etc/init.d/21tweaks \
    vendor/ose/prebuilt/common/etc/init.d/24speedy_modified:system/etc/init.d/24speedy_modified \
    vendor/ose/prebuilt/common/etc/init.d/25loopy_smoothness_tweak:system/etc/init.d/25loopy_smoothness_tweak \
    vendor/ose/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/ose/prebuilt/common/etc/helpers.sh:system/etc/helpers.sh \
    vendor/ose/prebuilt/common/etc/init.d.cfg:system/etc/init.d.cfg \
    vendor/ose/prebuilt/common/bin/sysinit:system/bin/sysinit

# Workaround for Apex zipalign fails
PRODUCT_COPY_FILES += \
    vendor/ose/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk

# Embed SuperUser
SUPERUSER_EMBEDDED := true

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    Superuser \
    su

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    LiveWallpapersPicker \
    PhaseBeam

# DSPManager
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Extra Optional packages
PRODUCT_PACKAGES += \
    LatinIME \
    BluetoothExt \
    DashClock

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/ose/overlay/common

# Boot animation include
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))

# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,, $(shell ls vendor/ose/prebuilt/common/bootanimation))
bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then
    if [ $(1) -le $(TARGET_BOOTANIMATION_SIZE) ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

PRODUCT_COPY_FILES += \
    vendor/ose/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif

# Versioning System
# OSE Alpha releases
PRODUCT_VERSION_MAJOR = 4.4.2
PRODUCT_VERSION_MINOR = Alpha
PRODUCT_VERSION_MAINTENANCE = 1

ifdef OSE_BUILD_EXTRA
    OSE_POSTFIX := -$(OSE_BUILD_EXTRA)
endif
ifndef OSE_BUILD_TYPE
    OSE_BUILD_TYPE := UNOFFICIAL
    PLATFORM_VERSION_CODENAME := UNOFFICIAL
    OSE_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
endif

# Set all versions
OSE_VERSION := OSE-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(OSE_BUILD_TYPE)$(OSE_POSTFIX)
OSE_MOD_VERSION := OSE-$(OSE_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(OSE_BUILD_TYPE)$(OSE_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ose.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.ose.version=$(OSE_VERSION) \
    ro.modversion=$(OSE_MOD_VERSION)

