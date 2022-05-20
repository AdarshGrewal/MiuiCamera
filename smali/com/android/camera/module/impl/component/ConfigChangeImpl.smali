.class public Lcom/android/camera/module/impl/component/ConfigChangeImpl;
.super Ljava/lang/Object;
.source "ConfigChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;


# static fields
.field public static final TAG:Ljava/lang/String; = "ConfigChangeImpl"


# instance fields
.field public mActivity:Lcom/android/camera/ActivityBase;

.field public mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

.field public mChangeInterceptor:Lcom/android/camera/module/interceptor/ConfigChangeInterceptor;

.field public mRecordingClosedElements:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static synthetic OooO(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetMagneticInfo()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/module/Module;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/module/TimeFreezeModule;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/module/TimeFreezeModule;

    invoke-virtual {p1, p0}, Lcom/android/camera/module/TimeFreezeModule;->dispatchConfigChange(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/module/Module;)V
    .locals 1

    .line 17
    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 18
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p1, p0}, Lcom/android/camera/module/Camera2Module;->setHdrModeChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(ZLcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/module/Module;)V
    .locals 1

    .line 31
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p2

    const/16 v0, 0xa2

    if-ne p2, v0, :cond_0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "off"

    .line 32
    invoke-virtual {p1, p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o([ILcom/android/camera/module/Module;)V
    .locals 1

    .line 28
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    .line 29
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0(ZLcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateGifConfig(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0([ILcom/android/camera/module/Module;)V
    .locals 0

    .line 7
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooO0OO(ZLcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(moon_mode) config moon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/camera/module/Camera2Module;->updateMoon(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0Oo(ZLcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p1, p0}, Lcom/android/camera/module/Camera2Module;->onHanGestureSwitched(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0o(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    :array_0
    .array-data 4
        0xb
        0x25
    .end array-data
.end method

.method public static synthetic OooO0o0(ZLcom/android/camera/module/Module;)V
    .locals 1

    .line 11
    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 12
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    const/4 p0, 0x0

    const/16 v0, 0x8

    .line 13
    invoke-virtual {p1, p0, v0}, Lcom/android/camera/module/Camera2Module;->closeMoonMode(II)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0oO(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetAiSceneInDocumentModeOn()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0oo(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/IAppStateMgr;->onSharedPreferenceChanged()V

    return-void
.end method

.method public static synthetic OooOO0(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    :array_0
    .array-data 4
        0xb
        0xa
        0x25
    .end array-data
.end method

.method public static synthetic OooOO0O(Lcom/android/camera/module/Module;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "meter"

    .line 4
    invoke-interface {v1, v3, v2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1d

    aput v1, v0, v2

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooOO0o(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configMoonBacklight"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateBacklight()V

    :cond_0
    return-void
.end method

.method public static synthetic OooOOO(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configNearRangeMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/Camera2Module;->updateNearRangeMode(ZZ)V

    .line 5
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "attr_near_range_mode"

    const-string v1, "close_near_range_mode"

    .line 6
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_common_tips"

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic OooOOO0(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->reselectCamera()V

    return-void
.end method

.method public static synthetic OooOOOO(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/IAppStateMgr;->onSharedPreferenceChanged()V

    return-void
.end method

.method public static synthetic OooOOOo(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchRemoteCamera()V

    return-void
.end method

.method public static synthetic OooOOo(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "exitNightInCaptureMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->exitNightInCaptureMode()V

    .line 5
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "attr_asd_detect_tip"

    const-string v1, "close_night_in_capture_mode"

    .line 6
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_common_tips"

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic OooOOo0(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/module/Camera2Module;

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configSilhouette"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSilhouette()V

    :cond_0
    return-void
.end method

.method public static synthetic OooOOoo(Lcom/android/camera/module/Module;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooOo(Lcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x29

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooOo0(Lcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooOo00(Lcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetAiSceneInDocumentModeOn()V

    :cond_0
    return-void
.end method

.method public static synthetic OooOo0O(Lcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooOo0o(Lcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic OooOoO0(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ICameraMgr;->getBogusCameraId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    :cond_0
    return-void
.end method

.method private applyConfig(II)V
    .locals 1

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAutoZoom()V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchHandGesture()V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCinematicAspectRatio(I)V

    goto/16 :goto_0

    .line 4
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoonBacklight()V

    goto/16 :goto_0

    .line 5
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSilhouette()V

    goto/16 :goto_0

    .line 6
    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoonNight()V

    goto/16 :goto_0

    .line 7
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoon(Z)V

    goto/16 :goto_0

    .line 8
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSuperResolutionSwitch(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualWaterMarkSwitch()V

    goto/16 :goto_0

    .line 10
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideShine()V

    goto/16 :goto_0

    .line 11
    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGenderAgeSwitch(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_b
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRawSwitch(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_c
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicMirrorSwitch(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_e
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configColorEnhance(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_11
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSubtitle()V

    goto/16 :goto_0

    .line 19
    :pswitch_12
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configReferenceLineSwitch(I)V

    goto/16 :goto_0

    .line 20
    :pswitch_13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSuperEIS()V

    goto/16 :goto_0

    .line 21
    :pswitch_14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configBack()V

    goto/16 :goto_0

    .line 22
    :pswitch_15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVV()V

    goto/16 :goto_0

    .line 23
    :pswitch_16
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUltraPixelPortrait(I)V

    goto/16 :goto_0

    .line 24
    :pswitch_17
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraWideBokeh()V

    goto/16 :goto_0

    .line 25
    :pswitch_18
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    goto/16 :goto_0

    .line 26
    :pswitch_19
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraWide()V

    goto/16 :goto_0

    .line 27
    :pswitch_1a
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCenterMarkSwitch(I)V

    goto/16 :goto_0

    .line 28
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiAudioSingle()V

    goto/16 :goto_0

    .line 29
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configESPDisplay()V

    goto/16 :goto_0

    .line 30
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideManualPictureStyle()V

    goto/16 :goto_0

    .line 31
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCloneUseGuide()V

    goto/16 :goto_0

    .line 32
    :pswitch_1f
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiAudio()V

    goto/16 :goto_0

    .line 33
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMultiCamReselect()V

    goto/16 :goto_0

    .line 34
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRemoteCamera()V

    goto/16 :goto_0

    .line 35
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideMasterFilter()V

    goto/16 :goto_0

    .line 36
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSpeechShutter()V

    goto/16 :goto_0

    .line 37
    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRGBHistogramSwitch(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_5
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoLogSwitch(I)V

    goto/16 :goto_0

    .line 39
    :sswitch_6
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configExposureFeedbackSwitch(I)V

    goto/16 :goto_0

    .line 40
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMacroMode()V

    goto/16 :goto_0

    .line 41
    :sswitch_8
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoBokehSwitch(I)V

    goto/16 :goto_0

    .line 42
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showSetting()V

    goto/16 :goto_0

    .line 43
    :sswitch_a
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAIWatermark(I)V

    goto/16 :goto_0

    .line 44
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideShine()V

    goto :goto_0

    .line 45
    :sswitch_c
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    goto :goto_0

    .line 46
    :sswitch_d
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    goto :goto_0

    .line 47
    :sswitch_e
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiSceneSwitch(I)V

    goto :goto_0

    .line 48
    :sswitch_f
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    goto :goto_0

    .line 49
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->exitNightInCaptureMode()V

    goto :goto_0

    .line 50
    :sswitch_11
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiEnhancedVideo()V

    goto :goto_0

    .line 51
    :sswitch_12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configIntoWorkspace()V

    goto :goto_0

    .line 52
    :sswitch_13
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAi108()V

    goto :goto_0

    .line 53
    :sswitch_14
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    goto :goto_0

    .line 54
    :sswitch_15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configPanoramaDirection()V

    goto :goto_0

    .line 55
    :sswitch_16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiAudio()V

    goto :goto_0

    .line 56
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configNearRangeMode()V

    goto :goto_0

    .line 57
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configIDCard()V

    goto :goto_0

    .line 58
    :sswitch_19
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSuperEISPro()V

    goto :goto_0

    .line 59
    :sswitch_1a
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOO0O;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOO0O;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideShine()V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configPortraitSwitch(I)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGif()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showMimojiPanel(I)Z

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa4 -> :sswitch_1a
        0xa5 -> :sswitch_19
        0xa6 -> :sswitch_18
        0xa7 -> :sswitch_17
        0xa8 -> :sswitch_16
        0xa9 -> :sswitch_15
        0xaa -> :sswitch_14
        0xab -> :sswitch_13
        0xac -> :sswitch_12
        0xaf -> :sswitch_11
        0xba -> :sswitch_10
        0xc7 -> :sswitch_f
        0xc9 -> :sswitch_e
        0xcb -> :sswitch_d
        0xd1 -> :sswitch_c
        0xd4 -> :sswitch_b
        0xdf -> :sswitch_a
        0xe1 -> :sswitch_9
        0xf3 -> :sswitch_8
        0xff -> :sswitch_7
        0x102 -> :sswitch_6
        0x104 -> :sswitch_5
        0x105 -> :sswitch_4
        0x106 -> :sswitch_3
        0x107 -> :sswitch_2
        0x200 -> :sswitch_1
        0x201 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcd
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd7
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe3
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xec
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xfb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyConfigValue(ILjava/lang/String;)V
    .locals 4

    const/16 v0, 0xad

    if-eq p1, v0, :cond_12

    const/16 v0, 0xae

    if-eq p1, v0, :cond_11

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_10

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_f

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_e

    const/16 v0, 0xd2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    const/16 v0, 0xd5

    if-eq p1, v0, :cond_c

    const/16 v0, 0xe2

    if-eq p1, v0, :cond_b

    const/16 v0, 0xe4

    if-eq p1, v0, :cond_a

    const/16 v0, 0xf6

    if-eq p1, v0, :cond_4

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xde

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualVideo(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentModeValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configBeautyMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveVideoQuality(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p1, -0x1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0x333b01

    const/4 v3, 0x1

    if-eq v0, v2, :cond_6

    const v1, 0x63f6418

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "night"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move v1, v3

    goto :goto_1

    :cond_6
    const-string v0, "moon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    move v1, p1

    :goto_1
    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    goto :goto_2

    .line 6
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoonNight()V

    goto :goto_2

    .line 7
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoon(Z)V

    goto :goto_2

    .line 8
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTilt(Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerSwitch(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_c
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSlowQuality(Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_d
    invoke-virtual {p0, v1, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_e
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoQuality(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFPS960(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configReferenceSwitch(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSubFps(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_12
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSubQuality(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private beautyMutexHandle()V
    .locals 0

    return-void
.end method

.method private changeMode(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore changeMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private changeModeWithoutConfigureData(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    .line 3
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method private checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_2

    .line 1
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result p3

    if-nez p3, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p3

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    .line 4
    invoke-virtual {p3, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p3

    .line 5
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p3

    .line 7
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 9
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    .line 10
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_2

    .line 11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p3

    invoke-virtual {p3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOo()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p3

    .line 13
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 15
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p3

    invoke-virtual {p3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 16
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p3

    .line 17
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    :cond_2
    :goto_0
    return-void
.end method

.method private closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xa2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000O0o0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoo;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoo;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p2, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private closeVideoFast()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const/16 v2, 0xa9

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const/16 v2, 0xa2

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string/jumbo v0, "pref_video_speed_fast_key"

    .line 5
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private configAIWatermark(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_1

    const/16 v2, 0xbc

    if-eq v0, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v3

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/4 v5, 0x1

    const-string v6, "ai_watermark"

    .line 5
    invoke-direct {p0, v6, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    xor-int/2addr v3, v5

    .line 6
    sget-object v6, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configAIWatermark: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    .line 7
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v6

    .line 9
    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->watermarkToast()V

    .line 12
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    .line 13
    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    .line 14
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->resetAIWatermark(Z)V

    .line 15
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setWatermarkEnable(Z)V

    if-ne v5, p1, :cond_6

    if-eqz v3, :cond_5

    const-string p1, "ai_watermark_open"

    goto :goto_0

    :cond_5
    const-string p1, "ai_watermark_close"

    .line 16
    :goto_0
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkClick(Ljava/lang/String;)V

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateASDForWatermark()V

    .line 18
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result p1

    .line 19
    invoke-virtual {v2, p1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setEnable(IZ)V

    .line 20
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x7

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 27
    invoke-interface {p1, v0}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method private configAiAudio()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ai_aduio_new_desc"

    .line 4
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    move v2, v1

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    move v2, v1

    :cond_3
    const/16 v4, 0xb4

    if-ne v0, v4, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "macro"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v2, "wide"

    .line 13
    invoke-virtual {v4, v0, v2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    move v2, v1

    :cond_4
    if-eqz v2, :cond_5

    const-string v2, "ai_audio"

    .line 14
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 15
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    .line 16
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xac

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v2, :cond_6

    return-void

    .line 18
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->isSwitchOn(I)Z

    move-result v4

    .line 21
    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configAiAudio:isSwitchOn -> enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v5, v4, 0x1

    .line 22
    invoke-static {v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiAudioNew(Z)V

    xor-int/lit8 v5, v4, 0x1

    .line 23
    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    .line 24
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configAiAudio:setAiAudioNewEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v4, v1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f120766

    .line 25
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setShow(Z)V

    goto :goto_1

    .line 26
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    .line 27
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configAiAudio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result v0

    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x8

    .line 29
    :goto_2
    invoke-interface {v2, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioBGHint(II)V

    return-void
.end method

.method private configAiAudioSingle()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ai_audio_single"

    .line 3
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    const-string v2, "ai_aduio_single_desc"

    .line 4
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v2, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioSingleEnabled(I)Z

    move-result v3

    .line 7
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configAiAudioSingle -> enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v4, v3, 0x1

    .line 8
    invoke-static {v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiAudioSingle(Z)V

    xor-int/lit8 v4, v3, 0x1

    .line 9
    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->setAiAudioSingleEnabled(IZ)V

    .line 10
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configAiAudioSingle:setAiAudioSingleEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v3, v1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioSingleEnabled(I)Z

    move-result v0

    const v3, 0x7f120856

    .line 12
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setShow(Z)V

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 13
    :goto_0
    invoke-interface {v2, v0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleBGHint(II)V

    return-void
.end method

.method private configAiEnhancedVideo()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v1

    .line 4
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configAiEnhancedVideo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    .line 6
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const-string v3, "attr_video_ai"

    const/16 v4, 0xaf

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    new-array v1, v5, [I

    aput v4, v1, v6

    .line 8
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 9
    invoke-static {v3, v6}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    new-array v1, v5, [I

    aput v4, v1, v6

    .line 11
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 12
    invoke-static {v3, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    new-array v1, v5, [I

    const/16 v2, 0xd8

    aput v2, v1, v6

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 15
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 17
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 18
    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 19
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 20
    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 21
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xc2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v1, :cond_2

    .line 23
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 24
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    .line 25
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v1, :cond_3

    .line 26
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x5

    .line 27
    invoke-interface {v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    .line 28
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    .line 29
    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_4
    :goto_0
    const/16 v1, 0xcc

    const/16 v2, 0xa2

    if-ne v0, v1, :cond_5

    .line 31
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 32
    :cond_5
    invoke-direct {p0, v2, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 33
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 34
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configAiSceneSwitch(I)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v2

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    .line 6
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v4, 0xc9

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v7, :cond_2

    if-eq p1, v5, :cond_1

    goto/16 :goto_2

    .line 7
    :cond_1
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v8, "configAiSceneSwitch: MUTEX false"

    invoke-static {v2, v8}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(IZ)V

    new-array v1, v7, [I

    aput v4, v1, v6

    .line 9
    invoke-interface {v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto/16 :goto_2

    .line 10
    :cond_2
    sget-object v8, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configAiSceneSwitch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "aiCC"

    const-string v9, "aiScene"

    const-string v10, "ai"

    const/4 v11, 0x0

    if-nez v2, :cond_4

    const v12, 0x7f1206e5

    .line 11
    invoke-interface {v3, v10, v6, v12}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 12
    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(IZ)V

    .line 13
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->getAiColorCorrectionVersion()I

    move-result v1

    if-lt v1, v7, :cond_3

    .line 14
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v8, v1, v11}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v9, v1, v11}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const v12, 0x7f1206e4

    const/16 v13, 0x8

    .line 16
    invoke-interface {v3, v10, v13, v12}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 17
    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(IZ)V

    .line 18
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->getAiColorCorrectionVersion()I

    move-result v1

    if-lt v1, v7, :cond_5

    .line 19
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v8, v1, v11}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v9, v1, v11}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_6

    .line 21
    instance-of v1, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v1, :cond_6

    .line 22
    move-object v1, v0

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    .line 23
    invoke-virtual {v1, v6, v13}, Lcom/android/camera/module/Camera2Module;->closeMoonMode(II)V

    :cond_6
    :goto_1
    new-array v1, v7, [I

    aput v4, v1, v6

    .line 24
    invoke-interface {v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xaf

    .line 26
    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 27
    invoke-virtual {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAiTips()V

    .line 28
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyLensOn()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "4"

    .line 29
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setBeautyLens(Ljava/lang/String;)V

    .line 30
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    .line 31
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v1, :cond_8

    .line 32
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 33
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd2

    .line 34
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$FNumberController;

    if-eqz v1, :cond_9

    .line 35
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$FNumberController;->toHideBeautyLensPanel()V

    .line 36
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_a

    .line 37
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 38
    :cond_a
    :goto_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    new-array v2, v7, [I

    const/16 v3, 0x24

    aput v3, v2, v6

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    .line 39
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 40
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_b
    if-ne p1, v7, :cond_c

    .line 41
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    :cond_c
    if-ne p1, v7, :cond_d

    .line 43
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 44
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUltraPixelPortrait(I)V

    :cond_d
    return-void

    nop

    :array_0
    .array-data 4
        0x30
        0x5c
    .end array-data
.end method

.method private configAutoZoom()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    const-string v3, "auto_zoom"

    .line 4
    invoke-direct {p0, v3, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    .line 6
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    .line 7
    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configAutoZoom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 v5, 0xfd

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 9
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    new-array v0, v2, [I

    aput v5, v0, v6

    .line 10
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto/16 :goto_1

    .line 11
    :cond_2
    invoke-static {v3, v2}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    new-array v4, v2, [I

    aput v5, v4, v6

    .line 12
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    new-array v1, v2, [I

    const/16 v4, 0xd8

    aput v4, v1, v6

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 15
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 17
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 18
    invoke-direct {p0, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V

    .line 19
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 20
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    .line 21
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    .line 22
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 23
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 25
    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    goto :goto_0

    .line 26
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    const-string v4, "normal"

    .line 27
    invoke-virtual {v1, v3, v4}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 28
    :goto_0
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 29
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 30
    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    .line 32
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_5

    .line 33
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    .line 34
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    .line 35
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v0, :cond_6

    .line 36
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x5

    .line 37
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    .line 38
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 40
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_7
    const/16 v0, 0xcc

    const/16 v1, 0xa2

    if-ne v3, v0, :cond_8

    .line 41
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 42
    :cond_8
    invoke-direct {p0, v1, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 43
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 44
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configBack()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configBack"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_7

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xbd

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcf

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "value_time_freeze_exit_preview"

    .line 4
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFilmDreamBack()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDollyZoomBack()V

    goto :goto_0

    .line 9
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCloneModeBack()V

    goto :goto_0

    .line 10
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configIDCardBack()V

    goto :goto_0

    .line 11
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVVBack()V

    :goto_0
    return-void
.end method

.method private configBeautyMode(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configBeautyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeautyMode()Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;->setBeautyMode(ILjava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged()V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    :cond_1
    return-void
.end method

.method private configCloneModeBack()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configCloneModeBack"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "value_clone_click_back"

    .line 3
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->showExitConfirm(Z)V

    :cond_0
    return-void
.end method

.method private configCloneUseGuide()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onCloneGuideClicked()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configCloneUseGuide"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb9

    const-string/jumbo v4, "value_m_film_user_guide"

    const/4 v5, 0x0

    if-eq v1, v3, :cond_5

    const/16 v3, 0xbd

    if-eq v1, v3, :cond_4

    const/16 v3, 0xcf

    if-eq v1, v3, :cond_3

    const/16 v3, 0xd5

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x26

    new-array v2, v5, [I

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    new-array v2, v5, [I

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x27

    new-array v2, v5, [I

    .line 10
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :goto_0
    move-object v2, v4

    goto :goto_1

    :cond_5
    const/16 v1, 0x17

    new-array v3, v5, [I

    .line 11
    invoke-interface {v0, v1, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 12
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_6

    const-string/jumbo v2, "value_clone_click_photo_guide"

    goto :goto_1

    .line 13
    :cond_6
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_7

    const-string/jumbo v2, "value_clone_click_video_guide"

    goto :goto_1

    .line 14
    :cond_7
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_8

    const-string/jumbo v2, "value_clone_click_freeze_frame_guide"

    :cond_8
    :goto_1
    const-string v0, "attr_user_guide"

    const-string v1, "click"

    .line 15
    invoke-static {v0, v2, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private configColorEnhance(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v0

    .line 5
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configColorEnhance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    .line 7
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f1208ac

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v1, v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->setEnabled(ZI)V

    const/16 v0, 0x8

    .line 9
    invoke-interface {v2, v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertProColourHint(II)V

    const-string/jumbo p1, "value_pro_color_close"

    .line 10
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackProColorClick(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1, v4, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->setEnabled(ZI)V

    .line 12
    invoke-interface {v2, v3, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertProColourHint(II)V

    const-string/jumbo p1, "value_pro_color_open"

    .line 13
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackProColorClick(Ljava/lang/String;)V

    :goto_0
    new-array p1, v4, [I

    const/16 v0, 0xe3

    aput v0, p1, v3

    .line 14
    invoke-interface {v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v4, [I

    const/16 v1, 0x4a

    aput v1, v0, v3

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private configDocumentMode(I)V
    .locals 7

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    .line 5
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    return-void

    .line 6
    :cond_4
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "configDocumentMode: MUTEX false"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setDocumentModeOn(Z)V

    move v2, v5

    goto :goto_1

    :cond_5
    const-string/jumbo p1, "p"

    if-eqz v2, :cond_6

    .line 8
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setDocumentModeOn(Z)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    move v2, v5

    goto :goto_0

    .line 10
    :cond_6
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setDocumentModeOn(Z)V

    new-array v2, v4, [I

    const/16 v6, 0xc4

    aput v6, v2, v5

    .line 11
    invoke-virtual {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 12
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    .line 13
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    :cond_7
    move v2, v4

    .line 16
    :goto_0
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configDocumentMode: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 p1, 0xdd

    if-eqz v2, :cond_8

    .line 17
    invoke-interface {v0, v4, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    .line 18
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0OO;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 19
    :cond_8
    invoke-interface {v0, v5, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    .line 20
    :goto_2
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->getDocumentModeValue(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDocumentModeChanged(Ljava/lang/String;)V

    return-void
.end method

.method private configDocumentModeValue(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configDocumentModeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v0

    const/16 v1, 0xba

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method private configDollyZoomBack()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private configDualVideo(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configDualVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/android/camera/dualvideo/recorder/RecordType;->getTypeByName(Ljava/lang/String;)Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 5
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->adjustViewBackground()V

    return-void
.end method

.method private configESPDisplay()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setESPSDisplaywitch(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v2, :cond_1

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/16 v5, 0xb5

    aput v5, v3, v4

    .line 5
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "attr_espdisplay"

    .line 7
    invoke-static {v4, v2, v3}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x3b1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->show(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->cancel()V

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigESPDisplay(Z)V

    return-void
.end method

.method private configFilmDreamBack()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configFilmDreamBack"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->showExitConfirm()V

    :cond_0
    return-void
.end method

.method private configGif()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo000;

    invoke-direct {v3, v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo000;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array v1, v1, [I

    const/16 v3, 0xa2

    aput v3, v1, v2

    .line 7
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configIDCardBack()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$IDCardModeProtocol;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IDCardModeProtocol;->callBackEvent()V

    return-void
.end method

.method private configIntoWorkspace()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    const-string/jumbo v1, "vlog2"

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configIntoWorkspace"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0xfffc

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/FragmentVVPreview;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->controlPlay(Z)V

    .line 10
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v2, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    return-void
.end method

.method private configLiveVideoQuality(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 5
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configLiveVideoQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    const-string/jumbo v3, "pref_mi_live_quality"

    invoke-static {v3, v2, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoQuality(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v2, 0xa0

    .line 7
    invoke-virtual {v0, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, v1, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configMacroMode()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "ignore configMacroMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configMacroMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xc2

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0x3a6

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    new-array v7, v1, [I

    const/16 v8, 0xd8

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 9
    invoke-virtual {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v7

    invoke-static {v7, v9}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v7

    invoke-static {v7, v9}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/module/Module;

    invoke-interface {v7}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 14
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_2
    const/16 v8, 0xa2

    if-eqz v0, :cond_5

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    if-eq v10, v8, :cond_3

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    const/16 v11, 0xa9

    if-ne v10, v11, :cond_5

    .line 17
    :cond_3
    invoke-direct {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 18
    invoke-static {v9}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    if-eqz v4, :cond_4

    .line 20
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x3

    .line 21
    invoke-interface {v4, v10}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_4
    if-eqz v6, :cond_5

    .line 22
    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x2

    const/4 v11, 0x5

    .line 23
    invoke-interface {v6, v10, v11}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    .line 24
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V

    .line 25
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->set4K120FpsOff(I)V

    .line 26
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 27
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 29
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v10

    invoke-static {v10, v9}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    goto :goto_0

    .line 30
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v10

    .line 31
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v11

    const-string v12, "normal"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 32
    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const-string v10, "macro"

    .line 33
    invoke-direct {p0, v10, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 34
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v10

    const-string v11, "m"

    if-eqz v0, :cond_8

    .line 35
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOn(I)V

    if-eqz v7, :cond_a

    .line 36
    invoke-virtual {v7}, Lcom/android/camera2/CameraCapabilities;->isMacroHdrMutex()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v7

    if-eq v7, v8, :cond_a

    new-array v7, v1, [I

    aput v5, v7, v9

    .line 37
    invoke-virtual {p0, v11, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 38
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    iget-object v7, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v5, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->setRecordingClosedElements([I)V

    goto :goto_1

    :cond_8
    if-eqz v7, :cond_9

    .line 39
    invoke-virtual {v7}, Lcom/android/camera2/CameraCapabilities;->isMacroHdrMutex()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v5

    if-eq v5, v8, :cond_9

    .line 40
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    .line 41
    invoke-virtual {p0, v11}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v2, :cond_9

    new-array v5, v1, [I

    const/16 v7, 0xc1

    aput v7, v5, v9

    .line 44
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 45
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v5

    invoke-virtual {v10, v5}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 46
    :cond_a
    :goto_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_b

    const-string/jumbo v7, "on"

    goto :goto_2

    :cond_b
    const-string/jumbo v7, "off"

    :goto_2
    const-string v8, "attr_switch_macro"

    .line 47
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "key_macro_mode"

    .line 48
    invoke-static {v7, v5}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v5

    invoke-direct {p0, v5, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 50
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v7, 0xaf

    invoke-virtual {v5, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 51
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    const/16 v8, 0xb6

    invoke-virtual {v7, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_d

    if-eqz v5, :cond_c

    .line 52
    invoke-interface {v5, v9}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    .line 53
    invoke-interface {v5, v9}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTips(Z)V

    :cond_c
    if-eqz v7, :cond_14

    .line 54
    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    goto :goto_4

    :cond_d
    if-eqz v4, :cond_e

    .line 55
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    if-eqz v6, :cond_f

    .line 56
    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3

    :cond_f
    move v1, v9

    :cond_10
    :goto_3
    if-eqz v5, :cond_11

    if-nez v1, :cond_11

    .line 57
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_11
    if-eqz v7, :cond_14

    if-nez v1, :cond_14

    .line 58
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 59
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    if-ne v0, v3, :cond_12

    .line 60
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Ooo0()Z

    move-result v0

    if-nez v0, :cond_13

    .line 61
    :cond_12
    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    :cond_13
    if-eqz v2, :cond_14

    .line 62
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_14
    :goto_4
    return-void
.end method

.method private configMoon(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configMoonBacklight()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo0O0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configMoonNight()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo0;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configMultiCamReselect()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configMultiCamReselect: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoO0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configPanoramaDirection()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isPanoramaVertical(Landroid/content/Context;)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configPanoramaDirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->toggleCaptureDirection()V

    :cond_0
    return-void
.end method

.method private configReferenceLineSwitch(I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_camera_referenceline_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    const/16 v5, 0xb6

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 4
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configReferenceLineSwitch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, p1, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackReferenceLineChanged(Z)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigGradienter()Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "off"

    if-eq v0, v3, :cond_3

    .line 12
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->onGradienterSwitched(Z)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_5

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideReferenceGradienter()V

    goto :goto_1

    .line 18
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    .line 19
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateCenterMarkSwitched()V

    :cond_5
    :goto_1
    return-void
.end method

.method private configRemoteCamera()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configSilhouette()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOOo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configSlowQuality(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSlowQuality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackSlowMotionQuality(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configSpeechShutter()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSpeechShutter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configSpeechShutter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setSpeechShutterStatus(Z)V

    .line 6
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSpeechShutterStatus(Z)V

    if-eqz v0, :cond_2

    const-string/jumbo v2, "speech_shutter_desc"

    .line 7
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xd2

    if-ne v2, v3, :cond_3

    const/4 v0, 0x0

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v2, :cond_4

    .line 11
    invoke-interface {v2, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingSpeechShutter(ZZ)V

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;

    if-eqz v1, :cond_5

    .line 13
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;->processingSpeechShutter(Z)V

    :cond_5
    return-void
.end method

.method private configSuperEIS()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "super_eis"

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    .line 5
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    .line 6
    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configSuperEIS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 v5, 0xda

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    new-array v2, v2, [I

    aput v5, v2, v6

    .line 9
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v3, v2}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    new-array v7, v2, [I

    aput v5, v7, v6

    .line 11
    invoke-interface {v0, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    new-array v5, v2, [I

    const/16 v7, 0xd8

    aput v7, v5, v6

    .line 12
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 14
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 17
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v5

    .line 19
    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 20
    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 21
    :cond_3
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 22
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 23
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/Module;

    invoke-interface {v5}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    .line 24
    invoke-static {v5, v3}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 25
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    .line 26
    :cond_4
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    .line 27
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 28
    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v5, 0x3a6

    invoke-virtual {v2, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v2, :cond_5

    .line 30
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    const/4 v7, 0x5

    .line 31
    invoke-interface {v2, v5, v7}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    :cond_5
    :goto_0
    xor-int/lit8 v2, v4, 0x1

    .line 32
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackSuperEISChanged(Z)V

    const/16 v2, 0xcc

    const/16 v5, 0xa2

    if-ne v3, v2, :cond_6

    .line 33
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 34
    :cond_6
    invoke-direct {p0, v5, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 35
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v4, :cond_7

    const/16 v3, 0x8

    const v4, 0x7f12091d

    .line 36
    invoke-interface {v0, v1, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 37
    :cond_7
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configSuperEISPro()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const-string/jumbo v2, "super_eis_pro"

    .line 3
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v2

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configSuperEISPro: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    new-array v4, v1, [I

    const/16 v5, 0xa5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 9
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    const-string/jumbo v0, "off"

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v1, [I

    const/16 v3, 0xd8

    aput v3, v0, v6

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 13
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 16
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 20
    :cond_2
    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 21
    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 22
    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    .line 23
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 24
    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    .line 26
    :cond_3
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    :cond_4
    const/16 v0, 0xcc

    const/16 v3, 0xa2

    if-ne v2, v0, :cond_5

    .line 27
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 28
    :cond_5
    invoke-direct {p0, v3, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 30
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configSwitchHandGesture()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configSwitchHandGesture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string v2, "hand_gesture_desc"

    .line 6
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 7
    :cond_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setHandGestureStatus(Z)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO;-><init>(Z)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method private configSwitchUltraWide()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configSwitchUltraWide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    .line 7
    :cond_1
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setUltraWideConfig(IZ)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LensProtocol;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$LensProtocol;->onSwitchLens(Z)V

    :cond_2
    return-void
.end method

.method private configSwitchUltraWideBokeh()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 6
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSwitchUltraWideBokeh: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v3, v1, 0x1

    .line 7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "M_portrait_"

    const-string v5, "attr_whole_body"

    .line 8
    invoke-static {v4, v5, v3}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const-string/jumbo v4, "ultra_wide_bokeh"

    if-eqz v1, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const v1, 0x7f120996

    .line 10
    invoke-interface {v0, v4, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, v4, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/16 v1, 0x8

    const v2, 0x7f120997

    .line 13
    invoke-interface {v0, v4, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 14
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private configTilt(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTilt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    const/16 v1, 0xa0

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    .line 7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private configTimerBurst(I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v0

    const v1, 0x7f120978

    const/16 v2, 0xac

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 p1, 0x1

    xor-int/2addr v0, p1

    .line 2
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configTimerBurst: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setTimerBurstEnable(Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/Module;

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "attr_timer_burst"

    invoke-static {v7, v5, v6}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    .line 9
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    new-array p1, p1, [I

    const/16 v2, 0xd1

    aput v2, p1, v3

    .line 12
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 13
    invoke-interface {v4}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 14
    :cond_2
    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTimerBurstHint(II)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    .line 15
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "configTimerBurst: MUTEX false"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/camera/timerburst/TimerBurstController;->muteTimerConfig()V

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/16 v0, 0x8

    .line 19
    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTimerBurstHint(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method private configUseGuide(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configUseGuide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xbb

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    move-object p1, v1

    move-object v0, p1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/android/camera/dualvideo/user_guide/FragmentDualVideoUserGuide;

    invoke-direct {p1}, Lcom/android/camera/dualvideo/user_guide/FragmentDualVideoUserGuide;-><init>()V

    const-string v0, "dualvideo_user_guide"

    goto :goto_0

    .line 5
    :cond_2
    sget-object v1, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;

    invoke-direct {p1}, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;-><init>()V

    const-string v0, "ambilight_user_guide"

    :goto_0
    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x2

    const v3, 0x7f1300c7

    .line 8
    invoke-virtual {p1, v2, v3}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 10
    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string p1, "attr_user_guide"

    const-string v1, "click"

    .line 12
    invoke-static {p1, v0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private configVV()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const v1, 0x7f0a0093

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/16 v4, 0xa2

    const/16 v5, 0xac

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xfffa

    if-eq v1, v8, :cond_9

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v8

    check-cast v8, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v8, :cond_0

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v9

    invoke-virtual {v9}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOOO()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 6
    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearVideoUltraClear()V

    :cond_0
    const/16 v8, 0xa9

    if-ne v1, v8, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v7

    .line 8
    :goto_0
    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    move v8, v6

    .line 10
    :cond_2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    move v8, v6

    .line 12
    :cond_3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    move v8, v6

    .line 14
    :cond_4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    move v8, v6

    .line 16
    :cond_5
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v3

    .line 18
    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    move v8, v6

    .line 19
    :cond_6
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 20
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    move v8, v6

    :cond_7
    if-eqz v8, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    invoke-static {v3, v1}, Lcom/android/camera/CameraSettings;->setRetainZoom(FI)V

    .line 22
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    const-string v9, "6"

    .line 23
    invoke-virtual {v3, v9}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setForceValueOverlay(Ljava/lang/String;)V

    .line 24
    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    new-array v1, v7, [I

    .line 25
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_1

    .line 26
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setForceValueOverlay(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_a

    const/16 v3, 0x8

    const v8, 0x7f1209e7

    .line 29
    invoke-interface {v1, v3, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(II)V

    :cond_a
    new-array v1, v7, [I

    .line 30
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideoUltraClearTip()V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideo4KHDR10P()V

    move v8, v7

    .line 33
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-array v1, v6, [I

    const/16 v2, 0xd8

    aput v2, v1, v7

    .line 34
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    new-array v1, v6, [I

    const/16 v2, 0x100

    aput v2, v1, v7

    .line 35
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 36
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    if-eqz v8, :cond_c

    .line 37
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_c
    return-void
.end method

.method private configVVBack()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configVVBack"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->showExitConfirm()V

    :cond_0
    return-void
.end method

.method private configVideoBokehSwitch(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_video_bokeh_key"

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    .line 6
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configVideoBokehSwitch: switchOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "attr_BOKEH"

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 8
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->switchOn(Ljava/lang/String;)V

    const-string/jumbo v0, "on"

    .line 10
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->switchOff(Ljava/lang/String;)V

    const-string/jumbo v0, "off"

    .line 12
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "key_video_common_click"

    .line 13
    invoke-static {v0, v3}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v3, 0xf3

    aput v3, v1, v5

    .line 14
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    const-string/jumbo v0, "video_bokeh"

    if-nez v2, :cond_2

    const v1, 0x7f1207b7

    .line 16
    invoke-interface {p1, v0, v5, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    const v2, 0x7f1207b6

    .line 17
    invoke-interface {p1, v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :goto_1
    return-void
.end method

.method private configVideoHdrIfNeed()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    const/16 v3, 0xa2

    if-ne v0, v3, :cond_5

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoHdr()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    const-string v3, "hdr"

    .line 5
    invoke-direct {p0, v3, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "attr_video_hdr"

    if-nez v3, :cond_3

    .line 7
    invoke-static {v4, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    .line 8
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "video Hdr mutex"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 10
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    new-array v3, v2, [I

    const/16 v4, 0xd8

    aput v4, v3, v1

    .line 11
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 14
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 15
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 16
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 17
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    .line 18
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    const-string v3, "normal"

    .line 20
    invoke-virtual {v1, v0, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ICameraMgr;->getZoomRatio()F

    move-result v1

    const/high16 v3, 0x40c00000    # 6.0f

    .line 25
    invoke-static {v3}, Lcom/android/camera/HybridZoomingSystem;->getMaxMainZoomRatio(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v4, v1

    if-gtz v5, :cond_2

    cmpg-float v1, v1, v3

    if-lez v1, :cond_4

    .line 26
    :cond_2
    invoke-static {v4, v0}, Lcom/android/camera/CameraSettings;->setRetainZoom(FI)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-static {v4, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    .line 28
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return v2

    :cond_5
    return v1
.end method

.method private configVideoQuality(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd8

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 6
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setComponentValue(ILjava/lang/String;)V

    .line 8
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configVideoQuality: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    const-string/jumbo v5, "pref_video_quality_key"

    invoke-static {v5, v4, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoQuality(Ljava/lang/String;ZLjava/lang/String;)V

    .line 10
    invoke-direct {p0, v0, v1, v3, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V

    .line 11
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configVideoSubFps(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configVideoSubFps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 6
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    .line 7
    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const-string v1, "120"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "8"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configVideoSubQuality(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configVideoSubQuality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 6
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    .line 7
    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const-string v1, "8"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "120"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_0

    :cond_0
    const-string v1, "3001"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->openVideo8K()V

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configVideoSubtitle()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v2

    .line 5
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configVideoSubtitle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v3, v2, 0x1

    .line 6
    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackSubtitle(Z)V

    const/16 v3, 0xa2

    const/16 v4, 0xdc

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    new-array v2, v6, [I

    aput v4, v2, v5

    .line 8
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    new-array v2, v6, [I

    aput v4, v2, v5

    .line 10
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    const/16 v0, 0xd6

    if-eq v1, v0, :cond_4

    .line 11
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->set4K120FpsOff(I)V

    .line 12
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    new-array v0, v6, [I

    const/16 v2, 0xd8

    aput v2, v0, v5

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 16
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    .line 18
    :cond_3
    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    :cond_4
    :goto_0
    const/16 v0, 0xcc

    if-ne v1, v0, :cond_5

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 20
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 21
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xaf

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 22
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xe7

    .line 24
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    .line 25
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->initPermission()V

    .line 26
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->checkNetWorkStatus()V

    .line 27
    :cond_6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private conflictWithFlashAndHdr()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_hand_night_key"

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const-string/jumbo v1, "pref_camera_super_resolution_key"

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getModule()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOoo;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOoo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getState(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private getUpDistance()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfd

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xc2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->getDistanceForWM()I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->getDistanceForWM()I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private is4KQuality(II)Z
    .locals 1

    const/16 v0, 0xf00

    if-lt p1, v0, :cond_0

    const/16 p1, 0x870

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private is8KQuality(II)Z
    .locals 1

    const/16 v0, 0x1e00

    if-lt p1, v0, :cond_0

    const/16 p1, 0x10e0

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBeautyPanelShow()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isChangeManuallyParameters()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyWB()Lcom/android/camera/data/data/config/ComponentManuallyWB;

    move-result-object v3

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v4

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v6

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v1

    .line 10
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v3

    .line 11
    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v4

    .line 12
    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v5

    .line 13
    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v6

    .line 14
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v0

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private isShowMimojiView(Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    .line 1
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result p1

    const v1, 0xfff0

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVideoRecoding(Lcom/android/camera/module/Module;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/module/VideoBase;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/IModuleState;->isRecording()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private moduleExist()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method private moduleIndex()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo00O;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo00O;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private mutexBeautyBusiness(I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0xd8

    aput v3, v2, v1

    .line 3
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v3

    const/16 v4, 0xaf

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 7
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 9
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideSwitchTip()V

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 14
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    if-eqz v2, :cond_1

    .line 15
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideSwitchTip()V

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 18
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 19
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 20
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    if-eqz v2, :cond_2

    .line 21
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideSwitchTip()V

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    .line 24
    invoke-static {v3, p1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    .line 26
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v3

    .line 27
    invoke-virtual {v3, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 28
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 29
    invoke-virtual {v3, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 30
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    const-string/jumbo v4, "pref_video_bokeh_key"

    .line 31
    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/DataItemConfig;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 32
    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/DataItemConfig;->switchOff(Ljava/lang/String;)V

    .line 33
    :cond_5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 34
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    if-eqz v2, :cond_6

    new-array p1, v0, [I

    const/16 v0, 0x100

    aput v0, p1, v1

    .line 35
    invoke-interface {v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_6
    return-void
.end method

.method private openVideo8K()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    const/16 v3, 0x1e

    .line 5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->track8KVideo(ILjava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    :cond_2
    const/4 v1, 0x1

    new-array v3, v1, [I

    const/16 v4, 0xd8

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooooO()Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v3

    .line 12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 13
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 15
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v3

    goto :goto_0

    .line 19
    :cond_5
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    .line 20
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v4

    goto :goto_1

    .line 22
    :cond_6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v4

    .line 23
    :goto_1
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v6

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_8

    .line 24
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 25
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 27
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_8

    .line 28
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v3

    const-string/jumbo v4, "wide"

    .line 29
    invoke-virtual {v3, v2, v4}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 30
    :cond_8
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 31
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    .line 32
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 33
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 34
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 35
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 36
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 37
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    .line 38
    invoke-static {v3, v2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 39
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    .line 40
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 41
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    .line 42
    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    new-array v1, v1, [I

    const/16 v2, 0x100

    aput v2, v1, v5

    .line 43
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    const v1, 0x7f1207b4

    .line 44
    invoke-interface {v0, v5, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    return-void
.end method

.method private persistFilter(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persistFilter: filterId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    return-void
.end method

.method public static preload()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preload"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reConfigTipOfHdr(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "on"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "normal"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "live"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 9
    invoke-interface {v1, v2, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isHDRShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x8

    .line 11
    invoke-interface {v1, p1, v2, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    invoke-interface {v1, v2, v2, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private resetVideoBokehLevel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    return-void
.end method

.method private resetVideoFilter()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    return-void
.end method

.method private setTipsState(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setTipsState(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private showDualController(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo0oo()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    const/16 v1, 0xa3

    if-ne p1, v1, :cond_2

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showOrHideManualPictureStyle()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3ab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManualPictureStyleProtocol;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4
    :goto_0
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showOrHideContrastSaturationSharpness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xb5

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v4

    const/16 v5, 0xa7

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    .line 8
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xc2

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v3, :cond_4

    .line 9
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    .line 10
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    .line 11
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v3, :cond_5

    const/4 v4, 0x3

    new-array v1, v1, [I

    const/16 v5, 0xe3

    aput v5, v1, v2

    .line 12
    invoke-interface {v3, v4, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_5
    if-eqz v0, :cond_6

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->show()V

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_8

    const/16 v0, 0x28

    new-array v1, v2, [I

    .line 14
    invoke-interface {v3, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x6

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    :cond_8
    :goto_2
    return-void
.end method

.method private showOrHideTipImage(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    :cond_0
    return-void
.end method

.method private singeSwitchVideoBeauty(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    .line 3
    :cond_0
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    const/16 v0, 0x28

    goto :goto_0

    :cond_2
    move v0, v2

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    if-nez p1, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setVideoShineForceOn(IZ)V

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    .line 11
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged()V

    .line 13
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoBokehRatioChanged()V

    .line 14
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoFilterChanged()V

    .line 15
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onShineStateChanged()V

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    :cond_5
    :goto_1
    return-void
.end method

.method private trackCenterMarkChanged(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "center_mark"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackFocusPeakChanged(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "M_manual_"

    const-string v1, "manual_focus_peak"

    invoke-static {v0, v1, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private trackGenderAgeChanged(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "gender_age"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackGradienterChanged(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "gradient"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackHHTChanged(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "HHT"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackMagicMirrorChanged(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "magic_mirror"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackReferenceLineChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const-string/jumbo v0, "pref_camera_referenceline_type_key"

    const-string v1, "jiugongge"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p1, 0x0

    const-string v1, "attr_reference_line"

    .line 3
    invoke-static {v1, v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackReferenceLineTypeChanged()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_type_key"

    const-string v2, "jiugongge"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_reference_line_type"

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private trackSuperEISChanged(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_module_name"

    .line 4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "front"

    goto :goto_0

    :cond_0
    const-string v1, "back"

    :goto_0
    const-string v2, "attr_sensor_id"

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "attr_super_eis"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_video_common_click"

    .line 8
    invoke-static {p1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackSuperResolutionChanged(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "M_manual_"

    const-string/jumbo v1, "super_resolution"

    invoke-static {v0, v1, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private trackUltraPixelPortraitChanged(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ultrapixel_portrait"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private updateAiScene(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigAi()Lcom/android/camera/data/data/config/ComponentConfigAi;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigAi;->isClosed(I)Z

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigAi;->setClosed(ZI)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc9

    aput v2, v0, v1

    .line 8
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAutoZoom(Z)V
    .locals 0

    return-void
.end method

.method private updateComponentBeauty(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 8
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xea

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0xef

    .line 10
    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateComponentFilter(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateComponentFilter: close = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->isClosed(I)Z

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xd4

    aput v3, v1, v2

    .line 8
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 11
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateComponentFlash(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "d"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(Z)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xac

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    const/16 v1, 0xc1

    aput v1, p2, v0

    .line 9
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateComponentHdr(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed()Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOoo;

    invoke-direct {v2, p1, v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOoo;-><init>(ZLcom/android/camera/data/data/config/ComponentConfigHdr;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc2

    aput v2, v0, v1

    .line 6
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateComponentShine(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setClosed(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLiveShot(Z)V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOO0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigLiveShot()Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;->isClosed()Z

    move-result v1

    if-ne v1, p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;->setClosed(Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xce

    aput v2, v0, v1

    .line 7
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method private updateRaw(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isClosed(I)Z

    move-result v2

    if-ne v2, p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->setClosed(ZI)V

    return-void
.end method

.method private updateUltraPixel(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v1

    if-ne v1, p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->setClosed(Z)V

    return-void
.end method

.method private watermarkToast()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const v2, 0x7f120134

    const-string v3, "ai_watermark"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    const/16 p1, 0xcf

    if-eq v0, p1, :cond_1

    const/16 p1, 0xd2

    if-eq v0, p1, :cond_1

    const/16 p1, 0xd5

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUseGuide(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCloneUseGuide()V

    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;ILcom/android/camera/module/Module;)V
    .locals 1

    .line 19
    invoke-interface {p3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isMacroHdrMutex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p3}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p3

    const-string/jumbo v0, "off"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 26
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 27
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(ZLcom/android/camera/module/Module;)V
    .locals 6

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xa2

    if-eq v1, v5, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    if-eq v1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 10
    instance-of v0, p2, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 11
    move-object v0, p2

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->resetMagneticInfo()V

    :cond_0
    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v3, [I

    const/16 v1, 0xb

    aput v1, v0, v4

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 14
    :cond_1
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array p2, v3, [I

    aput v2, p2, v4

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 15
    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {p2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array p2, v3, [I

    aput v2, p2, v4

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :goto_0
    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ICameraMgr;->getBogusCameraId()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 5
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xac

    if-eq v1, v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdr()V

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x3a
    .end array-data
.end method

.method public synthetic OooO0Oo(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 3
    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoon(Z)V

    .line 6
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "(moon_mode) config moon night"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->updateMoonNight()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o0(Lcom/android/camera/module/Module;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xac

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedStringIdIgnoreClose(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    .line 6
    :goto_0
    invoke-interface {v1, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(ILjava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    const-string p1, "960fps_desc"

    .line 8
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    const v0, 0x7f120416

    .line 10
    invoke-interface {v1, p1, v2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_5
    return-void
.end method

.method public varargs closeMutexElement(Ljava/lang/String;[I)V
    .locals 6

    .line 1
    array-length v0, p2

    new-array v0, v0, [I

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_b

    .line 4
    aget v2, p2, v1

    const/16 v3, 0xc1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc2

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc4

    const/4 v5, 0x2

    if-eq v2, v3, :cond_8

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xce

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd1

    if-eq v2, v3, :cond_5

    const/16 v3, 0xd4

    if-eq v2, v3, :cond_4

    const/16 v3, 0xe3

    if-eq v2, v3, :cond_3

    const/16 v3, 0xed

    if-eq v2, v3, :cond_2

    const/16 v3, 0xef

    if-eq v2, v3, :cond_1

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_0

    .line 5
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAutoZoom(Z)V

    const/16 v2, 0x33

    .line 6
    aput v2, v0, v1

    goto :goto_1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unknown mutex element"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    const/16 v2, 0xd

    .line 9
    aput v2, v0, v1

    goto :goto_1

    .line 10
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateRaw(Z)V

    const/16 v2, 0x2c

    .line 11
    aput v2, v0, v1

    goto :goto_1

    :cond_3
    const/16 v2, 0x4a

    .line 12
    aput v2, v0, v1

    goto :goto_1

    .line 13
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentShine(Z)V

    .line 14
    aput v5, v0, v1

    goto :goto_1

    .line 15
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateUltraPixel(Z)V

    const/16 v2, 0x32

    .line 16
    aput v2, v0, v1

    goto :goto_1

    .line 17
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateLiveShot(Z)V

    const/16 v2, 0x31

    .line 18
    aput v2, v0, v1

    goto :goto_1

    .line 19
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    const/16 v2, 0x24

    .line 20
    aput v2, v0, v1

    goto :goto_1

    .line 21
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    .line 22
    aput v5, v0, v1

    goto :goto_1

    .line 23
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    const/16 v2, 0xb

    .line 24
    aput v2, v0, v1

    goto :goto_1

    .line 25
    :cond_a
    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    const/16 v2, 0xa

    .line 26
    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 27
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO00o;

    invoke-direct {p2, v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO00o;-><init>([I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configAi108()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v0

    .line 3
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configAi108: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xaf

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setAi108Running(Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    .line 7
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_2

    const-string/jumbo v2, "ultra_pixel"

    .line 8
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setTipsState(Ljava/lang/String;Z)V

    new-array v2, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xab

    aput v5, v2, v4

    .line 9
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 11
    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public configBackSoftLightSwitch(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0oo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0oo;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configBeautySwitch(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    const/16 v0, 0xa2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v3, 0xa9

    if-eq p1, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/16 v4, 0xa3

    const/16 v5, 0xa1

    if-eq p1, v4, :cond_2

    const/16 v4, 0xab

    if-eq p1, v4, :cond_2

    if-eq p1, v5, :cond_2

    if-nez v3, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v4

    .line 4
    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getNextValue(I)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "i:0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v2

    .line 6
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v2

    xor-int/2addr v7, v8

    .line 7
    invoke-virtual {v4, p1, v6}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setComponentValue(ILjava/lang/String;)V

    .line 8
    invoke-static {v6}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautySwitchChanged(Ljava/lang/String;)V

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    if-eq p1, v0, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    const-string/jumbo v5, "pref_video_speed_fast_key"

    .line 11
    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 12
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 13
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    .line 14
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string p1, "normal"

    .line 15
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    if-ne p1, v5, :cond_5

    .line 17
    invoke-direct {p0, v5, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v2, [I

    const/16 v2, 0xd

    aput v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :goto_1
    return-void
.end method

.method public configBokeh(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configBokeh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo0O;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configCenterMarkSwitch(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setCenterMarkOn(Z)V

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setCenterMarkOn(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v1

    .line 5
    :goto_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCenterMarkSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-ne v2, p1, :cond_3

    .line 7
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackCenterMarkChanged(Z)V

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_5

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideReferenceGradienter()V

    goto :goto_1

    .line 12
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateCenterMarkSwitched()V

    :cond_5
    :goto_1
    return-void
.end method

.method public configCinematicAspectRatio(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    .line 6
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 7
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCinematicAspectRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    const/16 v2, 0xab

    const-string/jumbo v3, "on"

    const-string/jumbo v4, "off"

    const/4 v5, 0x0

    if-eq p1, v2, :cond_6

    const/16 v2, 0xa3

    if-eq p1, v2, :cond_6

    const/16 v2, 0xad

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v3, v4

    :goto_0
    const-string v0, "attr_video_ratio_movie"

    .line 9
    invoke-static {v0, v3, v5}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v1, [I

    const/16 v1, 0xd8

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 11
    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    .line 12
    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    .line 13
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooooO()Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 15
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_3

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, v4

    :goto_2
    const-string p1, "attr_picture_ration_movie"

    .line 16
    invoke-static {p1, v3, v5}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public configClone(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configClone: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1a2

    if-eqz p2, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;->hide()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-interface {p2, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    const/16 p1, 0xb9

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->quit()V

    :cond_3
    const/16 p1, 0xd2

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void
.end method

.method public configDualWaterMarkSwitch()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 2
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualWaterMarkChanged(Z)V

    .line 3
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configDualWaterMarkSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo00o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configExposureFeedbackSwitch(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_exposure_feedback"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    if-ne v3, p1, :cond_3

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    if-ne v3, p1, :cond_3

    const/16 p1, 0xa7

    if-ne v2, p1, :cond_1

    const-string p1, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p1, "M_proVideo_"

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v2, "on"

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "off"

    :goto_1
    const-string v3, "manual_focus_peak"

    .line 5
    invoke-static {p1, v3, v2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configExposureFeedbackSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    const-string/jumbo v1, "pref_camera_peak_key"

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 11
    :goto_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setDrawExposure(Z)V

    return-void
.end method

.method public configFPS960(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configFPS960: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "slow_motion_480"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "slow_motion_960"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "slow_motion_1920"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "960fps_desc"

    .line 8
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    :cond_2
    const/16 v1, 0xac

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, v1, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p3

    const-string v0, "configFilm: start="

    if-nez p1, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", filmItem.id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v0, 0xd4

    const/16 v1, 0xcf

    const/16 v2, 0xbd

    const/16 v3, 0xd0

    if-eqz p2, :cond_7

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/extra/DataItemLive;->setCurrentFilmItem(Lcom/android/camera/fragment/film/FilmItem;)V

    .line 5
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v4, "video_a"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v2, "video_b"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v1, "video_c"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v1, 0xa4

    .line 11
    invoke-virtual {p2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez p2, :cond_3

    .line 12
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startShot ignore, configChanges is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_3
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-static {v1}, Lcom/android/camera/fragment/clone/Config;->setCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    .line 14
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-interface {p2, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configTimeFreeze(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v1, "video_d"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    .line 17
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo p2, "video_e"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class p2, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1, p2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    .line 19
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->reset()V

    .line 20
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    .line 21
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1207c8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1207c6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->getVolumeCameraFunction(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 27
    invoke-static {p3, p2}, Lcom/android/camera/CameraSettings;->setVolumeCameraFunction(ILjava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_9

    if-eq p3, v3, :cond_9

    if-eq p3, v0, :cond_9

    const/16 p1, 0xd5

    if-eq p3, p1, :cond_9

    goto :goto_2

    .line 29
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xac

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_a

    if-ne p3, v3, :cond_a

    const/4 p2, 0x0

    .line 30
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setAlertAnim(Z)V

    const/16 p2, 0x8

    const p3, 0x7f1203e1

    const-wide/16 v0, -0x1

    .line 31
    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_a
    const/16 p1, 0xd3

    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public configFlash(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configFlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdr()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v0, v1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOOO;

    invoke-direct {v0, p0, p2}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOOO;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Z)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configFocusPeakSwitch(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_peak_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_3

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    const/16 v2, 0xa7

    if-ne p1, v2, :cond_1

    const-string p1, "M_manual_"

    goto :goto_0

    :cond_1
    const-string p1, "M_proVideo_"

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v2, "on"

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "off"

    :goto_1
    const-string v3, "manual_focus_peak"

    invoke-static {p1, v3, v2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configFocusPeakSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    const-string/jumbo v1, "pref_camera_exposure_feedback"

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/effect/EffectController;->setDrawExposure(Z)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 9
    :goto_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    return-void
.end method

.method public configGenderAgeSwitch(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    const-string/jumbo v1, "pref_camera_show_gender_age_key"

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    .line 4
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGenderAgeSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGenderAgeChanged(Z)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v3, 0xa6

    .line 7
    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 8
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowGenderAndAge(Z)V

    .line 9
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v3, v2, [I

    const/16 v4, 0x26

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-interface {p1, v3}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ICameraMgr;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v2}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ICameraMgr;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1, v5}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public configGradienterSwitch(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    .line 5
    :goto_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGradienterSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, p1, :cond_2

    .line 6
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGradienterChanged(Z)V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/camera/module/common/IUserEventMgr;->onGradienterSwitched(Z)V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_5

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideReferenceGradienter()V

    goto :goto_1

    .line 13
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    :cond_5
    :goto_1
    return-void
.end method

.method public configHdr(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoHdrIfNeed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configHdr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    instance-of v0, v0, Lcom/android/camera/Camera;

    const-string v1, "auto"

    if-eqz v0, :cond_2

    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-wide/16 v2, 0xa3

    .line 5
    invoke-static {v2, v3}, Lcom/android/camera/Util;->reclaimMemoryForCamera(J)V

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOO0o;

    invoke-direct {v2, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOO0o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdr()V

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOooO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOo0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo v0, "off"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    .line 15
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUltraPixelPortrait(I)V

    .line 18
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO0;

    invoke-direct {v1, p0, p1, v2}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO0;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 19
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigTipOfHdr(I)V

    return-void
.end method

.method public configIDCard()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configIDCard"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0xdd

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setEntranceMode(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackGotoIDCard()V

    const/16 v0, 0xb6

    .line 7
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void
.end method

.method public configLiveMusicSelect()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    const-string v0, "mi_live_click_music"

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v2, Lcom/android/camera/fragment/music/LiveMusicPadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v2, Lcom/android/camera/fragment/music/LiveMusicActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    return-void
.end method

.method public configLiveShotSwitch(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ICameraMgr;->isFrameAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa3

    if-eq v1, v2, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOO0()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 7
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xac

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_5

    return-void

    .line 9
    :cond_5
    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    const/4 v2, 0x4

    if-eq p1, v2, :cond_6

    goto/16 :goto_1

    .line 10
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "configLiveShotSwitch: MUTEX false"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setLiveShotOn(Z)V

    .line 13
    invoke-virtual {v0, v5}, Lcom/android/camera/module/Camera2Module;->stopLiveShot(Z)V

    goto :goto_1

    .line 14
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p1

    xor-int/lit8 v6, p1, 0x1

    .line 15
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setLiveShotOn(Z)V

    .line 16
    sget-object v6, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configLiveShotSwitch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    .line 17
    invoke-virtual {v0, v5}, Lcom/android/camera/module/Camera2Module;->stopLiveShot(Z)V

    const/16 p1, 0x8

    const v0, 0x7f12024d

    .line 18
    invoke-interface {v1, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertLiveShotHint(II)V

    goto :goto_1

    .line 19
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    .line 20
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    .line 21
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-nez p1, :cond_a

    .line 22
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare()Z

    move-result p1

    if-nez p1, :cond_9

    .line 23
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, v5, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_9
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->startLiveShot()V

    const p1, 0x7f12024e

    .line 27
    invoke-interface {v1, v5, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertLiveShotHint(II)V

    :goto_0
    const-string p1, "live_shot"

    .line 28
    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    goto :goto_1

    .line 29
    :cond_a
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "Ignore #startLiveShot in ultra pixel photography mode"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    new-array p1, v4, [I

    const/16 v0, 0xce

    aput v0, p1, v5

    .line 30
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method public configLiveVV(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMProcessing;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->reset()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/android/camera/data/observeable/VMProcessing;->setCurrentWorkspaceItem(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    .line 4
    sget-object p2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configLiveVV "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xe5

    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$LiveVVChooser;

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$LiveVVChooser;->hide()V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/extra/DataItemLive;->setCurrentVVItem(Lcom/android/camera/fragment/vv/VVItem;)V

    const/16 p1, 0xb3

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVV()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getCurrentVVItem()Lcom/android/camera/fragment/vv/VVItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    iget p1, p1, Lcom/android/camera/fragment/vv/VVItem;->index:I

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xe6

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->quit()V

    :cond_4
    :goto_0
    const/16 p1, 0xd1

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :goto_1
    return-void
.end method

.method public configMagicMirrorSwitch(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    const-string/jumbo v1, "pref_camera_magic_mirror_key"

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    .line 4
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configMagicMirrorSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v3, 0xa6

    .line 7
    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 8
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowMagicMirror(Z)V

    .line 9
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v3, v2, [I

    const/16 v4, 0x27

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-interface {p1, v3}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ICameraMgr;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v2}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ICameraMgr;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1, v5}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public configMeter(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configMeter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckParameterResetTip(Z)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOO0;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configNearRangeMode()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0O0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configPortraitSwitch(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo0o;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configRGBHistogramSwitch(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/android/camera/module/common/ICameraMgr;->isFrameAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    .line 6
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configRGBHistogramSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    .line 7
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoHistogramOpen(Z)V

    if-eqz v0, :cond_2

    const-string/jumbo v1, "off"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "on"

    :goto_0
    const-string v2, "M_proVideo_"

    const-string v3, "histogram"

    .line 8
    invoke-static {v2, v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_3

    xor-int/lit8 v0, v0, 0x1

    .line 10
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRGBHistogramSwitched(Z)V

    :cond_3
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public configRatio(ZLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ICameraMgr;->isFrameAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideLighting()V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v0, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureSize(ILjava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5, v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->reConfigCinematicAspectRatioIfRatioChanged(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    new-array v5, v4, [I

    const/16 v6, 0xfb

    aput v6, v5, v3

    .line 13
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 14
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    const-string v5, "16x9"

    if-eqz v1, :cond_5

    move p1, v4

    move-object p2, v5

    :cond_5
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "19.5x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v7

    goto :goto_1

    :sswitch_1
    const-string v5, "16x10"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v5, "20x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v5, "19x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v5, "18x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    goto :goto_1

    :sswitch_5
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v3

    goto :goto_1

    :sswitch_6
    const-string v5, "1x1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x6

    :cond_6
    :goto_1
    packed-switch v1, :pswitch_data_0

    move v1, v3

    :goto_2
    move v5, v1

    goto :goto_3

    :pswitch_0
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_7

    .line 16
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare()Z

    move-result v1

    if-nez v1, :cond_7

    .line 17
    invoke-virtual {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    :cond_7
    :pswitch_1
    move v1, v4

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_8

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    :cond_8
    if-eqz v5, :cond_9

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v4, [I

    const/16 v4, 0xd1

    aput v4, v1, v3

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    :cond_9
    if-nez p1, :cond_a

    .line 21
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configRatio: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {v2, v0, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 23
    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 24
    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc6aa -> :sswitch_6
        0x171fa6 -> :sswitch_5
        0x172728 -> :sswitch_4
        0x172ae9 -> :sswitch_3
        0x177d7f -> :sswitch_2
        0x2ccd452 -> :sswitch_1
        0x56d670f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public configRawSwitch(I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configRawSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "raw"

    const-string v5, "M_manual_"

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1, v6}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->setRaw(IZ)V

    const-string/jumbo v0, "off"

    .line 8
    invoke-static {v5, p1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v1, v4}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->setRaw(IZ)V

    .line 10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0, v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO00o(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v4, [I

    const/16 v2, 0xd1

    aput v2, v0, v6

    const-string v2, "n"

    .line 11
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    :cond_3
    const-string/jumbo v0, "on"

    .line 12
    invoke-static {v5, p1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 14
    invoke-direct {p0, v1, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckRaw()V

    :goto_1
    return-void
.end method

.method public configReferenceSwitch(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configReferenceSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getmComponentLiveReferenceLine()Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;->setComponentValue(ILjava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_type_key"

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    .line 11
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ICameraMgr;->isFrameAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackReferenceLineTypeChanged()V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    .line 16
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    const/4 v0, 0x1

    .line 17
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    .line 18
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    :goto_0
    return-void
.end method

.method public configRotationChange(II)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configRotationChange: show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", degree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    const/16 v4, 0x5a

    if-eq p2, v4, :cond_4

    const/16 v4, 0xb4

    if-eq p2, v4, :cond_0

    const/16 v4, 0x10e

    if-eq p2, v4, :cond_4

    goto :goto_2

    .line 4
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, v3, v3}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_1
    if-eqz v1, :cond_7

    const/4 p2, 0x2

    .line 6
    invoke-interface {v1, p2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isSubTipShowing(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {v1, v3, v3}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    goto :goto_2

    :cond_2
    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 8
    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 9
    invoke-interface {v1, v3, v3}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_5
    if-eqz v0, :cond_7

    if-ne p1, v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    .line 10
    :goto_1
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_7
    :goto_2
    return-void
.end method

.method public configSuperResolutionSwitch(I)V
    .locals 4

    const-string/jumbo v0, "pref_camera_super_resolution_key"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configSuperResolutionSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackSuperResolutionChanged(Z)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    .line 6
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object p1

    const-string v1, "c"

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    const/16 v0, 0x9

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/camera/MutexModeManager;->setMutexModeMandatory(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->clearMandatoryFlag()V

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc1
        0xc2
    .end array-data
.end method

.method public configSwitchUltraPixel(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    .line 2
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v2, :cond_1a

    .line 3
    iget-object v3, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 4
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/Module;

    invoke-interface {v4}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/IModuleState;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_9

    .line 6
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v4

    if-nez v4, :cond_2

    .line 7
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "ignore configSwitchUltraPixel"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getCurrentSupportUltraPixel()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-interface {v3}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    const/16 v10, 0x8

    const-string v11, "REAR_0x2"

    const-string/jumbo v14, "ultra_pixel"

    const-string v15, "j"

    const/4 v9, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v1, v12, :cond_6

    if-eq v1, v9, :cond_3

    goto/16 :goto_7

    :cond_3
    if-eqz v5, :cond_14

    .line 12
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v3, "configSwitchUltraPixel: MUTEX false"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v0, v15}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getLastUiStyle()I

    move-result v1

    if-ne v1, v9, :cond_5

    .line 17
    invoke-direct {v0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_0

    .line 18
    :cond_5
    iget-object v1, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1, v4}, Lcom/android/camera/ActivityBase;->restartModule(I)V

    .line 19
    :goto_0
    invoke-virtual {v7}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelCloseTip()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v14, v10, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_7

    .line 20
    :cond_6
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configSwitchUltraPixel: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    invoke-static {v4, v13}, Lcom/android/camera/CameraSettings;->setUltraWideConfig(IZ)V

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v5, 0xaf

    invoke-virtual {v1, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 24
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    .line 25
    invoke-interface {v1, v13}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTips(Z)V

    .line 26
    :cond_7
    invoke-direct {v0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    const/4 v1, 0x2

    if-eqz v6, :cond_10

    .line 27
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v5, -0x5237544d

    const/4 v13, 0x4

    if-eq v10, v5, :cond_9

    const v5, -0x4372e2e

    if-eq v10, v5, :cond_8

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v5, "REAR_0x3"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v13

    goto :goto_2

    :pswitch_1
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto :goto_2

    :pswitch_2
    const-string v5, "REAR_0x1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v9

    goto :goto_2

    :cond_8
    const-string v5, "REAR_0x5"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v1

    goto :goto_2

    :cond_9
    const-string v5, "FRONT_0x1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v12

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v5, -0x1

    :goto_2
    const/16 v10, 0xed

    if-eqz v5, :cond_d

    if-eq v5, v12, :cond_c

    if-eq v5, v1, :cond_b

    if-eq v5, v9, :cond_b

    if-eq v5, v13, :cond_b

    goto :goto_3

    .line 28
    :cond_b
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v5

    invoke-virtual {v5, v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO00o(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-array v3, v12, [I

    const/4 v5, 0x0

    aput v10, v3, v5

    .line 29
    invoke-virtual {v0, v15, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    goto :goto_3

    :cond_c
    new-array v3, v9, [I

    .line 30
    fill-array-data v3, :array_0

    invoke-virtual {v0, v15, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    goto :goto_3

    :cond_d
    new-array v5, v13, [I

    .line 31
    fill-array-data v5, :array_1

    .line 32
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v13

    invoke-virtual {v13, v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO00o(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x5

    .line 33
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 34
    array-length v3, v5

    sub-int/2addr v3, v12

    aput v10, v5, v3

    .line 35
    :cond_e
    invoke-virtual {v0, v15, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 36
    :cond_f
    :goto_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    iget-object v5, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v3, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->setRecordingClosedElements([I)V

    .line 37
    invoke-static {v8}, Lcom/android/camera/CameraSettings;->switchOnUltraPixel(Ljava/lang/String;)V

    .line 38
    invoke-direct {v0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    goto :goto_4

    .line 39
    :cond_10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    .line 40
    invoke-virtual {v0, v15}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    .line 42
    :goto_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0xc2

    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v3, :cond_11

    .line 43
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v5

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_12

    .line 44
    invoke-interface {v3, v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    .line 45
    :cond_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v4, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    if-eqz v6, :cond_13

    .line 47
    invoke-direct {v0, v14, v12}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    goto :goto_6

    .line 48
    :cond_13
    invoke-virtual {v7}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelCloseTip()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    invoke-interface {v2, v14, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    :goto_6
    const/16 v1, 0xa7

    if-ne v4, v1, :cond_14

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "M_manual_"

    const-string/jumbo v5, "supreme_pixel"

    invoke-static {v3, v5, v1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_14
    :goto_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xaf

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 54
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0xb6

    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$DualController;

    .line 55
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v7, 0xc2

    invoke-virtual {v5, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v6, :cond_16

    .line 56
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v1, :cond_15

    const/4 v6, 0x0

    .line 57
    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    .line 58
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    :cond_15
    if-eqz v3, :cond_1a

    .line 59
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    goto :goto_9

    :cond_16
    const/4 v6, 0x0

    if-eqz v5, :cond_17

    .line 60
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v13

    goto :goto_8

    :cond_17
    move v13, v6

    :goto_8
    if-eqz v1, :cond_18

    if-nez v13, :cond_18

    .line 61
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_18
    if-eqz v3, :cond_1a

    if-nez v13, :cond_1a

    const/16 v1, 0xa7

    if-eq v4, v1, :cond_19

    .line 62
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    :cond_19
    if-eqz v2, :cond_1a

    .line 63
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_1a
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch -0x4372e32
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xc4
        0xc9
        0xce
    .end array-data

    :array_1
    .array-data 4
        0xc2
        0xef
        0xc9
        0xce
    .end array-data
.end method

.method public configTiltSwitch(I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 3
    instance-of v1, v0, Lcom/android/camera/module/Camera2Module;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    const/16 v3, 0xa0

    .line 8
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->isSwitchOn(I)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v4, "configTiltSwitch: MUTEX false"

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {v2, v3, v7}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    move v4, v7

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    const-string p1, "circle"

    .line 11
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v3, v6}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    .line 13
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    .line 14
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    move v4, v6

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "off"

    .line 15
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v3, v7}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    move v4, v7

    .line 17
    :goto_0
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configTiltSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 p1, 0xe4

    .line 18
    invoke-interface {v1, v4, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    .line 19
    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0, v4}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    .line 20
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    .line 21
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_6

    .line 22
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    .line 23
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigAiTip()Z

    :cond_6
    return-void
.end method

.method public configTimeFreeze(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x1a0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;->hide()V

    :cond_1
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    const/16 p1, 0xd5

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void
.end method

.method public configTimerSwitch(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTimerSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackTimerChanged(Ljava/lang/String;)V

    const/16 v1, 0xa0

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public configUltraPixelPortrait(I)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_ultra_pixel_portrait_mode_key"

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v4, 0x8

    const-string/jumbo v5, "o"

    const v6, 0x7f120992

    const-string/jumbo v7, "ultra_pixel_portrait"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq p1, v9, :cond_3

    const/4 v10, 0x3

    if-eq p1, v10, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_6

    .line 5
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "configUltraPixelPortrait: MUTEX false"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-interface {v3, v7, v4, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configUltraPixelPortrait: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 12
    invoke-interface {v3, v7, v4, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    .line 14
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 16
    fill-array-data p1, :array_0

    invoke-virtual {p0, v5, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setRecordingClosedElements([I)V

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    .line 20
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    .line 21
    :cond_5
    invoke-interface {v3, v7, v8, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :goto_0
    xor-int/lit8 p1, v2, 0x1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackUltraPixelPortraitChanged(Z)V

    .line 23
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v0, v9, [I

    const/16 v1, 0x39

    aput v1, v0, v8

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 25
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    new-array p1, v9, [I

    const/16 v0, 0xd7

    aput v0, p1, v8

    .line 26
    invoke-interface {v3, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void

    :array_0
    .array-data 4
        0xc2
        0xc4
        0xc9
        0xef
    .end array-data
.end method

.method public configVideoLogSwitch(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    .line 4
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configVideoLogSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    .line 5
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "off"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "on"

    :goto_0
    const-string v2, "M_proVideo_"

    const-string v3, "log"

    .line 6
    invoke-static {v2, v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    .line 9
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xc2

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 12
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x3a6

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x5

    .line 15
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    .line 16
    :cond_3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    const-string/jumbo v2, "wide"

    .line 18
    invoke-virtual {v0, p1, v2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 22
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public exitNightInCaptureMode()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0Oo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public findBestWatermarkItem(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public hideLighting()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa03

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->isShowLightingView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    const/16 v2, 0xab

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigChanged(I)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mChangeInterceptor:Lcom/android/camera/module/interceptor/ConfigChangeInterceptor;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/module/interceptor/ConfigChangeInterceptor;->consumeConfigChanged(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mChangeInterceptor:Lcom/android/camera/module/interceptor/ConfigChangeInterceptor;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/BaseModuleInterceptor;->asBlocker()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOooo;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOooo;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->isMutexConfig(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 9
    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    array-length v4, v3

    const/16 v5, 0xb0

    move v6, v1

    move v7, v6

    move v8, v5

    :goto_0
    if-ge v6, v4, :cond_d

    aget v9, v3, v6

    if-ne v9, p1, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v10, 0xe5

    const/16 v11, 0xd1

    if-ne p1, v11, :cond_4

    if-eq v9, v10, :cond_c

    :cond_4
    if-ne p1, v10, :cond_5

    if-ne v9, v11, :cond_5

    goto :goto_3

    :cond_5
    const/16 v12, 0xcb

    if-eq v9, v12, :cond_b

    const/16 v12, 0xce

    if-eq v9, v12, :cond_9

    if-eq v9, v11, :cond_7

    if-eq v9, v10, :cond_6

    .line 10
    invoke-static {v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_1

    .line 11
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v10

    if-eqz v10, :cond_c

    if-ne p1, v12, :cond_8

    goto :goto_2

    .line 12
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v10

    if-eqz v10, :cond_c

    move v7, v2

    :cond_8
    :goto_1
    move v8, v9

    goto :goto_3

    .line 13
    :cond_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v12

    if-eqz v12, :cond_c

    if-ne p1, v11, :cond_a

    :goto_2
    move v8, v5

    goto :goto_3

    :cond_a
    if-ne p1, v10, :cond_8

    goto :goto_2

    .line 14
    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v9

    const/16 v10, 0xa03

    invoke-virtual {v9, v10}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v9

    check-cast v9, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v9, :cond_c

    .line 15
    invoke-interface {v9}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->isShowLightingView()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    :cond_c
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_d
    const/4 v0, 0x3

    if-nez v7, :cond_f

    if-eq v8, v5, :cond_e

    .line 17
    invoke-direct {p0, v8, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    .line 18
    :cond_e
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_4

    .line 19
    :cond_f
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    if-eq v8, v5, :cond_11

    .line 20
    invoke-direct {p0, v8, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_4

    .line 21
    :cond_10
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    :cond_11
    :goto_4
    return-void
.end method

.method public onConfigValueChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfigValue(ILjava/lang/String;)V

    return-void
.end method

.method public onShineDismiss(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result p1

    const/16 v0, 0xa7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x1a5

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->setSelectorLayoutVisible(Z)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb5

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onThermalNotification(I)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onThermalNotification isAlive false"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onThermalNotification current module is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 7
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ICameraMgr;->isFrameAvailable()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/IModuleState;->isSelectingCapturedResult()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 9
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/camera/module/common/ICameraMgr;->setThermalLevel(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "thermalConstrained"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/IAppStateMgr;->thermalConstrained()V

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_f

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isHardwareSupported()Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_3

    .line 15
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v3

    new-array v1, v1, [I

    const/16 v5, 0x42

    aput v5, v1, v4

    invoke-interface {v3, v1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 16
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->thermalCloseFlash()Z

    move-result v1

    const-string v3, ""

    const-string v5, "0"

    if-eqz v1, :cond_5

    .line 17
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "thermalCloseFlash"

    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v1, v5

    goto :goto_1

    .line 18
    :cond_5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IModuleState;->isThermalThreshold()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->thermalCloseFront()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_7

    .line 21
    :cond_6
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->thermalCloseBoth()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    :cond_7
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "recording time is up to thermal threshold"

    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move-object v1, v3

    .line 23
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    const-string v7, "104"

    if-eqz v6, :cond_c

    .line 24
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v6

    invoke-virtual {v6}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo00()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 25
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isHardwareSupported()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 26
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ThermalDetector;->thermalCloseFront()Z

    move-result v6

    if-nez v6, :cond_9

    .line 27
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ThermalDetector;->thermalCloseBoth()Z

    move-result v6

    if-nez v6, :cond_9

    .line 28
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ThermalDetector;->thermalCloseFlash()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 29
    :cond_9
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    .line 30
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v3, v7

    goto :goto_2

    .line 32
    :cond_a
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 33
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    :cond_b
    move-object v3, v5

    goto :goto_2

    :cond_c
    move-object v3, v1

    .line 34
    :cond_d
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    return v4

    .line 35
    :cond_e
    invoke-static {p1, v0, v3}, Lcom/android/camera/module/common/ModuleUtil;->updateFlashModeAndRefreshUI(ILcom/android/camera/module/Module;Ljava/lang/String;)V

    return v4

    .line 36
    :cond_f
    :goto_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onThermalNotification don\'t support hardware flash"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 37
    :cond_10
    :goto_4
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onThermalNotification current module has not ready"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public reCheckAIWatermark(Z)V
    .locals 10

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0()Z

    move-result v0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oO()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    const/16 v2, 0xfe

    const/16 v3, 0xcd

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_8

    const/16 v6, 0xbc

    if-ne v0, v6, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable(I)Z

    move-result v3

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needForceDisable(I)Z

    move-result v7

    if-eqz v3, :cond_3

    if-eqz v7, :cond_3

    .line 8
    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showWatermarkSample(Z)V

    .line 9
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    const/16 v8, 0xac

    .line 11
    invoke-virtual {v7, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v7, :cond_4

    const v8, 0x7f120134

    const-string v9, "ai_watermark"

    .line 12
    invoke-interface {v7, v9, v4, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_4
    if-nez p1, :cond_10

    .line 13
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getIWatermarkEnable()Z

    move-result p1

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;

    if-eqz p1, :cond_5

    .line 16
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;->resetResult()V

    .line 17
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setWatermarkEnable(Z)V

    :cond_6
    const/16 p1, 0xa3

    if-eq v0, p1, :cond_7

    if-ne v0, v6, :cond_10

    .line 18
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showDualController(Z)V

    goto/16 :goto_5

    .line 19
    :cond_8
    :goto_0
    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    .line 20
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p1

    if-ne v0, v3, :cond_9

    move v0, v5

    goto :goto_1

    :cond_9
    move v0, v4

    :goto_1
    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_a

    .line 21
    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_b

    if-eq v0, v3, :cond_b

    if-eq v0, v1, :cond_b

    const/4 v6, 0x4

    if-eq v0, v6, :cond_b

    const/16 v6, 0xb

    if-eq v0, v6, :cond_b

    const/16 v6, 0xc

    if-eq v0, v6, :cond_b

    move v4, v5

    goto :goto_2

    :cond_a
    move v4, v0

    :cond_b
    :goto_2
    if-eqz v4, :cond_d

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;

    if-eqz p1, :cond_c

    .line 24
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;->resetResult()V

    .line 25
    :cond_c
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showWatermarkSample(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateASDForWatermark()V

    goto :goto_4

    .line 27
    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa6

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_f

    .line 28
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    .line 29
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getUpDistance()I

    move-result p1

    if-lez p1, :cond_e

    goto :goto_3

    :cond_e
    move v5, v3

    .line 30
    :goto_3
    invoke-interface {v0, v5, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->moveWatermarkLayout(II)V

    .line 31
    :cond_f
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    :cond_10
    :goto_5
    return-void
.end method

.method public reCheckAiAudio()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    .line 5
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reCheckAiAudio:SupportAiAudioNew"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f120766

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result v1

    :goto_0
    if-eq v1, v3, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    .line 9
    :goto_1
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioBGHint(II)V

    return-void
.end method

.method public reCheckAiAudioNewDescTip()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    const-string v1, "ai_aduio_new_desc"

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    sget-boolean v3, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0:Z

    if-eqz v3, :cond_2

    const v3, 0x7f1208a4

    goto :goto_0

    :cond_2
    const v3, 0x7f1208a3

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public reCheckAiAudioSingle()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiAudioSingleEnabled(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f120856

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    .line 5
    :goto_1
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleBGHint(II)V

    .line 6
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reCheckAiAudioSingle:alertAiAudioSingleBGHint"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reCheckAiAudioSingleDescTip()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    const-string v1, "ai_aduio_single_desc"

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAiAudioSingleEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Module;

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    sget-boolean v3, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0:Z

    if-eqz v3, :cond_2

    const v3, 0x7f1208a7

    goto :goto_0

    :cond_2
    const v3, 0x7f1208a6

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleDescTip(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public reCheckAiEnhancedVideo()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const v2, 0x7f1207b5

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiEnhancedVideoHint(II)V

    :cond_2
    return-void
.end method

.method public reCheckAiScene()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const v2, 0x7f1206e5

    const-string v3, "ai"

    .line 5
    invoke-interface {v0, v3, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public reCheckAmbilight()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a5

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->updateTips()V

    :cond_3
    return-void
.end method

.method public reCheckCenterMark()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCenterMarkSwitch(I)V

    :cond_0
    return-void
.end method

.method public reCheckColorEnhance()V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const v2, 0x7f1208ac

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertProColourHint(II)V

    :cond_2
    return-void
.end method

.method public reCheckDocumentMode()V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz v1, :cond_3

    const-string v2, "document"

    .line 8
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->containsFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    const/16 v2, 0xdd

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    return-void
.end method

.method public reCheckDualVideoMode()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v2

    .line 6
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->hasRemote()Z

    move-result v3

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0x1ad

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    .line 8
    invoke-interface {v4, v7}, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v7

    const/16 v8, 0xcc

    if-ne v7, v8, :cond_3

    const/16 v7, 0xde

    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    .line 10
    invoke-interface {v0, v5, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {v0, v6, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    :goto_1
    if-nez v1, :cond_3

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleUtil;->getTopTipRes()I

    move-result v1

    invoke-interface {v0, v6, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertDualVideoHint(II)V

    :cond_3
    return-void
.end method

.method public reCheckExposureFeedbackConfig()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_exposure_feedback"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reCheckExposureFeedbackConfig: configExposureFeedbackSwitch"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configExposureFeedbackSwitch(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckFastMotion(Z)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_b

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_b

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 9
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->isModified()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->isModified()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v5

    .line 13
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0x2a2

    .line 14
    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$FastMotionProtocol;

    .line 15
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    const/16 v8, 0xa1

    invoke-virtual {v7, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 16
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    const/16 v9, 0x3a4

    invoke-virtual {v8, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v8

    check-cast v8, Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;

    if-eqz v3, :cond_a

    if-eqz v6, :cond_6

    .line 17
    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_6
    if-eqz v8, :cond_7

    .line 18
    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    if-eqz v7, :cond_a

    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    const/16 v6, 0xa0

    .line 19
    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->isModified()Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_8

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_8
    move-object v6, v8

    .line 21
    :goto_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->isModified()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f10001c

    const/16 v9, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v4

    invoke-virtual {v2, v7, v9, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v4, 0x7f1206ca

    .line 22
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v5, v2

    move v2, v3

    move-object v3, v0

    move-object v4, v6

    move v6, p1

    .line 23
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_a
    const/16 v2, 0x8

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move v6, p1

    .line 24
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public reCheckFilm()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_6

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xd0

    const/16 v3, 0xcf

    const/16 v4, 0xd4

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    return-void

    :cond_2
    if-ne v1, v4, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v2

    const-class v4, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v2, v4}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v2}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x0

    .line 9
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setAlertAnim(Z)V

    if-ne v1, v3, :cond_5

    const v1, 0x7f1203dd

    goto :goto_0

    :cond_5
    const v1, 0x7f1203e1

    :goto_0
    const-wide/16 v3, -0x1

    .line 10
    invoke-interface {v0, v2, v1, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public reCheckFocusPeakConfig()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_peak_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reCheckFocusPeakConfig: configFocusPeakSwitch"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckFrontBokenTip()V
    .locals 0

    return-void
.end method

.method public reCheckGradienter()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    :cond_0
    return-void
.end method

.method public reCheckHanGestureDescTip()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const-string v1, "hand_gesture_desc"

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120426

    .line 5
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public reCheckHandGesture()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const v1, 0x7f120427

    .line 5
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHandGestureHint(I)V

    :cond_1
    return-void
.end method

.method public reCheckLighting()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa03

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v1

    const/16 v2, 0xab

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->isShowLightingView()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->showOrHideLightingView()Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->setLightingViewStatus(Z)V

    .line 9
    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->isShowLightingView()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->showOrHideLightingView()Z

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    :cond_3
    return-void
.end method

.method public reCheckLiveDurationTip()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa1

    if-eq v0, v2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getCurrentPromptInfo(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v6, 0xbb8

    const-string v2, "live_duration"

    .line 8
    invoke-interface/range {v1 .. v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckLiveShot()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOO0()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const v2, 0x7f12024e

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertLiveShotHint(II)V

    :cond_4
    return-void
.end method

.method public reCheckLiveVV()V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v1, :cond_4

    const v2, 0x7f0a0093

    .line 8
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const v2, 0xfffa

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    const v2, 0x7f1209e7

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public reCheckMacroMode()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    .line 5
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa3

    if-eq v3, v4, :cond_2

    .line 6
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa2

    if-eq v3, v4, :cond_2

    .line 7
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 8
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xba

    if-eq v1, v3, :cond_2

    .line 9
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xcd

    if-eq v1, v3, :cond_2

    .line 10
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xa9

    if-eq v1, v3, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 12
    :cond_3
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMacroModeHint(II)V

    .line 15
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isMacroHdrMutex()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_4
    return-void
.end method

.method public reCheckModuleUltraPixel()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "pref_module_ultra_pixel_tip"

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelOpenTip()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ultra_pixel"

    invoke-interface {v0, v3, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckMutexConfigs(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget v4, v0, v3

    const/16 v5, 0xcb

    if-eq v4, v5, :cond_2

    const/16 v5, 0xd1

    if-eq v4, v5, :cond_4

    .line 6
    invoke-static {v4}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    .line 7
    invoke-direct {p0, v4, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckLighting()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa03

    .line 11
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v4, :cond_4

    .line 12
    invoke-interface {v4, v2}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->setLightingViewStatus(Z)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public reCheckMutexEarly(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v1

    .line 3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz p1, :cond_0

    const-string/jumbo p1, "o"

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo p1, "pref_camera_ultra_pixel_portrait_mode_key"

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public reCheckParameterDescriptionTip()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isParameterDescriptionEnable()Z

    move-result v1

    .line 4
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0x3a6

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    const/16 v4, 0xb4

    const/16 v5, 0xa9

    const/16 v6, 0xa2

    const/4 v7, 0x0

    if-eq v2, v6, :cond_1

    const/16 v8, 0xa7

    if-eq v2, v8, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v5, :cond_1

    move v1, v7

    :cond_1
    if-ne v2, v5, :cond_2

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v5

    invoke-virtual {v5}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v5

    invoke-virtual {v5}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v7

    :cond_2
    if-ne v2, v6, :cond_4

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v1, v7

    .line 9
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyLensOn()Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    move v1, v8

    :cond_5
    if-ne v2, v6, :cond_6

    if-eqz v3, :cond_6

    .line 10
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v8

    goto :goto_0

    :cond_6
    move v5, v7

    :goto_0
    if-ne v2, v4, :cond_7

    if-eqz v3, :cond_7

    .line 11
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    move v5, v8

    .line 12
    :cond_7
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result v0

    xor-int/2addr v0, v8

    and-int/2addr v0, v1

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_9

    .line 15
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v2

    xor-int/2addr v2, v8

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const/16 v7, 0x8

    .line 16
    :goto_1
    invoke-interface {v1, v7, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertParameterDescriptionTip(II)V

    :cond_9
    return-void
.end method

.method public reCheckParameterResetTip(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastmotionModulePro()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3ab

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManualPictureStyleProtocol;

    if-eqz v0, :cond_4

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isChangeManuallyParameters()Z

    move-result v2

    const v3, 0x7f1208c9

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, p1, v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertParameterResetTip(ZII)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v1, 0x8

    .line 11
    invoke-interface {v0, p1, v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertParameterResetTip(ZII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public reCheckRaw()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_5

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v1

    const v2, 0x7f1204c7

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reCheckSkinColor()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSkinColorType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v1, "0"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public reCheckSpeechShutterDescTip()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "speech_shutter_desc"

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const v3, 0x7f120911

    .line 4
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public reCheckSubtitleMode()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const v2, 0x7f12088b

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSubtitleHint(II)V

    :cond_2
    return-void
.end method

.method public reCheckSuperEIS()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const v2, 0x7f12091c

    const-string/jumbo v3, "super_eis"

    .line 6
    invoke-interface {v0, v3, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reCheckSuperEISPro()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_5

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentPreValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "off"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "pro"

    const-string v5, "normal"

    const-string/jumbo v6, "super_eis"

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    const v1, 0x7f12091d

    .line 10
    invoke-interface {v0, v6, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f12091f

    .line 12
    invoke-interface {v0, v6, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const v1, 0x7f12091c

    .line 14
    invoke-interface {v0, v6, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f12091e

    .line 16
    invoke-interface {v0, v6, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reCheckTilt()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0xe4

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    :cond_1
    return-void
.end method

.method public reCheckTimerBurst()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const v2, 0x7f120978

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTimerBurstHint(II)V

    :cond_4
    return-void
.end method

.method public reCheckUltraWideBokeh()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "ultra_wide_bokeh"

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const v3, 0x7f120997

    .line 6
    invoke-interface {v0, v2, v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    const v3, 0x7f120996

    .line 7
    invoke-interface {v0, v2, v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckVideo4KHDR10P()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHDR10OrProP(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_3

    const v1, 0x7f0a0093

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const v1, 0xfffa

    if-ne v0, v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "pref_camcorder_tip_4khdr10p_max_video_duration_shown"

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    if-eqz v0, :cond_5

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v3, 0x7f120247

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4khdr10p_desc"

    invoke-interface {v0, v2, v4, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public reCheckVideoBeautify()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 6
    invoke-static {v2, v1}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "video_beautify"

    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    const v1, 0x7f1209ae

    .line 10
    invoke-interface {v0, v3, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    const v1, 0x7f1209ad

    .line 11
    invoke-interface {v0, v3, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reCheckVideoBeautyPipeline()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_1

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_3

    :cond_1
    if-ne v1, v2, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/Module;

    invoke-interface {v4}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v5

    .line 8
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->reInit(IILcom/android/camera2/CameraCapabilities;I)V

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_3
    return-void
.end method

.method public reCheckVideoCastPauseState()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const v2, 0x7f1209c1

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertCastVideoHint(II)V

    return-void
.end method

.method public reCheckVideoHDR10Tip()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const v1, 0x7f1209d9

    .line 6
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1209d7

    .line 8
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f1209d8

    .line 10
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckVideoHdr()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1, v1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reCheckVideoLog()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const v2, 0x7f1207bc

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    :cond_3
    return-void
.end method

.method public reCheckVideoUltraClearTip()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/VideoModule;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->getVideoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 8
    iget v2, v0, Lcom/android/camera/CameraSize;->width:I

    .line 9
    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    .line 10
    invoke-direct {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->is8KQuality(II)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v3, :cond_4

    const v4, 0x7f0a0093

    .line 12
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v3

    const v4, 0xfffa

    if-ne v3, v4, :cond_4

    return-void

    .line 13
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    .line 14
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 15
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    .line 16
    :cond_5
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isReal8K()Z

    move-result v1

    if-nez v1, :cond_6

    const v1, 0x7f1209df

    .line 18
    invoke-interface {v3, v4, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    .line 19
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/4 v5, 0x1

    const-string/jumbo v6, "pref_camcorder_tip_8k_max_video_duration_shown"

    invoke-virtual {v1, v6, v5}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1, v6, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    if-eqz v3, :cond_7

    .line 22
    invoke-direct {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->is8KQuality(II)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f120246

    const-string v1, "8k_desc"

    .line 23
    invoke-interface {v3, v1, v4, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_7
    return-void
.end method

.method public reConfigAiAudio(IZ)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reConfigAiAudio:SupportAiAudioNew"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f120766

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result p1

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v0

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    const/16 p2, 0x8

    .line 8
    invoke-interface {v2, p2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioBGHint(II)V

    .line 9
    invoke-interface {v2, p2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudio(II)V

    .line 10
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1208a4

    goto :goto_1

    :cond_1
    const v0, 0x7f1208a3

    :goto_1
    const-string v3, "ai_aduio_new_desc"

    invoke-interface {v2, v3, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;II)V

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    sget-object p2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reConfigAiAudio -> isSupportAiAudioNew"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    invoke-interface {v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioMutexToastIfNeed(I)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-interface {v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioMutexToastIfNeed(I)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 16
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    .line 17
    invoke-interface {v2, p2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudio(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public reConfigESPDisplay(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_7

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f1203ae

    goto :goto_1

    :cond_3
    const v1, 0x7f120687

    :goto_1
    const-string v3, "esp_display"

    .line 6
    invoke-interface {v0, v3, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    .line 7
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTipShow()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/Module;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertESPFeatureTip(Z)V

    goto :goto_2

    .line 10
    :cond_6
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertESPFeatureTip(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public reConfigSpeechShutter()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSpeechShutter()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;->processingSpeechShutter(Z)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->shouldEnableSpeechShutter(I)Z

    move-result v1

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;->processingSpeechShutter(Z)V

    :cond_3
    return-void
.end method

.method public recheckVideoFps(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoOO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoOO;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public resetMeter(I)V
    .locals 3

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x1

    .line 5
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reverseExpandTopBar(Z)Z

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    new-array p1, v2, [I

    const/4 v0, 0x0

    const/16 v2, 0xd6

    aput v2, p1, v0

    .line 7
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0oO;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public restoreAllMutexElement(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_c

    .line 4
    aget v3, v3, v2

    const/16 v4, 0xc1

    if-eq v3, v4, :cond_b

    const/16 v4, 0xc2

    if-eq v3, v4, :cond_a

    const/16 v4, 0xc4

    const/4 v5, 0x2

    if-eq v3, v4, :cond_9

    const/16 v4, 0xc9

    if-eq v3, v4, :cond_8

    const/16 v4, 0xce

    const/16 v6, 0x32

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd1

    if-eq v3, v4, :cond_5

    const/16 v4, 0xd4

    if-eq v3, v4, :cond_4

    const/16 v4, 0xed

    if-eq v3, v4, :cond_3

    const/16 v4, 0xef

    if-eq v3, v4, :cond_2

    const/16 v4, 0xfd

    if-ne v3, v4, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAutoZoom(Z)V

    const/16 v3, 0x33

    .line 6
    aput v3, v0, v2

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unknown mutex element"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    const/16 v3, 0xd

    .line 9
    aput v3, v0, v2

    goto :goto_1

    .line 10
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateRaw(Z)V

    const/16 v3, 0x2c

    .line 11
    aput v3, v0, v2

    goto :goto_1

    .line 12
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentShine(Z)V

    .line 13
    aput v5, v0, v2

    goto :goto_1

    .line 14
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateUltraPixel(Z)V

    .line 15
    aput v6, v0, v2

    goto :goto_1

    .line 16
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateLiveShot(Z)V

    const-string v3, "j"

    if-eq p1, v3, :cond_7

    const/16 v3, 0x31

    .line 17
    aput v3, v0, v2

    goto :goto_1

    .line 18
    :cond_7
    aput v6, v0, v2

    goto :goto_1

    .line 19
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    const/16 v3, 0x24

    .line 20
    aput v3, v0, v2

    goto :goto_1

    .line 21
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    .line 22
    aput v5, v0, v2

    goto :goto_1

    .line 23
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    const/16 v3, 0xb

    .line 24
    aput v3, v0, v2

    goto :goto_1

    .line 25
    :cond_b
    invoke-direct {p0, v5, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    const/16 v3, 0xa

    .line 26
    aput v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 27
    :cond_c
    iput-object v5, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoo0;

    invoke-direct {v1, v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoo0;-><init>([I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public restoreMutexFlash(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoO;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoO;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setBeautyLens(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyLens()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setBeautyLens(Ljava/lang/String;)V

    const-string v2, "4"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v3, 0xa4

    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 8
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion2()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v2

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1, v3, v3, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    const/4 p1, 0x3

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiSceneSwitch(I)V

    .line 13
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object p1

    .line 15
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 16
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xd
        0x2
        0x30
        0x5c
    .end array-data

    :array_1
    .array-data 4
        0x30
        0x5c
    .end array-data
.end method

.method public setFilter(I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->persistFilter(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eq v0, p1, :cond_1

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_1

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    .line 5
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_5

    :cond_2
    if-eq v0, p1, :cond_5

    const/16 v0, 0xa9

    if-ne v1, v0, :cond_5

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 12
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    .line 13
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    .line 16
    :cond_5
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xea

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;

    .line 20
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFilter: filterId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", FilterProtocol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFilterChanged: category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    const/16 v1, 0xc4

    .line 22
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;->onShineChanged(ZI)V

    .line 23
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelFront32MPOn()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    .line 25
    :cond_7
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v0, :cond_8

    .line 26
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    :cond_8
    return-void
.end method

.method public setKaleidoscope(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xec

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$KaleidoscopeProtocol;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$KaleidoscopeProtocol;->onKaleidoscopeChanged(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xea

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0xc4

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_1
    return-void
.end method

.method public setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLighting: newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa03

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion2()Z

    move-result v2

    const-string v3, "0"

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_1
    const/4 p2, 0x1

    new-array v4, p2, [I

    const/16 v5, 0xcb

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 7
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 8
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v2, p2

    :goto_1
    if-eqz v2, :cond_4

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->lightingCancel()V

    if-eqz p1, :cond_5

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_5

    const/16 v0, 0x21

    new-array v2, v6, [I

    .line 11
    invoke-interface {p1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    new-array v0, v6, [I

    .line 12
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->lightingStart()V

    .line 14
    invoke-interface {v0, p2}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->setLightingViewStatus(Z)V

    .line 15
    :cond_5
    :goto_2
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    .line 16
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertLightingTip(I)V

    .line 17
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo00;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo00;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p4, :cond_7

    const/16 p1, 0xab

    .line 18
    invoke-static {p1, p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackLightingChanged(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setMasterFilter(I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mutexBeautyBusiness(I)V

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v6, 0x107

    aput v6, v5, v4

    .line 9
    invoke-interface {v3, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-ne v0, p1, :cond_6

    :cond_4
    const/16 v3, 0xc8

    if-eq p1, v3, :cond_6

    if-eq p1, v3, :cond_7

    if-eqz p1, :cond_7

    if-eq v0, v3, :cond_5

    if-nez v0, :cond_7

    .line 11
    :cond_5
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isOnlySupportMasterFilter720P()Z

    move-result v0

    if-nez v0, :cond_7

    .line 12
    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_7

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    .line 15
    :cond_7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 16
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMasterFilter: filterId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFilterChanged: category = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    const/16 v0, 0xc4

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->onShineChanged(I)V

    return-void
.end method

.method public setSkinColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setSkinColor(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOo0;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setVideoSky(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->setMagicVideoSkyValue(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x57

    aput v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public setWatermarkEnable(Z)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showDualController(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showWatermarkSample(Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideTipImage(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfd

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x2

    const/4 v1, 0x6

    .line 10
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    :cond_3
    return-void
.end method

.method public showMimojiPanel(I)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showMimojiPanel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isShowMimojiView(Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;)Z

    move-result v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isShowMimojiView(Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;)Z

    move-result v2

    xor-int/2addr v2, v1

    :goto_0
    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v4, 0x0

    if-nez v0, :cond_2

    return v4

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v5

    const-class v6, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v5, v6}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 8
    invoke-virtual {v5, p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiPanelState(I)V

    new-array v6, v1, [I

    const/16 v7, 0xc1

    aput v7, v6, v4

    .line 9
    invoke-interface {v2, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 10
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    const/4 v2, 0x3

    if-eqz p1, :cond_6

    const-string v3, "key_mimoji_show_avatar_list"

    if-eq p1, v1, :cond_5

    const/4 v6, 0x2

    if-eq p1, v6, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "key_mimoji_show_timbre_list"

    goto :goto_1

    :cond_4
    const-string v3, "key_mimoji_show_background_list"

    :cond_5
    :goto_1
    const/4 v6, 0x0

    .line 11
    invoke-static {v6, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v3, 0xe

    new-array v6, v4, [I

    .line 12
    invoke-interface {v0, v3, v6}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    if-eqz p1, :cond_7

    new-array p1, v1, [I

    const/16 v3, 0xea

    aput v3, p1, v4

    .line 13
    invoke-interface {v0, v2, p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_2

    .line 14
    :cond_7
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p1

    if-nez p1, :cond_8

    new-array p1, v4, [I

    .line 15
    invoke-interface {v0, v1, p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_8
    :goto_2
    return v1
.end method

.method public showOrHideAIWatermark()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    const/16 v1, 0xa3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xb5

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 4
    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xfd

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x2

    const/4 v2, 0x6

    .line 9
    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    const/4 v4, 0x3

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v6, 0xe1

    aput v6, v5, v2

    .line 10
    invoke-interface {v3, v4, v5}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_4
    if-eqz v1, :cond_5

    .line 11
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->show()V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    const/16 v1, 0x15

    new-array v2, v2, [I

    .line 12
    invoke-interface {v3, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_6
    :goto_1
    const/16 v1, 0xbc

    if-eq v0, v1, :cond_7

    const-string v0, "ai_watermark_list_show"

    .line 13
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkClick(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v0, "attr_super_moon_click_effect"

    .line 14
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperMoonClick(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public showOrHideLighting(Z)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->beautyMutexHandle()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa03

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->showOrHideLightingView()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 6
    :goto_0
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showOrHideLighting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xaf

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xc5

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    const-string v6, "0"

    const/16 v7, 0xab

    if-eqz v1, :cond_6

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v8

    if-nez v8, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion1()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v8

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 14
    sget v8, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p0, v8}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setFilter(I)V

    :cond_3
    if-eqz v4, :cond_4

    .line 15
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    :cond_4
    const/4 v4, 0x3

    new-array v2, v2, [I

    const/16 v8, 0xe9

    aput v8, v2, v3

    .line 16
    invoke-interface {v0, v4, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    const/4 v2, 0x5

    .line 17
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v4, 0xff7

    if-eq v2, v4, :cond_5

    const/16 v2, 0x21

    new-array v4, v3, [I

    .line 18
    invoke-interface {v0, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 19
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v3, v6, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 22
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v4

    .line 25
    invoke-virtual {v4, v7}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion1()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 27
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v4

    .line 28
    invoke-virtual {v4, v7, v6}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v6, v4

    .line 29
    :goto_1
    invoke-virtual {p0, v2, v0, v6, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    if-eqz p1, :cond_8

    const/4 p1, 0x0

    const-string v0, "lighting_out_button"

    .line 30
    invoke-static {v0, p1, p1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    if-eqz v1, :cond_9

    if-eqz v5, :cond_9

    .line 31
    invoke-interface {v5, v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    :cond_9
    return-void
.end method

.method public showOrHideMasterFilter()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4
    :goto_0
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showOrHideMasterFilter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    .line 7
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTips(Z)V

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xb6

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    .line 11
    invoke-interface {v3, v2, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xb5

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v4

    const/16 v5, 0xa7

    if-eq v4, v5, :cond_4

    const/16 v5, 0xb4

    if-eq v4, v5, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 14
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    .line 15
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v3, :cond_6

    const/4 v4, 0x3

    new-array v1, v1, [I

    const/16 v5, 0xe2

    aput v5, v1, v2

    .line 16
    invoke-interface {v3, v4, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_6
    if-eqz v0, :cond_7

    .line 17
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->show()V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_9

    const/16 v0, 0x25

    new-array v1, v2, [I

    .line 18
    invoke-interface {v3, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x6

    .line 19
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public showOrHideShine()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xc2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    .line 6
    :goto_0
    sget-object v6, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showOrHideShine: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 7
    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v7

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v8

    const/16 v9, 0xa2

    if-eq v0, v9, :cond_3

    const/16 v10, 0xcc

    if-eq v0, v10, :cond_2

    move v7, v4

    goto/16 :goto_5

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    move v10, v3

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    const-string/jumbo v11, "video_beautify"

    .line 10
    invoke-direct {p0, v11, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    if-nez v7, :cond_4

    .line 11
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mutexBeautyBusiness(I)V

    goto :goto_2

    :cond_4
    move v10, v3

    move v5, v4

    :goto_2
    if-eqz v5, :cond_5

    .line 12
    invoke-virtual {v8, v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setTargetShow(Z)V

    .line 13
    :cond_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v11

    invoke-virtual {v11}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000O0o0()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v11

    sget-object v12, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooO0o0;

    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 16
    :cond_6
    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopBeautyEntry()Z

    move-result v11

    if-eqz v11, :cond_7

    xor-int/2addr v7, v3

    .line 17
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    goto :goto_3

    :cond_7
    xor-int/2addr v7, v3

    .line 18
    invoke-virtual {v8, v9, v7}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setVideoShineForceOn(IZ)V

    if-eqz v2, :cond_8

    new-array v7, v3, [I

    const/16 v11, 0xd4

    aput v11, v7, v4

    .line 19
    invoke-interface {v2, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_8
    :goto_3
    if-eqz v10, :cond_9

    .line 20
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    .line 21
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    const/4 v7, 0x0

    .line 22
    invoke-static {v7}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    .line 23
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    .line 24
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onShineStateChanged()V

    .line 25
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged()V

    .line 26
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoBokehRatioChanged()V

    .line 27
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoFilterChanged()V

    :cond_9
    if-eqz v10, :cond_b

    if-ne v0, v9, :cond_a

    .line 28
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideoBeautyPipeline()V

    goto :goto_4

    .line 29
    :cond_a
    invoke-direct {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_4

    .line 30
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideoBeautyPipeline()V

    .line 31
    :goto_4
    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopBeautyEntry()Z

    move-result v7

    if-eqz v7, :cond_c

    return-void

    :cond_c
    move v7, v3

    :goto_5
    const/4 v8, 0x2

    if-eqz v5, :cond_16

    .line 32
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v9, 0xaf

    invoke-virtual {v5, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v5, :cond_d

    .line 33
    invoke-interface {v5, v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    .line 34
    invoke-interface {v5, v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTips(Z)V

    .line 35
    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v9, 0xb6

    invoke-virtual {v5, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v5, :cond_e

    .line 36
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    const/16 v5, 0xab

    if-eq v0, v5, :cond_e

    if-nez v7, :cond_e

    if-eqz v2, :cond_e

    .line 37
    invoke-interface {v2, v4, v4, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 38
    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v5, 0xb5

    invoke-virtual {v2, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    const/16 v5, 0xa3

    const/4 v7, 0x4

    if-eq v0, v5, :cond_12

    const/16 v5, 0xa7

    if-eq v0, v5, :cond_10

    const/16 v5, 0xb4

    if-eq v0, v5, :cond_10

    const/16 v2, 0xbb

    if-eq v0, v2, :cond_f

    goto :goto_6

    .line 39
    :cond_f
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x1a5

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz v0, :cond_13

    .line 40
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->setSelectorLayoutVisible(Z)V

    goto :goto_6

    .line 41
    :cond_10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v5, 0x3ab

    invoke-virtual {v0, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManualPictureStyleProtocol;

    if-eqz v0, :cond_11

    .line 42
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x6

    .line 43
    invoke-interface {v0, v7, v5}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    :cond_11
    if-eqz v2, :cond_13

    .line 44
    invoke-interface {v2, v4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    goto :goto_6

    :cond_12
    if-eqz v2, :cond_13

    .line 45
    invoke-interface {v2, v4, v7, v6}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    .line 46
    :cond_13
    :goto_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_14

    const/4 v2, 0x3

    new-array v3, v3, [I

    const/16 v5, 0xe0

    aput v5, v3, v4

    .line 47
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_14
    if-eqz v1, :cond_15

    .line 48
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->show()V

    goto :goto_7

    :cond_15
    if-eqz v0, :cond_17

    new-array v1, v4, [I

    .line 49
    invoke-interface {v0, v8, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_7

    :cond_16
    if-eqz v1, :cond_17

    .line 50
    invoke-interface {v1, v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_17
    :goto_7
    return-void
.end method

.method public showOrHideVideoSky(Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO00O()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x2a8

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProtocol;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 5
    :goto_0
    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showOrHideMagicVideoSky fromTopConfig:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " targetShowPanel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    const/4 v6, 0x2

    if-eqz p1, :cond_6

    const/16 p1, 0xb7

    const/16 v7, 0xd7

    if-ne v0, v7, :cond_3

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1, v6, v5}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_3
    if-ne v0, p1, :cond_5

    .line 8
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v4, 0x3a1

    invoke-virtual {p1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz p1, :cond_4

    const-string/jumbo v4, "videosky"

    .line 10
    invoke-interface {p1, v4}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    .line 11
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->reset(I)V

    :cond_6
    if-eqz v4, :cond_b

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_7

    .line 13
    invoke-interface {p1, v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    .line 14
    invoke-interface {p1, v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTips(Z)V

    .line 15
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p1, :cond_8

    .line 16
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v3, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 19
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa0

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_9

    const/4 v0, 0x3

    new-array v2, v2, [I

    const/16 v4, 0xe7

    aput v4, v2, v3

    .line 21
    invoke-interface {p1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_9
    if-eqz v1, :cond_a

    .line 22
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->show()V

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_c

    const/16 v0, 0x29

    new-array v1, v3, [I

    .line 23
    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_c

    .line 24
    invoke-interface {v1, v6, v5}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->dismiss(II)Z

    :cond_c
    :goto_3
    return-void
.end method

.method public showSetting()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "config showSetting"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xd8

    aput v4, v2, v3

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    .line 5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v3

    const-string v4, "from_where"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    const-class v3, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-static {v2, v1}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackGotoSettings(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showWatermarkSample(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->findBestWatermarkItem(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setWatermarkVisible(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs switchOffElementsSilent([I)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz v2, :cond_1

    const-string v2, "j"

    .line 3
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa03

    .line 6
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v2, :cond_3

    .line 7
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->isShowLightingView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->showOrHideLightingView()Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateASDForWatermark()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->moduleExist()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x49

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void
.end method
