.class public Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;
.super Ljava/lang/Object;
.source "ExtraTopConfigUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExtraTopConfigUtils"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setComponentData(Lcom/android/camera/data/data/ComponentData;)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setShowText(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO00o()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->isSwitchOn(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    const v2, 0x7f0803dd

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    const v2, 0x7f110011

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getResText()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showSetting()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    const v1, 0x7f0803d4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f110014

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f120266

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO0OO()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f0803d6

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f110015

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f120578

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO0Oo()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_exposure_feedback"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f080248

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f110017

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f120656

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO0o()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    const v1, 0x7f0803e3

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f11001a

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f120305

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO0o0()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_peak_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f08024c

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f110018

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f120657

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO0oO()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    const v1, 0x7f080252

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f11001b

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f120427

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_hand_gesture"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooO0oo()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    const v2, 0x7f080415

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    const v2, 0x7f110020

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooOO0()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getmComponentLiveReferenceLine()Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setComponentData(Lcom/android/camera/data/data/ComponentData;)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooOO0O()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    const v1, 0x7f120771

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "pref_camera_referenceline_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setShowRightAngleTag(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    const-string v4, "jiugongge"

    const-string/jumbo v5, "pref_camera_referenceline_type_key"

    invoke-virtual {v3, v5, v4}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "left_golden_spiral"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "right_golden_spiral"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :sswitch_3
    const-string v2, "golden_section"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    goto :goto_2

    :cond_1
    const v1, 0x7f08042e

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopResourceId(I)V

    const v1, 0x7f110025

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopSelectedAnimID(I)V

    goto :goto_2

    :cond_2
    const v1, 0x7f080406

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopResourceId(I)V

    const v1, 0x7f110024

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopSelectedAnimID(I)V

    goto :goto_2

    :cond_3
    const v1, 0x7f080400

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopResourceId(I)V

    const v1, 0x7f110022

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopSelectedAnimID(I)V

    goto :goto_2

    :cond_4
    const v1, 0x7f08042a

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopResourceId(I)V

    const v1, 0x7f110023

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopSelectedAnimID(I)V

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x344bfe51 -> :sswitch_3
        -0x1d02a42b -> :sswitch_2
        -0x124245fc -> :sswitch_1
        0x411c60af -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0o()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    const v1, 0x7f0803e0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f120303

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooOOO()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isSwitchOn(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    const v2, 0x7f0803e4

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    const v2, 0x7f110027

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->getResText()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooOOO0()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    const v1, 0x7f080267

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f110026

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f120912

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_speech_shutter"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooOOOO()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    const/16 v2, 0xa0

    .line 3
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->isSwitchOn(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f120307

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f0803e5

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f110028

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooOOOo()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f080908

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const v1, 0x7f110029

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setShowRightAngleTag(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTextResource(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v2

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10001f

    .line 11
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 13
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v2

    const-string v3, "S"

    if-eqz v2, :cond_0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 16
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTextResourceString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const v1, 0x7f120978

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTextResource(I)V

    :goto_1
    return-object v0
.end method

.method public static synthetic OooOOo()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setComponentData(Lcom/android/camera/data/data/ComponentData;)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooOOo0()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getItems()Ljava/util/List;

    move-result-object v1

    new-instance v10, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    const v3, 0x7f060345

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v9

    const v3, 0x7f0803e6

    const v4, 0x7f0803e6

    const v5, 0x7f12067d

    const v6, 0x7f120047

    const-string v7, "0"

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setComponentData(Lcom/android/camera/data/data/ComponentData;)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooOOoo()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setComponentData(Lcom/android/camera/data/data/ComponentData;)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic OooOo00()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setComponentData(Lcom/android/camera/data/data/ComponentData;)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method

.method public static getAiAudioNewExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xb2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getCenterMarkExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xb7

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOO0O;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getCinematicAspectRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xfb

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOO0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getExposureFeedbackExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0x102

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOOO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusPeakExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xc7

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOO0o;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getGradienterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xe5

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOO0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getHandGestureExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xfc

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOo0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getMacroModeExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xff

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOOo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getMultiContentDescriptionString(I)I
    .locals 1

    const/16 v0, 0xad

    if-eq p0, v0, :cond_5

    const/16 v0, 0xae

    if-eq p0, v0, :cond_4

    const/16 v0, 0xb9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xbb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd0

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd5

    if-eq p0, v0, :cond_5

    const/16 v0, 0xe2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f12067d

    return p0

    :cond_1
    const p0, 0x7f120759

    return p0

    :cond_2
    const p0, 0x7f12087b

    return p0

    :cond_3
    const p0, 0x7f12076c

    return p0

    :cond_4
    const p0, 0x7f12086a

    return p0

    :cond_5
    const p0, 0x7f120884

    return p0
.end method

.method public static getRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xd2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0OO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getReferenceExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xb9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0o;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xdb

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0o0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xe1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0oO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOo0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0x106

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO00o;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSubtitleExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xdc

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0Oo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedReferenceConfig()Ljava/util/List;
    .locals 2
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
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getCenterMarkExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0OoOo0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getGradienterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static getSupportedReferenceConfigFilterMore()Ljava/util/List;
    .locals 2
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
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTiltExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xe4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0oo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getTimerBurstExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xaa

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOoo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOoo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xe2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOOo;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoQualityExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xd0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOo00;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooOo00;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSubFpsExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xae

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSubQualityExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xad

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0OO/OooO0O0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method
