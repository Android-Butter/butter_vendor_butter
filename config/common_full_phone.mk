# Inherit common stuff
$(call inherit-product, vendor/dkosp/config/common.mk)
$(call inherit-product, vendor/dkosp/config/common_full.mk)

PRODUCT_PACKAGES += \
    Mms

