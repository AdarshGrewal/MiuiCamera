.class public Lcom/android/camera/features/mode/pro/photo/ProModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "ProModeUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO00o()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    const v2, 0x7f120753

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f080399

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO00o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningPictureStyle()Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f08025a

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f08025b

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f1204c6

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    const/16 v0, 0xb4

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 3

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelTopMenuResources()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelTopMenuResources()[I

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelSwitchTipsString()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelSwitchTipsString()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0O0(Landroid/view/View;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    const/16 v0, 0xd1

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method private getManualPictureStyleItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xb4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO0OO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO0O0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getRawExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xed

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO00o;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getUltraPixelItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xd1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO0Oo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOOO0/OooO00o/OooO0o0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtraTopConfigItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/features/mode/pro/photo/ProModeUI;->getModuleId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOOOO()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->isSupportRaw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/android/camera/features/mode/pro/photo/ProModeUI;->getRawExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo000o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getFocusPeakExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getExposureFeedbackExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOO0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerBurstExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getFragmentInfo()Landroid/util/SparseIntArray;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getFragmentInfo()Landroid/util/SparseIntArray;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0xf7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xa7

    return v0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMeterItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Ooo0O()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/mode/pro/photo/ProModeUI;->getManualPictureStyleItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/android/camera/features/mode/pro/photo/ProModeUI;->getUltraPixelItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
