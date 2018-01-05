#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL mako devices, and
# are also specific to mako devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/lge/mako/overlay

PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PACKAGES := \
    android.hardware.wifi@1.0-service \
    libwpa_client \
    hostapd \
    wificond \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Lights
PRODUCT_PACKAGES += \
	lights.msm8960 \
	android.hardware.light@2.0-impl

# Vibrator
PRODUCT_PACKAGES += \
	android.hardware.vibrator@1.0-impl

# USB
PRODUCT_PACKAGES += \
	android.hardware.usb@1.0-service

PRODUCT_PACKAGES += \
    charger_res_images

# http://b/15193147
# TODO(danalbert): Remove this once stlport is dead and gone.
PRODUCT_PACKAGES +=  libstlport

PRODUCT_COPY_FILES += \
	device/lge/mako/wifi/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
	device/lge/mako/wifi/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini \
	device/lge/mako/wifi/WCNSS_qcom_wlan_nv.bin:system/vendor/etc/wifi/WCNSS_qcom_wlan_nv.bin \
	device/lge/mako/wifi/init.mako.wifi.sh:system/vendor/etc/init.mako.wifi.sh \
	device/lge/mako/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf \
	device/lge/mako/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf

# Audio configuration
USE_XML_AUDIO_POLICY_CONF := 1
PRODUCT_COPY_FILES += \
	frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/vendor/etc/a2dp_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/vendor/etc/audio_policy_volumes.xml \
	frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/default_volume_tables.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml \
	device/lge/mako/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
	device/lge/mako/audio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
	device/lge/mako/configs/thermald-mako.conf:system/etc/thermald.conf

PRODUCT_COPY_FILES += \
	device/lge/mako/configs/DxHDCP.cfg:system/etc/DxHDCP.cfg

PRODUCT_COPY_FILES += \
	device/lge/mako/rootdir/init.mako.rc:root/init.mako.rc \
	device/lge/mako/rootdir/init.mako.usb.rc:root/init.mako.usb.rc \
	device/lge/mako/rootdir/fstab.mako:root/fstab.mako \
	device/lge/mako/rootdir/ueventd.mako.rc:root/ueventd.mako.rc \
	device/lge/mako/media/media_profiles_V1_0.xml:system/vendor/etc/media_profiles_V1_0.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	device/lge/mako/media/media_codecs.xml:system/etc/media_codecs.xml \
	device/lge/mako/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

# Prebuilt kl and kcm keymaps
PRODUCT_COPY_FILES += \
	device/lge/mako/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
	device/lge/mako/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
	device/lge/mako/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	device/lge/mako/keylayout/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
	device/lge/mako/keychars/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
	device/lge/mako/keychars/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
	device/lge/mako/keychars/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm \
	device/lge/mako/keychars/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
	device/lge/mako/configs/touch_dev.idc:system/usr/idc/touch_dev.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

# NFC packages
PRODUCT_PACKAGES += \
    nfc_nci.bcm2079x.default \
    android.hardware.nfc@1.0-impl \
    android.hardware.nfc@1.0-service \
    NfcNci \
    Tag

# NFC feature files + configuration
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    device/lge/mako/nfc/libnfc-brcm.conf:system/vendor/etc/libnfc-brcm.conf

# Bluetooth
PRODUCT_PACKAGES += \
	android.hardware.bluetooth@1.0-impl \
	libbt-vendor

PRODUCT_CHARACTERISTICS := nosdcard

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck

PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	hwcomposer.msm8960 \
	gralloc.msm8960 \
	copybit.msm8960 \
	memtrack.msm8960 \
	android.hardware.graphics.allocator@2.0-impl \
	android.hardware.graphics.allocator@2.0-service \
	android.hardware.graphics.composer@2.1-impl \
	android.hardware.graphics.mapper@2.0-impl \
	android.hardware.memtrack@1.0-impl

PRODUCT_PACKAGES += \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	android.hardware.audio@2.0-impl \
	android.hardware.audio.effect@2.0-impl \
	libaudio-resampler

# Voice processing
PRODUCT_PACKAGES += libqcomvoiceprocessing
PRODUCT_COPY_FILES += \
    device/lge/mako/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml

PRODUCT_COPY_FILES += \
	device/lge/mako/bluetooth/init.mako.bt.sh:system/vendor/etc/init.mako.bt.sh

PRODUCT_PACKAGES += \
	camera.mako \
	libmmcamera_interface2 \
	libmmcamera_interface \
	android.hardware.camera.provider@2.4-impl \
	android.hardware.camera.provider@2.4-service \
	camera.device@1.0-impl

PRODUCT_PACKAGES += \
        libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert

# GPS configuration
PRODUCT_COPY_FILES += \
        device/lge/mako/configs/gps.conf:system/etc/gps.conf

# GPS
PRODUCT_PACKAGES += \
        libloc_eng \
        libloc_core \
        libgps.utils \
        gps.msm8960 \
        android.hardware.gnss@1.0-impl

PRODUCT_PACKAGES += \
	bdAddrLoader \
	libwfcu \
	conn_init

PRODUCT_PACKAGES += \
	keystore.msm8960 \
	android.hardware.keymaster@3.0-impl

PRODUCT_PACKAGES += \
	power.mako \
	android.hardware.power@1.0-impl

PRODUCT_PACKAGES += \
	android.hardware.drm@1.0-impl

# Sensors
PRODUCT_PACKAGES += \
	sensors.msm8960 \
	android.hardware.sensors@1.0-impl

PRODUCT_COPY_FILES += \
	device/lge/mako/configs/sensors/_hals.conf:system/vendor/etc/sensors/_hals.conf

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/widevine/arm-generic/widevine-vendor.mk)
