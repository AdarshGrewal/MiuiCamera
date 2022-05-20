.class public Lmiuix/animation/internal/AnimRunner;
.super Ljava/lang/Object;
.source "AnimRunner.java"

# interfaces
.implements Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/AnimRunner$Holder;
    }
.end annotation


# static fields
.field public static final MAX_DELTA:J = 0x10L

.field public static final MAX_RECORD:I = 0x5

.field public static final MSG_END:I = 0x1

.field public static final MSG_START:I

.field public static final sMainHandler:Landroid/os/Handler;

.field public static final sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

.field public static final sRunnerThread:Landroid/os/HandlerThread;


# instance fields
.field public volatile mAverageDelta:J

.field public mDeltaRecord:[J

.field public volatile mIsRunning:Z

.field public mLastFrameTime:J

.field public mRatio:F

.field public mRecordCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnimRunnerThread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerThread:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Lmiuix/animation/internal/RunnerHandler;

    sget-object v1, Lmiuix/animation/internal/AnimRunner;->sRunnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/internal/RunnerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 4
    new-instance v0, Lmiuix/animation/internal/AnimRunner$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/internal/AnimRunner$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x10

    .line 3
    iput-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>(Lmiuix/animation/internal/AnimRunner$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/internal/AnimRunner;-><init>()V

    return-void
.end method

.method public static synthetic access$100()V
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->startAnimRunner()V

    return-void
.end method

.method public static synthetic access$200()V
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->endAnimation()V

    return-void
.end method

.method private average([J)J
    .locals 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v7, p1, v1

    add-long/2addr v5, v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v4, :cond_2

    int-to-long v0, v4

    .line 2
    div-long v2, v5, v0

    :cond_2
    return-wide v2
.end method

.method private calculateAverageDelta(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    invoke-direct {p0, v0}, Lmiuix/animation/internal/AnimRunner;->average([J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide p1, v0

    :cond_0
    cmp-long v0, p1, v2

    const-wide/16 v1, 0x10

    if-eqz v0, :cond_1

    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    :cond_1
    move-wide p1, v1

    :cond_2
    long-to-float p1, p1

    .line 2
    iget p2, p0, Lmiuix/animation/internal/AnimRunner;->mRatio:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    return-wide p1
.end method

.method public static endAnimation()V
    .locals 4

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "AnimRunner.endAnimation"

    .line 4
    invoke-static {v3, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_1
    iput-boolean v2, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 6
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/animation/physics/AnimationHandler;->removeCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method public static getInst()Lmiuix/animation/internal/AnimRunner;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunner$Holder;->inst:Lmiuix/animation/internal/AnimRunner;

    return-object v0
.end method

.method public static startAnimRunner()V
    .locals 4

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AnimRunner.start"

    .line 4
    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_1
    invoke-static {}, Lmiuix/animation/Folme;->getTimeRatio()F

    move-result v1

    iput v1, v0, Lmiuix/animation/internal/AnimRunner;->mRatio:F

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 7
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/physics/AnimationHandler;->addAnimationFrameCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method public static updateAnimRunner(Ljava/util/Collection;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiuix/animation/IAnimTarget;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 4
    iget-object v1, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    const/4 v2, 0x0

    new-array v3, v2, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v1, v3}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v1

    .line 5
    iget-object v3, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v3}, Lmiuix/animation/internal/AnimManager;->isAnimSetup()Z

    move-result v3

    .line 6
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    move-result v4

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->runUpdate()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, v2}, Lmiuix/animation/internal/AnimManager;->update(Z)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_1

    if-nez v1, :cond_1

    const-wide/16 v5, 0x1

    .line 9
    invoke-virtual {v0, v5, v6}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Lmiuix/animation/IAnimTarget;

    aput-object v0, v1, v2

    .line 10
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateRunningTime(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    goto :goto_0

    :cond_0
    sub-long v2, p1, v0

    .line 3
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    .line 4
    :goto_0
    iget p1, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    rem-int/lit8 p2, p1, 0x5

    .line 5
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    aput-wide v2, v0, p2

    add-int/lit8 p1, p1, 0x1

    .line 6
    iput p1, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    .line 7
    invoke-direct {p0, v2, v3}, Lmiuix/animation/internal/AnimRunner;->calculateAverageDelta(J)J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    return-void
.end method


# virtual methods
.method public varargs cancel(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p2, v3}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public varargs cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .locals 4

    .line 2
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/AnimRunner;->updateRunningTime(J)V

    .line 2
    iget-boolean p1, p0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    if-eqz p1, :cond_6

    .line 3
    invoke-static {}, Lmiuix/animation/Folme;->getTargets()Ljava/util/Collection;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 5
    iget-object v3, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    new-array v4, v0, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v3, v4}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v2}, Lmiuix/animation/internal/AnimManager;->getTotalAnimCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    const/16 p2, 0x1f4

    if-le v1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    if-gtz p2, :cond_4

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    if-nez p2, :cond_5

    .line 8
    :cond_4
    invoke-static {p1, v0}, Lmiuix/animation/internal/AnimRunner;->updateAnimRunner(Ljava/util/Collection;Z)V

    .line 9
    :cond_5
    sget-object p2, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 v1, 0x3

    .line 10
    iput v1, p2, Landroid/os/Message;->what:I

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    sget-object v1, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v0, :cond_6

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 14
    invoke-static {p1, v0}, Lmiuix/animation/internal/AnimRunner;->updateAnimRunner(Ljava/util/Collection;Z)V

    .line 15
    :cond_6
    iget-boolean p1, p0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    return p1
.end method

.method public end()V
    .locals 2

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->endAnimation()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    :cond_0
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v2, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, p2, v3}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v2}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .locals 4

    .line 4
    invoke-static {p2}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    :cond_0
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v2, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v2}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public getAverageDelta()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    return-wide v0
.end method

.method public run(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/internal/TransitionInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lmiuix/animation/internal/TransitionInfo;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public run(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 2

    .line 3
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/internal/AnimRunner$2;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/AnimRunner$2;-><init>(Lmiuix/animation/internal/AnimRunner;Lmiuix/animation/internal/TransitionInfo;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->startAnimRunner()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
