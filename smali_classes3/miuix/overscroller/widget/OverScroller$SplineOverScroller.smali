.class public Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplineOverScroller"
.end annotation


# static fields
.field public static final BALLISTIC:I = 0x2

.field public static final CUBIC:I = 0x1

.field public static DECELERATION_RATE:F = 0.0f

.field public static final END_TENSION:F = 1.0f

.field public static final GRAVITY:F = 2000.0f

.field public static final INFLEXION:F = 0.35f

.field public static final MAX_DELTA_TIME:F = 0.016f

.field public static final NB_SAMPLES:I = 0x64

.field public static final P1:F = 0.175f

.field public static final P2:F = 0.35000002f

.field public static final SPLINE:I = 0x0

.field public static final SPLINE_POSITION:[F

.field public static final SPLINE_TIME:[F

.field public static final START_TENSION:F = 0.5f

.field public static final STATE_BALLISTIC:I = 0x2

.field public static final STATE_CUBIC:I = 0x1

.field public static final STATE_SPLINE:I = 0x0

.field public static final VALUE_THRESHOLD:F = 1.0f


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrVelocity:D

.field public mCurrentPosition:D

.field public mDeceleration:F

.field public mDuration:I

.field public mFinal:D

.field public mFinished:Z

.field public mFlingFriction:F

.field public mLastStep:Z

.field public mOriginStart:D

.field public mOver:I

.field public mPhysicalCoeff:F

.field public mSplineDistance:I

.field public mSplineDuration:I

.field public mSpringOperator:Lmiuix/animation/physics/SpringOperator;

.field public mSpringParams:[D

.field public mStart:D

.field public mStartTime:J

.field public mState:I

.field public mVelocity:D


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    .line 2
    sput-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    .line 3
    sput-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 4
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_2

    .line 5
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    move v3, v4

    :goto_2
    sub-float v6, v3, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 6
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_0

    .line 7
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const v7, 0x3e333333    # 0.175f

    mul-float/2addr v10, v7

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3e333333    # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_1

    move v3, v6

    goto :goto_3

    :cond_1
    move v1, v6

    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_2
    cmpl-float v7, v16, v5

    if-lez v7, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    .line 8
    :cond_4
    sget-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 4
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    .line 7
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    return-void
.end method

.method public static synthetic access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method public static synthetic access$002(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method public static synthetic access$100(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-wide v0
.end method

.method public static synthetic access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    return-wide v0
.end method

.method public static synthetic access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    return-wide v0
.end method

.method public static synthetic access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    return-wide v0
.end method

.method public static synthetic access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method public static synthetic access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method public static synthetic access$700(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method private adjustDuration(III)V
    .locals 3

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 2
    sget-object p2, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p3, p2, p3

    .line 3
    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    .line 4
    iget p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 5

    neg-int v0, p3

    int-to-float v0, v0

    .line 1
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float p3, p3

    mul-float/2addr p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    .line 4
    iget p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 7
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float p3, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double p2, p2

    .line 8
    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 9
    iget p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    int-to-double p1, p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    return-void
.end method

.method public static getDeceleration(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method

.method private getSplineDeceleration(I)D
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 2
    sget p1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 3
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 2
    sget p1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private onEdgeReached()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-float v2, v0

    double-to-float v0, v0

    mul-float/2addr v2, v0

    .line 2
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    .line 3
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 4
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    neg-float v0, v3

    mul-float/2addr v0, v2

    int-to-float v2, v4

    mul-float/2addr v2, v1

    div-float/2addr v0, v2

    .line 5
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    int-to-float v0, v4

    :cond_0
    float-to-int v1, v0

    .line 6
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 8
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    float-to-int v0, v0

    int-to-double v3, v0

    add-double/2addr v1, v3

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 9
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    mul-double/2addr v2, v0

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, v0

    div-double/2addr v2, v0

    double-to-int v0, v2

    neg-int v0, v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 10

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    const-string p1, "OverScroller"

    const-string p2, "startAfterEdge called from a valid position"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    if-le p1, p3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    move v3, p3

    goto :goto_1

    :cond_2
    move v3, p2

    :goto_1
    sub-int v4, p1, v3

    mul-int v5, v4, p4

    if-ltz v5, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 3
    invoke-direct {p0, p1, v3, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 4
    :cond_4
    invoke-direct {p0, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 5
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    if-eqz v2, :cond_5

    move v7, p2

    goto :goto_3

    :cond_5
    move v7, p1

    :goto_3
    if-eqz v2, :cond_6

    move v8, p1

    goto :goto_4

    :cond_6
    move v8, p3

    .line 6
    :goto_4
    iget v9, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 7
    :cond_7
    invoke-direct {p0, p1, v3, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    .line 1
    :goto_0
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 3
    invoke-direct {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .locals 2

    const/4 p3, 0x0

    .line 1
    iput-boolean p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 p3, 0x1

    .line 2
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    int-to-double v0, p1

    .line 3
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    int-to-double v0, p2

    .line 4
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    sub-int/2addr p1, p2

    .line 5
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-int p2, p1

    int-to-double p2, p2

    .line 6
    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-double p1, p1

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    mul-double/2addr p1, v0

    .line 8
    iget p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 4
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return v3

    .line 5
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 6
    iget-wide v6, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v6, v4, v6

    long-to-float v1, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    float-to-double v6, v1

    const-wide v8, 0x3f90624de0000000L    # 0.01600000075995922

    .line 7
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmpl-double v1, v6, v10

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v8, v6

    .line 8
    :goto_0
    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 9
    iget-object v10, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    iget-wide v11, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    aget-wide v13, v1, v2

    aget-wide v15, v1, v3

    const/4 v1, 0x2

    new-array v1, v1, [D

    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    aput-wide v4, v1, v2

    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    aput-wide v4, v1, v3

    move-wide/from16 v17, v8

    move-object/from16 v19, v1

    invoke-virtual/range {v10 .. v19}, Lmiuix/animation/physics/SpringOperator;->updateVelocity(DDDD[D)D

    move-result-wide v1

    .line 10
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    mul-double/2addr v8, v1

    add-double/2addr v4, v8

    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 11
    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 12
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    invoke-virtual {v0, v4, v5, v1, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->isAtEquilibrium(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    goto :goto_1

    .line 14
    :cond_3
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    :goto_1
    return v3

    :cond_4
    :goto_2
    return v2
.end method

.method public continueWhenFinished()Z
    .locals 7

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 3
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    double-to-int v0, v3

    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int v3, v3

    invoke-direct {p0, v0, v3, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_1
    return v2

    .line 4
    :cond_2
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v3, :cond_3

    .line 5
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 6
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-int v0, v2

    int-to-double v2, v0

    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-int v0, v2

    .line 7
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 8
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 9
    invoke-direct {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->update()Z

    return v1

    :cond_3
    return v2
.end method

.method public extendDuration(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    .line 3
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIII)V
    .locals 4

    .line 1
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 p5, 0x0

    .line 2
    iput-boolean p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v0, p2

    .line 3
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 4
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double v0, p1

    .line 6
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    if-gt p1, p4, :cond_4

    if-ge p1, p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    .line 8
    invoke-direct {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result p5

    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 9
    invoke-direct {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    :cond_1
    int-to-float p2, p2

    .line 10
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 11
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    int-to-double v0, p3

    cmpg-double p5, p1, v0

    if-gez p5, :cond_2

    .line 12
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int p5, v2

    double-to-int p1, p1

    invoke-direct {p0, p5, p1, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 13
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 14
    :cond_2
    iget-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    int-to-double v0, p4

    cmpl-double p3, p1, v0

    if-lez p3, :cond_3

    .line 15
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int p3, v2

    double-to-int p1, p1

    invoke-direct {p0, p3, p1, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 16
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    :cond_3
    return-void

    .line 17
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method public final getCurrVelocity()F
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-float v0, v0

    return v0
.end method

.method public final getCurrentPosition()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    double-to-int v0, v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method public final getFinal()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    double-to-int v0, v0

    return v0
.end method

.method public final getStart()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int v0, v0

    return v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method public isAtEquilibrium(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method public notifyEdgeReached(III)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 2
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 4
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-int p3, v0

    invoke-direct {p0, p1, p2, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    :cond_0
    return-void
.end method

.method public final setCurrVelocity(F)V
    .locals 2

    float-to-double v0, p1

    .line 1
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    return-void
.end method

.method public final setCurrentPosition(I)V
    .locals 2

    int-to-double v0, p1

    .line 1
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method public final setFinal(I)V
    .locals 2

    int-to-double v0, p1

    .line 1
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    return-void
.end method

.method public setFinalPosition(I)V
    .locals 2

    int-to-double v0, p1

    .line 1
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method public final setFinished(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method public setFriction(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method public final setStart(I)V
    .locals 2

    int-to-double v0, p1

    .line 1
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return-void
.end method

.method public springback(III)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v1, p1

    .line 2
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_0

    .line 6
    invoke-direct {p0, p1, p2, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    .line 7
    invoke-direct {p0, p1, p3, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 8
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method public startScroll(III)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v0, p1

    .line 2
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 3
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 5
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    const-wide/16 p1, 0x0

    .line 7
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    return-void
.end method

.method public startScrollByFling(FII)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 2
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    float-to-double v0, p1

    .line 3
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOriginStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 4
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double p1, p3

    .line 6
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 7
    new-instance p1, Lmiuix/animation/physics/SpringOperator;

    invoke-direct {p1}, Lmiuix/animation/physics/SpringOperator;-><init>()V

    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    const/4 p2, 0x2

    new-array p3, p2, [D

    .line 8
    iput-object p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    new-array p2, p2, [F

    .line 9
    fill-array-data p2, :array_0

    invoke-virtual {p1, p2, p3}, Lmiuix/animation/physics/SpringOperator;->getParameters([F[D)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public update()Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 3
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v0, :cond_0

    move v3, v4

    :cond_0
    return v3

    .line 4
    :cond_1
    iget v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    return v3

    :cond_2
    const-wide/16 v5, 0x0

    .line 5
    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v7, 0x447a0000    # 1000.0f

    if-eqz v3, :cond_5

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_4

    const/4 v2, 0x2

    if-eq v3, v2, :cond_3

    goto :goto_0

    :cond_3
    long-to-float v0, v0

    div-float/2addr v0, v7

    .line 6
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v5, v3, v0

    float-to-double v5, v5

    add-double/2addr v5, v1

    iput-wide v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    float-to-double v5, v0

    mul-double/2addr v1, v5

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    div-float/2addr v3, v8

    float-to-double v5, v3

    add-double/2addr v5, v1

    goto :goto_0

    :cond_4
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    .line 7
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 8
    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v3

    mul-float/2addr v5, v2

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v1

    mul-float/2addr v8, v0

    mul-float/2addr v8, v1

    sub-float/2addr v6, v8

    mul-float/2addr v5, v6

    float-to-double v5, v5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    neg-float v0, v0

    add-float/2addr v0, v1

    mul-float/2addr v2, v0

    float-to-double v0, v2

    .line 9
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    goto :goto_0

    :cond_5
    long-to-float v0, v0

    .line 10
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x64

    if-ge v2, v6, :cond_6

    int-to-float v3, v2

    div-float/2addr v3, v1

    add-int/lit8 v5, v2, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v1

    .line 11
    sget-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v2, v1, v2

    .line 12
    aget v1, v1, v5

    sub-float/2addr v1, v2

    sub-float/2addr v6, v3

    div-float v5, v1, v6

    sub-float/2addr v0, v3

    mul-float/2addr v0, v5

    add-float v3, v2, v0

    .line 13
    :cond_6
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v1, v0

    mul-float/2addr v3, v1

    float-to-double v1, v3

    int-to-float v0, v0

    mul-float/2addr v5, v0

    .line 14
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v0, v0

    div-float/2addr v5, v0

    mul-float/2addr v5, v7

    float-to-double v5, v5

    iput-wide v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    move-wide v5, v1

    .line 15
    :goto_0
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return v4
.end method

.method public updateScroll(F)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    float-to-double v2, p1

    iget-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-void
.end method
