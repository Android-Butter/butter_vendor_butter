# Inherit common stuff
$(call inherit-product, vendor/butter/config/common.mk)
$(call inherit-product, vendor/butter/config/common_full.mk)

PRODUCT_PACKAGES += \
    Mms \
    Torch \
    CellBroadcastReceiver

