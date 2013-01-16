# Inherit AOSP device configuration.
$(call inherit-product, device/htc/pyramid/full_pyramid.mk)

# Inherit common product files.
$(call inherit-product, vendor/dkosp/config/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/dkosp/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pyramid
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := pyramid
PRODUCT_MODEL := DKOSP
PRODUCT_MANUFACTURER := HTC

#PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.0.3 IML74K XXLPQ release-keys"

# Inherit common build.prop overrides
-include vendor/dkosp/configs/common_versions.mk



# Inherit drm blobs
-include vendor/dkosp/configs/common_drm_phone.mk