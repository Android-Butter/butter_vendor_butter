PRODUCT_BRAND ?= Butter

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
    ro.config.ringtone=Pyxis.ogg \
    ro.config.notification_sound=Merope.ogg \
    ro.config.alarm_alert=Scandium.ogg

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Required packages
PRODUCT_PACKAGES += \
    LatinIME \
    PerformanceControl \
    ButterBoyWallpapers \
    SuperSU \
    su



# Openssh
PRODUCT_PACKAGES += \
    ssh \
    sftp \
    scp \
    sshd \
    ssh-keygen \
    sshd_config \
    sshd_motd \
    start-ssh

# e2fsprogs
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    resize2fs

# Utilize init.d scripts
PRODUCT_COPY_FILES += \
    vendor/butter/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/butter/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/butter/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/butter/prebuilt/common/etc/init.d/98swap_cache_v100:system/etc/init.d/98swap_cache_v100 
    



# Prebuilt commandline tools
PRODUCT_COPY_FILES += \
    vendor/butter/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/butter/prebuilt/common/etc/profile:system/etc/profile

# Backup Transport
PRODUCT_PACKAGE_OVERLAYS += vendor/butter/overlay/common

# Disable strict mode
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.strictmode.disable=true

# Version Info
PRODUCT_VERSION_MAJOR = 5
PRODUCT_VERSION_MINOR = 8
PRODUCT_VERSION_MAINTENANCE = 0

ifeq ($(NIGHTLY_BUILD),true)
    ROM_VERSION := Butter-$(PRODUCT_CODENAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-Nightly-$(shell date +%Y.%m.%d)
else
    ROM_VERSION := Butter-$(PRODUCT_CODENAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=$(ROM_VERSION)
