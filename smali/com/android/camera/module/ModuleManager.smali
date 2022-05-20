.class public Lcom/android/camera/module/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# static fields
.field public static final MODULE_INDEX_NONE:I = -0x1

.field public static sCurrentModuleIndex:I = -0x1

.field public static sInstance:Lcom/android/camera/module/ModuleManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/ModuleManager;

    invoke-direct {v0}, Lcom/android/camera/module/ModuleManager;-><init>()V

    sput-object v0, Lcom/android/camera/module/ModuleManager;->sInstance:Lcom/android/camera/module/ModuleManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createModuleByAlias(Ljava/lang/String;)Lcom/android/camera/module/Module;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getActiveModuleIndex()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    return v0
.end method

.method public static getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/Camera2Module;

    invoke-direct {v0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    return-object v0
.end method

.method public static getModuleByIndex(I)Lcom/android/camera/module/entry/IModuleEntry;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/features/FeatureLoader;->getEntries()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/entry/IModuleEntry;

    return-object p0
.end method

.method public static instance()Lcom/android/camera/module/ModuleManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/ModuleManager;->sInstance:Lcom/android/camera/module/ModuleManager;

    return-object v0
.end method

.method public static isBothLandscapeMode(I)Z
    .locals 1

    const/16 v0, 0xd4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isCameraModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCapture()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCloneModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDocumentMode()Z
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v0

    return v0
.end method

.method public static isFastMotionModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFastmotionModulePro()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFilmModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xd5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFunModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIDCardMode()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInVideoCategory()Z
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->isVideoCategory(I)Z

    move-result v0

    return v0
.end method

.method public static isLeftLandscapeMode(I)Z
    .locals 1

    const/16 v0, 0xb3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd5

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isMiLiveModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMimojiModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPanoramaModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPortraitModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProModule()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isProPhotoModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProPhotoSquareModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1x1"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProVideoModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSquareModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSuperMoonMode()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSuperNightScene()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSuperNightVideoMode()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xd6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportCropFrontMode()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportRealSquare()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    sget v3, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportedRealSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUltraPixel()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoCategory(I)Z
    .locals 3

    const/16 v0, 0xa1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xac

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    return v0

    .line 1
    :pswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v2, 0x1a2

    invoke-virtual {p0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object p0

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 3
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p0

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcf
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static isVideoModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoNewSlowMotion()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xac

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWideSelfieModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setActiveModuleIndex(I)V
    .locals 0

    .line 1
    sput p0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    return-void
.end method
