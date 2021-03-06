

# Specify phone tech before including full_phone
$(call inherit-product, vendor/butter/config/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/butter/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/pyramid/device_pyramid.mk)

# Device naming
PRODUCT_NAME := butter_pyramid
PRODUCT_DEVICE := pyramid
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Sensation
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_FINGERPRINT=tmous/htc_pyramid/pyramid:4.0.3/IML74K/356011.14:user/release-keys PRIVATE_BUILD_DESC="3.32.531.14 CL356011 release-keys" BUILD_NUMBER=356011

#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := BUTTER
PRODUCT_VERSION_DEVICE_SPECIFIC := -aosp

PRODUCT_MOTD := "\n\n\n--------------------BUTTER---------------------\n"

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/butter/prebuilt/qhd/media/bootanimation.zip:system/media/bootanimation.zip

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/butter/overlay/qhd

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/butter/overlay/hot_reboot
