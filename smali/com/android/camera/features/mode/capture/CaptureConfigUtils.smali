.class public Lcom/android/camera/features/mode/capture/CaptureConfigUtils;
.super Ljava/lang/Object;
.source "CaptureConfigUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    const v2, 0x7f0803df

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    const v2, 0x7f110016

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->getDisplayTitleString()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO00o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    const v0, 0x7f080232

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f080233

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f120805

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    const v0, 0x7f080230

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f12062c

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    if-eqz p0, :cond_0

    .line 12
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;->startAiLens()V

    :cond_0
    const/4 p0, 0x0

    const-string v0, "ai_detect_changed"

    .line 13
    invoke-static {v0, p0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO0O0()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 18
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f08041c

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f110021

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f12024e

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO0O0(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    const-string/jumbo v1, "on"

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080394

    goto :goto_0

    :cond_0
    const v2, 0x7f080393

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f12002e

    goto :goto_1

    :cond_1
    const v2, 0x7f12002d

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0O0(Landroid/view/View;)V
    .locals 7

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->tarckBokenChanged(ILjava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    new-array v5, v4, [I

    const/16 v6, 0xc8

    aput v6, v5, v3

    .line 13
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHdrIfBokehChanged(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-array p0, v4, [I

    const/16 v0, 0xc2

    aput v0, p0, v3

    .line 15
    invoke-interface {v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 16
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_2

    .line 17
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configBokeh(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic OooO0OO(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f080334

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f080339

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120032

    goto :goto_0

    :cond_0
    const v0, 0x7f120031

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0OO(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x0

    const-string v0, "liveshot_topmenu_click"

    .line 7
    invoke-static {v0, p0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    const/16 v0, 0xce

    .line 9
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xe3

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;

    if-eqz p0, :cond_1

    const/16 v0, 0xa3

    .line 11
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    :cond_1
    return-void
.end method

.method public static synthetic OooO0Oo(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    const v1, 0x7f08026e

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    const v1, 0x7f08026f

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1200be

    goto :goto_0

    :cond_0
    const p0, 0x7f1200bd

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0Oo(Landroid/view/View;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    const/16 v0, 0xff

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0o0(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v0

    const v0, 0x7f080277

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f120992

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0o0(Landroid/view/View;)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    const/16 v0, 0xd7

    .line 7
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static getAiDetectItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xf2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0o;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getBokehItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xc8

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0o0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0oo;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getColorEnhanceExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xe3

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooOO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooOO0o;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveShotExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xce

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0oO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveShotItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xce

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0OO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0Oo;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getMacroModeItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xff

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO0O0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooOO0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getUltraPixelPortraitItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xd7

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooO00o;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooOO0O;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method
