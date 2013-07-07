#Config used for full targets, with telephony or without.

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

include vendor/butter/config/themes.mk
include vendor/butter/config/common_tools.mk

# English Dictionary
PRODUCT_PACKAGE_OVERLAYS += vendor/butter/overlay/dictionaries/english

# Proprietary LatinIME Gesture Support
PRODUCT_COPY_FILES += \
    vendor/butter/prebuilt/common/lib/libjni_latinime.so:obj/lib/libjni_latinime.so \
    vendor/butter/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Provide non-english dictionaries if required
ifeq ($(TARGET_USE_KEYBOARD), international)
    PRODUCT_PACKAGE_OVERLAYS += vendor/butter/overlay/dictionaries/international
endif

PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam
