.class public Lcom/android/camera/features/mode/capture/CaptureModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "CaptureModeUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mode/capture/CaptureModeUI;Lcom/android/camera/ui/TopAlertSlideSwitchButton;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->onBeautyModeSwitch(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IILjava/lang/String;)V

    return-void
.end method

.method private getBeautyModeUpdater()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooOOO0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0O0/OooOOO0;-><init>(Lcom/android/camera/features/mode/capture/CaptureModeUI;)V

    return-object v0
.end method

.method private onBeautyModeSwitch(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->onClick(Landroid/view/View;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa4

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, p3, p4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigValueChanged(ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a008b

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060368

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndicatorColor(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f060036

    goto :goto_0

    :cond_0
    const v3, 0x7f060034

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v2

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeautyMode()Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xbc

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZ)V

    const v1, 0x7f0a0197

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/camera/features/mode/capture/CaptureModeUI$1;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/camera/features/mode/capture/CaptureModeUI$1;-><init>(Lcom/android/camera/features/mode/capture/CaptureModeUI;Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0198

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/android/camera/features/mode/capture/CaptureModeUI$2;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/camera/features/mode/capture/CaptureModeUI$2;-><init>(Lcom/android/camera/features/mode/capture/CaptureModeUI;Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

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
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v4

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v5

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000O00()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getCinematicAspectRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getHandGestureExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo000o()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_5
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSuperMacroMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOO0()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->getModuleId()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getMacroModeExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    if-nez v5, :cond_8

    .line 30
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000o0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 31
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTiltExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_8
    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v5, :cond_9

    .line 33
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getColorEnhanceExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_9
    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOO0()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 35
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerBurstExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xa3

    return v0
.end method

.method public getPanelEntranceItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v1

    const/16 v2, 0xa3

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/fragment/modeui/BaseModeUI;->createShine(II)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO00o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;-><init>(I)V

    const v2, 0x7f0d002d

    .line 8
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setCustomView(I)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->getBeautyModeUpdater()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->setUpdateListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setSupportRotation(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getTopConfigItems()Ljava/util/List;
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
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/CaptureModeUI;->getModuleId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 10
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getHDRItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getAiSceneItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSuperMacroMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 15
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getMacroModeItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOO0()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 17
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getLiveShotItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_6
    :goto_0
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 19
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    if-nez v4, :cond_8

    .line 22
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getAiDetectItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_8
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportedSuperPortrait()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getUltraPixelPortraitItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_9
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->getBokehItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_a
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_b
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
