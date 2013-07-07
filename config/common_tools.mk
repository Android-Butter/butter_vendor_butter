# Command line tools

PRODUCT_PACKAGES += \
    bash \
    busybox \
    ca-bundle \
    curl \
    e2fsck \
    mke2fs \
    resize2fs \
    rsync \
    scp \
    sftp \
    ssh \
    ssh-keygen \
    sshd \
    sshd_config \
    sshd_motd \
    start-ssh \
    tune2fs \
    vim \
    vimrc \
    wget \
    wgetrc

# Utilize init.d scripts
PRODUCT_COPY_FILES += \
    vendor/butter/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/butter/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/butter/prebuilt/common/etc/init.d/05mountext:system/etc/init.d/05mountext \
    vendor/butter/prebuilt/common/etc/init.d/06handleswap:system/etc/init.d/06handleswap \
    vendor/butter/prebuilt/common/etc/init.d/20extgapps:system/etc/init.d/20extgapps




