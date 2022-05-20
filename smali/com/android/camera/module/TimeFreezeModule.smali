.class public Lcom/android/camera/module/TimeFreezeModule;
.super Lcom/android/camera/module/CloneModule;
.source "TimeFreezeModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/TimeFreezeModule$TimeFreezeState;
    }
.end annotation


# static fields
.field public static final DURATION_VIDEO_RECORDING:I = 0x3a98

.field public static final MAX_VIDEO_SUBJECT_COUNT:I = 0x1

.field public static final STATE_FREEZE:I = 0x4

.field public static final STATE_FREEZE_END:I = 0x8

.field public static final STATE_PREPARE:I = 0x1

.field public static final STATE_PREVIEW:I = 0x10

.field public static final STATE_PREVIEW_PAUSING:I = 0x20

.field public static final STATE_RECORDING:I = 0xe

.field public static final STATE_START:I = 0x2

.field public static final TAG:Ljava/lang/String; = "TimeFreezeModule"


# instance fields
.field public mInSaving:Z

.field public mOriginMaxRatio:F

.field public mOriginMinRatio:F

.field public final mSlideChangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

.field public mStartDetecting:Z

.field public mState:I

.field public maxFreezeRatio:F

.field public minFreezeRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/CloneModule;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    .line 4
    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    .line 5
    new-instance v0, Lcom/android/camera/module/TimeFreezeModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/TimeFreezeModule$1;-><init>(Lcom/android/camera/module/TimeFreezeModule;)V

    iput-object v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mSlideChangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

    return-void
.end method

.method public static synthetic OooOO0O()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/xiaomi/fenshen/FenShenCam;->setFilmFormat(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/TimeFreezeModule;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/module/TimeFreezeModule;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/module/TimeFreezeModule;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/module/TimeFreezeModule;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    return p1
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/module/TimeFreezeModule;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void
.end method

.method private changeState(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x1a2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onTimeFreezeStateChange(I)V

    :cond_0
    return-void
.end method

.method private isInRecording()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    and-int/lit8 v0, v0, -0xf

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pausePlayEffect()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->pausePlayEffect()V

    const/16 v0, 0x20

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onReplayPause()V

    :cond_0
    return-void
.end method

.method private resetEdit()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->pausePlayEffect()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    .line 4
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->editMultiCopy()V

    .line 5
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    .line 6
    iget v1, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    iput v1, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    .line 7
    invoke-static {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam;->onMoveDoubleSeekBar(FF)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    .line 9
    iget v1, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iget v2, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateEditPos(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updatePlayPos(F)V

    .line 11
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveDraft()V

    :cond_0
    return-void
.end method

.method private resetTipHint()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object v1

    sget-object v2, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    if-eq v1, v2, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPictureTakenImageConsumed not capturing"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->hideCaptureMessage()V

    :cond_1
    return-void
.end method

.method private resumePlayEffect()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->resumePlayEffect()V

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onReplayResume()V

    :cond_0
    return-void
.end method

.method private startFenShenCam()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/module/CloneModule;->mDetectedPerson:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->SHARE:Lcom/android/camera/fragment/clone/Status;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    .line 5
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->start()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mStartDetecting:Z

    return-void
.end method

.method private switchTimeFreeze()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    .line 3
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->stopTimeFreeze()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 4
    invoke-direct {p0, v1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    .line 5
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->startTimeFreeze()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateEditPos()V
    .locals 4

    .line 1
    sget v0, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStartPos:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 2
    sget v2, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeTotalFrames:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    .line 3
    sget v0, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStopPos:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget v1, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeTotalFrames:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    .line 6
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x1a2

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    .line 8
    iget v2, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iget v3, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateEditPos(FF)V

    .line 9
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updatePlayPos(F)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/TimeFreezeModule;->mSlideChangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->setSlideChangeListener(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelPhotoOrVideo()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mCaptureState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public dispatchConfigChange(I)Z
    .locals 2

    const/16 v0, 0xfb

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result p1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setTimeFreezeFilmRatioEnabled(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onFilmRatioChanged(ZZ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDurationVideoRecording()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public getMaxVideoSubjectCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/module/CloneModule;->mPendingStart:Z

    :cond_0
    return-void
.end method

.method public isVideoMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAdjustClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAdjustClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    .line 4
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->editMultiCopy()V

    const/4 v0, 0x6

    .line 5
    invoke-static {v0}, Lcom/xiaomi/fenshen/FenShenCam;->generateThumbnails(I)V

    .line 6
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveDraft()V

    return-void
.end method

.method public onCloneMessage(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/xiaomi/fenshen/FenShenCam$Message;Lcom/android/camera/protocol/ModeProtocol$CloneProcess;I)Z
    .locals 6

    .line 1
    invoke-interface {p3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object p1

    sget-object v0, Lcom/android/camera/fragment/clone/Status;->SHARE:Lcom/android/camera/fragment/clone/Status;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->EDIT_POS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->updateEditPos()V

    return v1

    .line 4
    :cond_1
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PLAY_ONE_TIME:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_3

    .line 5
    sget-boolean p1, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 7
    invoke-interface {p3, p1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updatePlayPos(F)V

    :cond_2
    return v1

    .line 8
    :cond_3
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PLAY_CURRENT_POS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    const/16 v0, 0x10

    if-ne p2, p1, :cond_5

    .line 9
    sget-boolean p1, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-ne p1, v0, :cond_4

    .line 10
    sget p1, Lcom/xiaomi/fenshen/FenShenCam;->mCurrentPlayPos:F

    .line 11
    invoke-interface {p3, p1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updatePlayPos(F)V

    .line 12
    sget-object p2, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "currentPos: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    .line 13
    :cond_5
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p2, p1, :cond_8

    .line 14
    sget-object p1, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "too much movement, stop capture"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f1202cb

    .line 16
    invoke-interface {p3, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateCaptureMessage(IZ)V

    const/16 p1, 0xa

    .line 17
    invoke-virtual {p0, p1, v3}, Lcom/android/camera/module/CloneModule;->onShutterButtonClick(IZ)V

    goto :goto_0

    .line 18
    :cond_6
    iget p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-ne p1, v2, :cond_7

    .line 19
    invoke-interface {p3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onCountDownFinished()V

    :cond_7
    :goto_0
    return v1

    .line 20
    :cond_8
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eq p2, p1, :cond_b

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_9

    goto :goto_1

    .line 21
    :cond_9
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eq p2, p1, :cond_a

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_c

    .line 22
    :cond_a
    invoke-interface {p3, v3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->setDetectedPersonInPreview(Z)V

    .line 23
    invoke-interface {p3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->hideCaptureMessage()V

    .line 24
    iput-boolean v3, p0, Lcom/android/camera/module/CloneModule;->mDetectedPerson:Z

    return v1

    .line 25
    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-nez p1, :cond_c

    .line 26
    invoke-interface {p3, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->setDetectedPersonInPreview(Z)V

    .line 27
    :cond_c
    sget-object p1, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCaptureMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_d

    return v3

    .line 29
    :cond_d
    iget p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_e

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_e

    const p4, 0x7f120969

    .line 30
    :cond_e
    iget p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-ne p1, v2, :cond_f

    const p4, 0x7f120968

    .line 31
    :cond_f
    iget p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_10

    .line 32
    invoke-interface {p3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->hideCaptureMessage()V

    return v1

    :cond_10
    if-ne p1, v0, :cond_11

    return v3

    .line 33
    :cond_11
    invoke-interface {p3, p4, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->updateCaptureMessage(IZ)V

    return v3
.end method

.method public onCreate(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mStartDetecting:Z

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void
.end method

.method public onError()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onError"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000Oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000Oo;-><init>(Lcom/android/camera/module/TimeFreezeModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000O0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000O0;-><init>(Lcom/android/camera/module/TimeFreezeModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onExitClicked()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onExitClicked()V

    const-string/jumbo v0, "value_time_freeze_exit_confirm"

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onFragmentResume()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mStartDetecting:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CloneModule;->mPendingStart:Z

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->startFenShenCam()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void
.end method

.method public onGiveUpEditClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGiveUpEditClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resetEdit()V

    return-void
.end method

.method public onHostStopAndNotifyActionStop(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->switchTimeFreeze()V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onPause()V

    return-void
.end method

.method public onPlayClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPlayClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resumePlayEffect()V

    :cond_0
    return-void
.end method

.method public onResetEditClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResetEditClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resetEdit()V

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/camera/fragment/clone/Config;->setCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x1a2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->quit()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 7
    invoke-interface {v1, v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    :cond_2
    return-void
.end method

.method public onSaveEditClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConfirmClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    .line 4
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    .line 5
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveEdit()V

    return-void
.end method

.method public onShutterButtonClick(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/CloneModule;->mCaptureState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string v0, "ignore onShutterButtonClick"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/CloneModule;->mCaptureState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 4
    iget-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v3, 0xd4

    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v3, 0x1a2

    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p1, :cond_9

    .line 8
    iget v3, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-eq v3, v2, :cond_7

    if-eq v3, v0, :cond_6

    const/4 v0, 0x4

    if-eq v3, v0, :cond_5

    const/16 v0, 0x8

    if-eq v3, v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {p1, v3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onTimeFreezeStateChange(I)V

    const-string/jumbo p1, "value_time_freeze_stop_record"

    .line 10
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    .line 11
    iget p1, p0, Lcom/android/camera/module/CloneModule;->mFrameCount:I

    const/16 v0, 0xf

    if-ge p1, v0, :cond_4

    .line 12
    sget-object p1, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string v0, "ignore onShutterButtonClick cause frameCount < 15"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->stopCaptureToPreviewResult()V

    .line 15
    invoke-direct {p0, v1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "value_time_freeze_click_reset"

    .line 16
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->onTimeFreezeClicked()V

    goto :goto_0

    .line 18
    :cond_6
    invoke-interface {p1, v3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onTimeFreezeStateChange(I)V

    const-string/jumbo p1, "value_time_freeze_click_freeze"

    .line 19
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->onTimeFreezeClicked()V

    goto :goto_0

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_8

    .line 22
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu(Z)V

    .line 23
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->delayTriggerShooting()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onStop()V

    .line 2
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    return-void
.end method

.method public onTimeFreezeClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTimeFreezeClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPictureTakenImageConsumed not capturing"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->switchTimeFreeze()V

    return-void
.end method

.method public onTouchDown(FF)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchDown  ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_DOWN:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/fenshen/FenShenCam;->sendTouchEvent(Lcom/xiaomi/fenshen/FenShenCam$TEventType;FFFFF)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 p2, 0x20

    if-ne p1, p2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resumePlayEffect()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onVideoSaveFinish()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onVideoSaveFinish()V

    return-void
.end method

.method public resumePreviewIfNeeded()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePreviewIfNeeded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/CloneModule;->mIsFinished:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->resumePreview()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->cancelPhotoOrVideo()V

    return-void
.end method

.method public saveVideo()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->saveVideo()V

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/CloneModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    sget-object v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00Ooo;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00Ooo;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->startFenShenCam()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x1a2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->onFrameAvailable()V

    :cond_0
    return-void
.end method

.method public setVideoCodec()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "video/avc"

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/fenshen/FenShenCam;->setVideoCodec(Ljava/lang/String;)V

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/CloneModule;->mIsFinished:Z

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

.method public startCountDown()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->getDurationVideoRecording()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1c2

    add-long v6, v0, v2

    .line 2
    new-instance v0, Lcom/android/camera/module/TimeFreezeModule$2;

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/module/TimeFreezeModule$2;-><init>(Lcom/android/camera/module/TimeFreezeModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/CloneModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public startPreviewSession()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->SHARE:Lcom/android/camera/fragment/clone/Status;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview: camera has been closed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDualCamWaterMarkEnable(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureMaxImages(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureFormat(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    .line 14
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v3, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    .line 17
    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public startVideoRecording(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CloneModule;->startVideoRecording(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V

    const/4 p1, 0x2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeRecord(Z)V

    return-void
.end method

.method public stopCaptureToPreviewResult(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    return-void
.end method

.method public stopVideoRecording(ZLcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(ZLcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p2

    invoke-static {p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->hideCaptureMessage()V

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x10

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    :cond_1
    return-void
.end method

.method public updatePictureAndPreviewSize()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 2
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePictureAndPreviewSize previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/16 v1, 0x23

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    const v3, 0x12c000

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;III)V

    .line 8
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 9
    sget-object v0, Lcom/android/camera/module/TimeFreezeModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePictureAndPreviewSize sizeLimit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgorithmPreviewSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method
