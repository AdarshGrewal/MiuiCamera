.class public Lcom/android/camera/module/impl/ImplFactory;
.super Ljava/lang/Object;
.source "ImplFactory.java"


# instance fields
.field public mAdditionalProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public mBaseProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public mPersistentProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field public mReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized detach(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private varargs initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;",
            ">;[I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p3, v1

    sparse-switch v2, :sswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unknown protocol type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    invoke-static {}, Lcom/android/camera/module/impl/component/VideoCastStateManager;->create()Lcom/android/camera/module/impl/component/VideoCastStateManager;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_1
    invoke-static {}, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->create()Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_2
    invoke-static {p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/DisplayGuideImp;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_3
    invoke-static {p1}, Lcom/android/camera/fragment/PresentationDisplay;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/fragment/PresentationDisplay;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_4
    invoke-static {p1}, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_5
    invoke-static {p1}, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/GalleryConnectImpl;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_6
    invoke-static {p1}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_7
    invoke-static {p1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/FilmDreamImpl;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_8
    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_9
    new-instance v2, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;-><init>(Landroid/content/res/Resources;)V

    goto/16 :goto_1

    :sswitch_a
    new-instance v2, Lcom/android/camera/dualvideo/recorder/StandaloneRecorderProtocolImpl;

    invoke-direct {v2}, Lcom/android/camera/dualvideo/recorder/StandaloneRecorderProtocolImpl;-><init>()V

    goto :goto_1

    :sswitch_b
    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v2

    goto :goto_1

    :sswitch_c
    invoke-static {}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->create()Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    goto :goto_1

    :sswitch_d
    invoke-static {}, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->create()Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    goto :goto_1

    :sswitch_e
    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_f
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O00OoO()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_10
    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_11
    invoke-static {p1}, Lcom/android/camera/module/impl/component/KeyEventImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/ModeProtocol$KeyEvent;

    move-result-object v2

    goto :goto_1

    :sswitch_12
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ShineChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ShineChangeImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_13
    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_14
    invoke-static {}, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->create()Lcom/android/camera/module/impl/component/CameraClickObservableImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_15
    invoke-static {p1}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_16
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_17
    invoke-static {}, Lcom/android/camera/module/impl/component/BeautyRecordingImpl;->create()Lcom/android/camera/module/impl/component/BeautyRecordingImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_18
    invoke-static {p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;

    move-result-object v2

    goto :goto_1

    :sswitch_19
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->registerProtocol()V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa4 -> :sswitch_19
        0xab -> :sswitch_18
        0xad -> :sswitch_17
        0xae -> :sswitch_16
        0xd4 -> :sswitch_15
        0xe3 -> :sswitch_14
        0xe4 -> :sswitch_13
        0xea -> :sswitch_12
        0xef -> :sswitch_11
        0xf1 -> :sswitch_10
        0xf6 -> :sswitch_f
        0xfc -> :sswitch_e
        0xfe -> :sswitch_d
        0xff -> :sswitch_c
        0x1a6 -> :sswitch_b
        0x1ad -> :sswitch_a
        0x1ae -> :sswitch_9
        0x3a1 -> :sswitch_8
        0x3a2 -> :sswitch_7
        0x3a5 -> :sswitch_6
        0x3a9 -> :sswitch_5
        0x3aa -> :sswitch_4
        0x3b1 -> :sswitch_3
        0x3b2 -> :sswitch_2
        0xa10 -> :sswitch_1
        0xff00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public detachAdditional()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public detachBase()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public detachModulePersistent()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public varargs initAdditional(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[I)V

    return-void
.end method

.method public varargs initBase(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[I)V

    return-void
.end method

.method public varargs initModulePersistent(Lcom/android/camera/ActivityBase;[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[I)V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachBase()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    return-void
.end method
