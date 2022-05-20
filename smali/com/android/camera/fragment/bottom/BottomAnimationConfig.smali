.class public Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
.super Ljava/lang/Object;
.source "BottomAnimationConfig.java"


# instance fields
.field public mCurrentMode:I

.field public mDuration:I

.field public mIsFPS960:Z

.field public mIsInMimojiCreate:Z

.field public mIsPostProcessing:Z

.field public mIsRecordingCircle:Z

.field public mIsRoundingCircle:Z

.field public mIsSpecificCaptureTime:Z

.field public mIsStart:Z

.field public mIsTimerBurstCircle:Z

.field public mIsVertical:Z

.field public mIsVideoBokeh:Z

.field public mNeedFinishRecord:Z

.field public mSecondPaintHintEnable:Z

.field public mShouldRepeat:Z

.field public mStopButtonEnabled:Z


# direct methods
.method public constructor <init>(ZIZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mSecondPaintHintEnable:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    .line 4
    iput p2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    .line 5
    iput-boolean p3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    .line 6
    iput-boolean p4, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    .line 7
    iput-boolean p5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    return-void
.end method

.method public static generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;-><init>(ZIZZZ)V

    return-object v6
.end method


# virtual methods
.method public configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 14

    .line 1
    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    const/16 v2, 0xd4

    const/16 v3, 0xa1

    const/16 v4, 0xa3

    const/16 v5, 0xa2

    const/16 v6, 0x7d0

    const/16 v7, 0xad

    const/16 v8, 0xb8

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    .line 2
    iput v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    .line 3
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-ne v1, v7, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    xor-int/2addr v1, v9

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mSecondPaintHintEnable:Z

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMultiFrameTotalCaptureDuration()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isLongNightCaptureAnimEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_0

    .line 10
    :cond_2
    iput v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 11
    :goto_0
    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    goto/16 :goto_1

    :cond_3
    if-ne v1, v5, :cond_4

    .line 12
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x7530

    .line 13
    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    .line 14
    :cond_4
    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-ne v1, v3, :cond_5

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v1

    iget v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v6, 0xe8

    .line 19
    invoke-virtual {v1, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;

    if-eqz v1, :cond_e

    .line 20
    iget v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    int-to-float v6, v6

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getRecordSpeed()F

    move-result v1

    div-float/2addr v6, v1

    float-to-int v1, v6

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0x3a98

    if-ne v1, v8, :cond_7

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x1388

    .line 22
    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    .line 23
    :cond_6
    iput v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_7
    const/16 v10, 0xb7

    if-ne v1, v10, :cond_8

    .line 24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v1

    iget v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_8
    const/16 v10, 0xd7

    if-ne v1, v10, :cond_9

    .line 27
    iput v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_9
    if-ne v1, v4, :cond_a

    .line 28
    iput v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 29
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 30
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 31
    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    .line 32
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_a
    const/16 v6, 0xa7

    if-ne v1, v6, :cond_b

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->isLongExpose()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 34
    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    .line 35
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v1

    iget v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    long-to-int v1, v10

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_b
    const/16 v6, 0x2710

    if-ne v1, v2, :cond_c

    .line 37
    iput v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_c
    const/16 v10, 0xab

    if-ne v1, v10, :cond_d

    .line 38
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 39
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 40
    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    .line 41
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    .line 42
    :cond_d
    iput v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 43
    :cond_e
    :goto_1
    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/4 v6, 0x0

    if-eq v1, v4, :cond_10

    if-eq v1, v3, :cond_10

    if-eq v1, v8, :cond_10

    if-ne v1, v5, :cond_f

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    if-nez v1, :cond_10

    :cond_f
    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-eq v1, v7, :cond_10

    iget-boolean v3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-nez v3, :cond_10

    const/16 v3, 0xbd

    if-eq v1, v3, :cond_10

    if-eq v1, v2, :cond_10

    move v1, v9

    goto :goto_2

    :cond_10
    move v1, v6

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    .line 44
    iput-boolean v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    .line 45
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    .line 47
    invoke-static {v2}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 48
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v9

    goto :goto_3

    :cond_11
    move v1, v6

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsTimerBurstCircle:Z

    if-nez v1, :cond_12

    .line 49
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v1, :cond_13

    .line 50
    :cond_12
    iput-boolean v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    .line 51
    :cond_13
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    if-nez v1, :cond_14

    move v1, v9

    goto :goto_4

    :cond_14
    move v1, v6

    :goto_4
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mNeedFinishRecord:Z

    .line 52
    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    .line 53
    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_15

    .line 54
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-eqz v0, :cond_17

    .line 55
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    .line 56
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->shouldDisableStopButton()Z

    move-result v1

    xor-int/2addr v1, v9

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    .line 57
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getAutoFinish()Z

    move-result v1

    xor-int/2addr v1, v9

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    .line 58
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getAutoFinish()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    goto :goto_5

    :cond_15
    const/16 v2, 0xd0

    if-eq v1, v2, :cond_16

    if-ne v1, v8, :cond_17

    .line 59
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 60
    :cond_16
    iput-boolean v6, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    .line 61
    :cond_17
    :goto_5
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVertical:Z

    return-object p0
.end method

.method public isLongExpose()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result v0

    return v0
.end method

.method public setSpecifiedDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    return-void
.end method
