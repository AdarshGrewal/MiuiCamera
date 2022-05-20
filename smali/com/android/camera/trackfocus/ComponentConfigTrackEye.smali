.class public Lcom/android/camera/trackfocus/ComponentConfigTrackEye;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigTrackEye.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentConfigTrackEye"


# instance fields
.field public mIsClosed:Z

.field public mIsMutexEnable:Z

.field public mSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initMutexEnable(IILcom/android/camera2/CameraCapabilities;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private initSupported(ILcom/android/camera2/CameraCapabilities;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->isSupportTrackEye()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->isAutoFocusSupported()Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    if-eqz p3, :cond_3

    return v0

    :cond_3
    const/16 p2, 0xa3

    if-eq p1, p2, :cond_4

    const/16 p2, 0xab

    if-eq p1, p2, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigTrackEye#getDefaultValue() not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDisplayTitleString()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ComponentConfigTrackEye#getDisplayTitleString() not supported"

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

    const-string v1, "ComponentConfigTrackEye#getItems() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigTrackEye#getKey() not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->mSupported:Z

    return v0
.end method

.method public isSwitchOn(I)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigTrackEye#isSwitchOn() not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isTrackEyeOn()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->mSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string/jumbo v2, "pref_camera_track_eye_preferred_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->initSupported(ILcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->mSupported:Z

    return-void
.end method

.method public setTrackEye(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_track_eye_preferred_key"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
