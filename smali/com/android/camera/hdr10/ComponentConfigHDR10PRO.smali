.class public Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigHDR10PRO.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentConfigHDR10PRO"


# instance fields
.field public mIsClosed:Z

.field public mIsFeatureMutexEnable:Z

.field public mIsQualityMutexEnable:Z

.field public mIsSATCameraId:Z

.field public mIsTagMutexEnable:Z

.field public mSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    return-void
.end method

.method private isFeaturesMutex(I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isTagMutex(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "ComponentConfigHDR10PRO"

    const-string v1, "isTagMutex return true, due to Capabilities is null"

    .line 1
    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v1, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method private isVideoHdr10ProModeSupported(ILcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2, p1}, Lcom/android/camera/hdr10/HDR10Characteristics;->isVideoHdrModeSupported(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isVideoQualityMutex(IILcom/android/camera2/CameraCapabilities;I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    const-string p1, "ComponentConfigHDR10PRO"

    const-string p2, "isVideoQualityMutex return true, due to Capabilities is null"

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p2, p1}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result p1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result p2

    if-nez p2, :cond_1

    const/16 p2, 0x1e

    .line 5
    :cond_1
    invoke-static {p3, p4, p1, p2}, Lcom/android/camera/hdr10/HDR10Characteristics;->isCurrentQualitySupportHdr10(Lcom/android/camera2/CameraCapabilities;III)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigHDR10PRO#getDefaultValue() not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDisplayTitleString()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ComponentConfigHDR10PRO#getDisplayTitleString() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ComponentConfigHDR10PRO#getItems() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigHDR10PRO#getKey() not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isActualOn()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_hlg_video_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsClosed:Z

    return v0
.end method

.method public isFeatureOn()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string/jumbo v2, "pref_hlg_video_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isMutexEnable()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return v1

    .line 5
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    monitor-exit p0

    return v1

    .line 7
    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSATShow()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsSATCameraId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    return v0
.end method

.method public isSwitchOn(I)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigHDR10PRO#isSwitchOn() not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 7

    const-string v0, "ComponentConfigHDR10PRO"

    const-string/jumbo v1, "reInit E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsSATCameraId:Z

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    const/4 v2, 0x3

    .line 11
    invoke-direct {p0, v2, v1}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isVideoHdr10ProModeSupported(ILcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez p2, :cond_2

    .line 12
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v6

    if-ne v5, v6, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsSATCameraId:Z

    if-eqz v5, :cond_2

    move-object p3, v1

    .line 13
    :cond_2
    monitor-enter p0

    .line 14
    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    if-eqz v3, :cond_3

    .line 18
    iput-boolean v4, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 19
    invoke-direct {p0, p3}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isTagMutex(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isFeaturesMutex(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    .line 21
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->isVideoQualityMutex(IILcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    .line 22
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 23
    iget-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mSupported:Z

    .line 24
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v0

    iget-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsTagMutexEnable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v4

    const/4 p2, 0x2

    iget-boolean p3, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsFeatureMutexEnable:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p1, p2

    iget-boolean p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsQualityMutexEnable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "ComponentConfigHDR10PRO"

    const-string/jumbo p3, "reInit X, isVideoHdr10ProModeSupported mSupported %b mIsTagMutexEnable %b mIsFeatureMutexEnable %b mIsQualityMutexEnable %b"

    .line 25
    invoke-static {p2, p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_1
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->mIsClosed:Z

    return-void
.end method

.method public setSwitchOn(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->setClosed(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_hlg_video_mode_key"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
