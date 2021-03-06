# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from excalibur device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := excalibur
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_excalibur
PRODUCT_MODEL := Redmi Note 9 Pro Max

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := excalibur
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="qssi-user 10 QKQ1.191215.002 V11.0.1.0.QJXINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := qti/qssi/qssi:10/QKQ1.191215.002/V11.0.1.0.QJXINXM:user/release-keys
