.class public Lcom/facebook/rebound/Spring;
.super Ljava/lang/Object;
.source "Spring.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/Spring$PhysicsState;
    }
.end annotation


# static fields
.field public static ID:I = 0x0

.field public static final MAX_DELTA_TIME_SEC:D = 0.064

.field public static final SOLVER_TIMESTEP_SEC:D = 0.001


# instance fields
.field public final mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

.field public mDisplacementFromRestThreshold:D

.field public mEndValue:D

.field public final mId:Ljava/lang/String;

.field public mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/rebound/SpringListener;",
            ">;"
        }
    .end annotation
.end field

.field public mOvershootClampingEnabled:Z

.field public final mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

.field public mRestSpeedThreshold:D

.field public mSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field public final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field public mStartValue:D

.field public final mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

.field public mTimeAccumulator:D

.field public mWasAtRest:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/rebound/BaseSpringSystem;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 3
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 4
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    const-wide v0, 0x3f747ae147ae147bL    # 0.005

    .line 6
    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    .line 7
    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "spring:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/facebook/rebound/Spring;->ID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/rebound/Spring;->ID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    .line 12
    sget-object p1, Lcom/facebook/rebound/SpringConfig;->defaultConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {p0, p1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDisplacementDistanceForState(Lcom/facebook/rebound/Spring$PhysicsState;)D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iget-wide v2, p1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private interpolate(D)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    mul-double/2addr v1, p1

    iget-object v3, p0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v4, v3, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    iput-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 2
    iget-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    mul-double/2addr v1, p1

    iget-wide p1, v3, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    mul-double/2addr p1, v6

    add-double/2addr v1, p1

    iput-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    return-void
.end method


# virtual methods
.method public addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newListener is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public advance(D)V
    .locals 30

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v2, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-wide v2, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v2, p1

    .line 3
    :goto_0
    iget-wide v4, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 4
    iget-object v2, v0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v3, v2, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 5
    iget-wide v5, v2, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 6
    iget-object v2, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v7, v2, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 7
    iget-wide v9, v2, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 8
    iget-object v2, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v11, v2, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 9
    iget-wide v13, v2, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    move v15, v1

    .line 10
    :goto_1
    iget-wide v1, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v18, v1, v16

    if-ltz v18, :cond_3

    sub-double v1, v1, v16

    .line 11
    iput-wide v1, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    cmpg-double v1, v1, v16

    if-gez v1, :cond_2

    .line 12
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v7, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 13
    iput-wide v9, v1, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 14
    :cond_2
    iget-wide v1, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    sub-double v11, v1, v11

    mul-double/2addr v11, v3

    mul-double v13, v5, v9

    sub-double/2addr v11, v13

    mul-double v13, v9, v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v13, v13, v18

    add-double/2addr v13, v7

    mul-double v20, v11, v16

    mul-double v20, v20, v18

    add-double v20, v9, v20

    sub-double v13, v1, v13

    mul-double/2addr v13, v3

    mul-double v22, v5, v20

    sub-double v13, v13, v22

    mul-double v22, v20, v16

    mul-double v22, v22, v18

    add-double v22, v7, v22

    mul-double v24, v13, v16

    mul-double v24, v24, v18

    add-double v24, v9, v24

    sub-double v18, v1, v22

    mul-double v18, v18, v3

    mul-double v22, v5, v24

    sub-double v18, v18, v22

    mul-double v22, v24, v16

    add-double v22, v7, v22

    mul-double v26, v18, v16

    add-double v26, v9, v26

    sub-double v1, v1, v22

    mul-double/2addr v1, v3

    mul-double v28, v5, v26

    sub-double v1, v1, v28

    add-double v20, v20, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v24

    add-double v20, v9, v20

    add-double v20, v20, v26

    const-wide v28, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v20, v20, v28

    add-double v13, v13, v18

    mul-double v13, v13, v24

    add-double/2addr v11, v13

    add-double/2addr v11, v1

    mul-double v11, v11, v28

    mul-double v20, v20, v16

    add-double v7, v7, v20

    mul-double v11, v11, v16

    add-double/2addr v9, v11

    move-wide/from16 v11, v22

    move-wide/from16 v13, v26

    goto :goto_1

    .line 15
    :cond_3
    iget-object v5, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v11, v5, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 16
    iput-wide v13, v5, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 17
    iget-object v5, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v7, v5, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 18
    iput-wide v9, v5, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_4

    div-double v1, v1, v16

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/facebook/rebound/Spring;->interpolate(D)V

    .line 20
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/facebook/rebound/Spring;->mOvershootClampingEnabled:Z

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->isOvershooting()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v15

    goto :goto_4

    :cond_6
    :goto_2
    cmpl-double v1, v3, v5

    if-lez v1, :cond_7

    .line 21
    iget-wide v3, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iput-wide v3, v0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 22
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v3, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    goto :goto_3

    .line 23
    :cond_7
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v3, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v3, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 24
    iput-wide v3, v0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 25
    :goto_3
    invoke-virtual {v0, v5, v6}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    move v1, v2

    .line 26
    :goto_4
    iget-boolean v3, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 27
    iput-boolean v4, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    move v3, v2

    goto :goto_5

    :cond_8
    move v3, v4

    :goto_5
    if-eqz v1, :cond_9

    .line 28
    iput-boolean v2, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    goto :goto_6

    :cond_9
    move v2, v4

    .line 29
    :goto_6
    iget-object v1, v0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/rebound/SpringListener;

    if-eqz v3, :cond_b

    .line 30
    invoke-interface {v4, v0}, Lcom/facebook/rebound/SpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    .line 31
    :cond_b
    invoke-interface {v4, v0}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    if-eqz v2, :cond_a

    .line 32
    invoke-interface {v4, v0}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    goto :goto_7

    :cond_c
    return-void
.end method

.method public currentValueIsApproximately(D)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getRestDisplacementThreshold()D

    move-result-wide v0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 2
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/BaseSpringSystem;->deregisterSpring(Lcom/facebook/rebound/Spring;)V

    return-void
.end method

.method public getCurrentDisplacementDistance()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {p0, v0}, Lcom/facebook/rebound/Spring;->getDisplacementDistanceForState(Lcom/facebook/rebound/Spring$PhysicsState;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentValue()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    return-wide v0
.end method

.method public getEndValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRestDisplacementThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    return-wide v0
.end method

.method public getRestSpeedThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    return-wide v0
.end method

.method public getSpringConfig()Lcom/facebook/rebound/SpringConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    return-object v0
.end method

.method public getStartValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    return-wide v0
.end method

.method public getVelocity()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    return-wide v0
.end method

.method public isAtRest()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {p0, v0}, Lcom/facebook/rebound/Spring;->getDisplacementDistanceForState(Lcom/facebook/rebound/Spring$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v0, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOvershootClampingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/rebound/Spring;->mOvershootClampingEnabled:Z

    return v0
.end method

.method public isOvershooting()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v0, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAllListeners()Lcom/facebook/rebound/Spring;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-object p0
.end method

.method public removeListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listenerToRemove is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAtRest()Lcom/facebook/rebound/Spring;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v1, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 2
    iget-object v3, p0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v1, v3, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    return-object p0
.end method

.method public setCurrentValue(D)Lcom/facebook/rebound/Spring;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/rebound/Spring;->setCurrentValue(DZ)Lcom/facebook/rebound/Spring;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentValue(DZ)Lcom/facebook/rebound/Spring;
    .locals 1

    .line 2
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 3
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide p1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 4
    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/SpringListener;

    .line 6
    invoke-interface {p2, p0}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    :cond_1
    return-object p0
.end method

.method public setEndValue(D)Lcom/facebook/rebound/Spring;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 3
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 4
    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/SpringListener;

    .line 6
    invoke-interface {p2, p0}, Lcom/facebook/rebound/SpringListener;->onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setOvershootClampingEnabled(Z)Lcom/facebook/rebound/Spring;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/rebound/Spring;->mOvershootClampingEnabled:Z

    return-object p0
.end method

.method public setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    return-object p0
.end method

.method public setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    return-object p0
.end method

.method public setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "springConfig is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVelocity(D)Lcom/facebook/rebound/Spring;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-wide p1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 3
    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    return-object p0
.end method

.method public systemShouldAdvance()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->wasAtRest()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public wasAtRest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    return v0
.end method
