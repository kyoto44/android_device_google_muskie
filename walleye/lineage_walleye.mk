# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/muskie/aosp_walleye.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_taimen
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 2
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:11/RP1A.201005.004.A1/6934943:user/release-keys

$(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)
