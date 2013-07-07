# Inherit common stuff
$(call inherit-product, vendor/butter/config/common.mk)
$(call inherit-product, vendor/butter/config/common_small.mk)

PRODUCT_PACKAGES += \
    Mms
