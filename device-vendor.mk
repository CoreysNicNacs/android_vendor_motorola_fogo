# device-vendor.mk optimized for Motorola fogo

PRODUCT_COPY_FILES += \
    vendor/motorola/fogo/proprietary/libandroidicu.so:system/vendor/lib64/libandroidicu.so \
    vendor/motorola/fogo/proprietary/android.hardware.health@2.1.so:system/vendor/lib64/android.hardware.health@2.1.so

PRODUCT_PACKAGES += \
    libandroidicu \
    android.hardware.health@2.1 \
    init.recovery.service.rc
