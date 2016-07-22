# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := p8000

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/elephone/p8000/device_p8000.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p8000
PRODUCT_NAME := cm_p8000
PRODUCT_BRAND := Elephone
PRODUCT_MODEL := P8000
PRODUCT_MANUFACTURER := Elephone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Elephone \
    BUILD_PRODUCT=Elephone \
    TARGET_DEVICE=Elephone

