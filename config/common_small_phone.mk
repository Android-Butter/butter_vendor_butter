# Inherit common stuff
$(call inherit-product, vendor/dkosp/config/common.mk)
$(call inherit-product, vendor/dkosp/config/common_small.mk)

PRODUCT_PACKAGES += \
    Mms
