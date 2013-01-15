#Config used for full targets, with telephony or without.

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

include vendor/dkosp/config/themes.mk

# English Dictionary
PRODUCT_PACKAGE_OVERLAYS += vendor/dkosp/overlay/dictionaries/english

# Proprietary LatinIME Gesture Support
PRODUCT_COPY_FILES += \
    vendor/dkosp/prebuilt/common/lib/libjni_latinime.so:obj/lib/libjni_latinime.so \
    vendor/dkosp/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Provide non-english dictionaries if required
ifeq ($(TARGET_USE_KEYBOARD), international)
    PRODUCT_PACKAGE_OVERLAYS += vendor/dkosp/overlay/dictionaries/international
endif

PRODUCT_PACKAGES += \
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
