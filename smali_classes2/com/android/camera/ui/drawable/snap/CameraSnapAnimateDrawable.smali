.class public Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraSnapAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$BeautyRecordingListener;,
        Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_RANK:I = 0x1

.field public static final SNAP_ROUND_ORIGINAL_WIDTH:F = 0.65f

.field public static final mCameraDownConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mCameraUpSplashConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field public mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

.field public mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

.field public mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

.field public mContext:Landroid/content/Context;

.field public mDownSpring:Lcom/facebook/rebound/Spring;

.field public mLiveSpeed:F

.field public mLiveStartTime:J

.field public mLiveTotalTime:J

.field public mLongPressIncreaseListener:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

.field public mModeChangeAnimator:Landroid/animation/ValueAnimator;

.field public mRecordSpring:Lcom/facebook/rebound/Spring;

.field public mRecordingReferredPaints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/ui/drawable/CameraPaintBase;",
            ">;"
        }
    .end annotation
.end field

.field public mRingAnimator:Landroid/animation/ValueAnimator;

.field public mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

.field public mScaleDownAnimator:Landroid/animation/ValueAnimator;

.field public mScaleUpAnimator:Landroid/animation/ValueAnimator;

.field public mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

.field public mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field public mStopAnimator:Landroid/animation/ValueAnimator;

.field public mTimeAnimator:Landroid/animation/ValueAnimator;

.field public mUpSpring:Lcom/facebook/rebound/Spring;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraDownConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    .line 2
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v2

    sput-object v2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide v2, 0x4066800000000000L    # 180.0

    .line 3
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 4
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraUpSplashConfig:Lcom/facebook/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$16;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$16;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLongPressIncreaseListener:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

    .line 3
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mContext:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    .line 5
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    .line 6
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    .line 7
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    .line 8
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveStartTime:J

    return-wide v0
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveSpeed:F

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveTotalTime:J

    return-wide v0
.end method

.method private cancelScaleDownAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private cancelScaleUpAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private initReboundSystem()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mUpSpring:Lcom/facebook/rebound/Spring;

    .line 4
    sget-object v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mUpSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$14;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$14;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordSpring:Lcom/facebook/rebound/Spring;

    .line 7
    sget-object v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$15;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$15;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method private isInLongExpose(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsTimerBurstCircle:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onLongExposeFinish(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v1, 0x1

    const v2, 0x3f266666    # 0.65f

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord(ZZF)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const v1, 0x3f1c28f6    # 0.61f

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setBaseWidthPercent(F)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    :goto_0
    return-void
.end method

.method private onLongExposePrepare(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->setResult()V

    .line 3
    iget-boolean p1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsTimerBurstCircle:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord(ZZF)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const v1, 0x3f30a3d7    # 0.69f

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setBaseWidthPercent(F)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->clearSegments()V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-void
.end method

.method private updateLiveAnimationConfig()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getRecordSpeed()F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveSpeed:F

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getTotalRecordingTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveTotalTime:J

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getStartRecordingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLiveStartTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public addSegmentNow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->addSegmentNow(J)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public clearBitmap(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->getExternalPattern()Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->clearBitmap()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setBitmapPatternTargetAlpha(II)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$20;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$20;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$21;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$21;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public directFinishRecord()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 5
    iget v3, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v4, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v5, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const/high16 v6, 0x3f800000    # 1.0f

    .line 6
    invoke-static {v6}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v6

    int-to-float v6, v6

    .line 7
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentValues(FIIF)V

    .line 8
    iput-boolean v2, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public finishRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mNeedFinishRecord:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$12;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$12;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$13;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$13;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->stopRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    :goto_1
    return-void

    .line 16
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public hasSegments()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->hasSegments()Z

    move-result v0

    return v0
.end method

.method public hideBottomPaintItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public hideCirclePaintItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public hidePaintCenterVVItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public hideRoundPaintItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public intoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 2
    iget-object v2, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    iget-object v2, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    const v4, 0x7f060337

    invoke-virtual {v2, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v2

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v4

    const v5, 0x7f0600da

    invoke-virtual {v4, v5}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v4

    .line 6
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/customization/ThemeResource;->isFullScreen()Z

    move-result v6

    const v7, 0x7f06002b

    const/4 v8, -0x1

    if-eqz v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v6

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v7

    .line 8
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v9

    .line 9
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 10
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    .line 11
    iget v12, v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    const/16 v13, 0xa1

    const v15, 0x3f5020c5    # 0.813f

    const/high16 v14, 0x41700000    # 15.0f

    const v16, 0x408ccccd    # 4.4f

    const/high16 v5, 0x40400000    # 3.0f

    if-eq v12, v13, :cond_d

    const/16 v13, 0xa2

    if-eq v12, v13, :cond_b

    const/16 v13, 0xa9

    const/high16 v17, 0x3f800000    # 1.0f

    if-eq v12, v13, :cond_2

    const/16 v13, 0xac

    if-eq v12, v13, :cond_9

    const/16 v13, 0xbb

    if-eq v12, v13, :cond_8

    const/16 v13, 0xbd

    if-eq v12, v13, :cond_3

    const/16 v13, 0xcc

    if-eq v12, v13, :cond_6

    const/16 v13, 0xfe

    if-eq v12, v13, :cond_e

    const/16 v13, 0xb3

    if-eq v12, v13, :cond_3

    const/16 v13, 0xb4

    if-eq v12, v13, :cond_3

    const v3, 0x3f29e83e    # 0.6637f

    const v13, 0x3f1c28f6    # 0.61f

    packed-switch v12, :pswitch_data_0

    packed-switch v12, :pswitch_data_1

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v13, v8, v2, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 14
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {v1, v3, v8, v2, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 15
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v8, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 16
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 17
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const/16 v2, 0x2e

    const v3, 0x2effffff

    invoke-virtual {v1, v15, v3, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_6

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f30a3d7    # 0.69f

    invoke-virtual {v1, v7, v4, v3, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 19
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const v3, 0x3f266666    # 0.65f

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v6, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 20
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1, v15, v4, v6, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 21
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 22
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v1, v3, v2, v6, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_6

    :pswitch_0
    const v3, 0x3f266666    # 0.65f

    const/4 v6, 0x0

    .line 23
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    const v7, 0x3f30a3d7    # 0.69f

    invoke-virtual {v1, v7, v8, v2, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 24
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v1, v3, v8, v6, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 25
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1, v15, v8, v6, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 26
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 27
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const v2, -0xd1d1d2

    invoke-virtual {v1, v3, v2, v6, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 28
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 29
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 30
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    iget-object v2, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mContext:Landroid/content/Context;

    const v3, 0x7f080450

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->intoStartShotPattern(Landroid/content/Context;I)V

    goto/16 :goto_6

    :cond_2
    :pswitch_1
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_3
    :pswitch_2
    const/4 v2, 0x0

    :goto_1
    const v4, 0x3f266666    # 0.65f

    goto/16 :goto_5

    .line 31
    :pswitch_3
    iget-boolean v6, v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-eqz v6, :cond_4

    .line 32
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f30a3d7    # 0.69f

    invoke-virtual {v1, v4, v7, v11, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 33
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v4, -0xc5c6

    const v6, 0x3f266666    # 0.65f

    invoke-virtual {v1, v6, v4, v3, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 34
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    const/4 v3, 0x0

    invoke-virtual {v1, v15, v9, v3, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 35
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 36
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v1, v6, v2, v3, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_6

    .line 37
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 38
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v13, v8, v2, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 39
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {v1, v3, v8, v2, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 40
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v8, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 41
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 42
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const/16 v2, 0x2e

    const v3, 0x2effffff

    invoke-virtual {v1, v15, v3, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_6

    .line 43
    :cond_5
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3f30a3d7    # 0.69f

    invoke-virtual {v1, v6, v4, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 44
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const v2, 0x3f266666    # 0.65f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 45
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1, v15, v4, v3, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 46
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 47
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v1, v2, v8, v3, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_6

    .line 48
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 49
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f30a3d7    # 0.69f

    invoke-virtual {v1, v4, v8, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 50
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const v2, 0x3f266666    # 0.65f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 51
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1, v15, v8, v3, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 52
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 53
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const v4, -0xd1d1d2

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 54
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 55
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 56
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    iget-object v2, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mContext:Landroid/content/Context;

    const v3, 0x7f080450

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->intoStartShotPattern(Landroid/content/Context;I)V

    goto/16 :goto_6

    .line 57
    :cond_7
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f30a3d7    # 0.69f

    invoke-virtual {v1, v4, v8, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 58
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v3, -0xc5c6

    const v4, 0x3f266666    # 0.65f

    invoke-virtual {v1, v4, v3, v2, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 59
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v8, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 60
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 61
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const v3, -0xd1d1d2

    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 62
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v3, 0x7f0600da

    invoke-virtual {v1, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    .line 63
    iget-object v3, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f028f5c    # 0.51f

    invoke-virtual {v3, v5, v1, v2, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 64
    iget-object v2, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v4, 0x3f0f5c29    # 0.56f

    invoke-virtual {v2, v4, v1, v3, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 65
    iget-object v2, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    .line 66
    invoke-static/range {v17 .. v17}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f404189    # 0.751f

    .line 67
    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 68
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->intoProgressPattern()V

    .line 69
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    const v3, -0xd1d1d2

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v3, v4, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_6

    :cond_9
    const/4 v4, 0x0

    .line 70
    iget-object v2, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3f028f5c    # 0.51f

    const v6, -0xc5c6

    invoke-virtual {v2, v5, v6, v4, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 71
    iget-object v2, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v4, 0x3f0f5c29    # 0.56f

    invoke-virtual {v2, v4, v6, v3, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 72
    iget-object v2, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    .line 73
    invoke-static/range {v17 .. v17}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f404189    # 0.751f

    .line 74
    invoke-virtual {v2, v5, v8, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 75
    iget-boolean v1, v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->isFPS960:Z

    if-eqz v1, :cond_a

    .line 76
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->intoSlowPattern()V

    goto :goto_2

    .line 77
    :cond_a
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->intoProgressPattern()V

    .line 78
    :goto_2
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    const v3, -0xd1d1d2

    const v4, 0x3f266666    # 0.65f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_6

    .line 79
    :goto_3
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f028f5c    # 0.51f

    const v4, -0xc5c6

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 80
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v3, 0x3f0f5c29    # 0.56f

    invoke-virtual {v1, v3, v4, v2, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 81
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f404189    # 0.751f

    invoke-virtual {v1, v4, v8, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 82
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->intoFastPattern()V

    .line 83
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    const v3, -0xd1d1d2

    const v4, 0x3f266666    # 0.65f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_6

    .line 84
    :cond_b
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/customization/ThemeResource;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v8

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f060351

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    .line 85
    :goto_4
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 86
    iget-object v3, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3f30a3d7    # 0.69f

    invoke-virtual {v3, v6, v1, v2, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 87
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v3, -0xc5c6

    const v4, 0x3f266666    # 0.65f

    invoke-virtual {v1, v4, v3, v2, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 88
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v8, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 89
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 90
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const v3, -0xd1d1d2

    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_6

    :cond_d
    move v2, v3

    goto/16 :goto_1

    .line 91
    :goto_5
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static/range {v16 .. v16}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    const v7, 0x3f30a3d7    # 0.69f

    invoke-virtual {v1, v7, v6, v10, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 92
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const v6, -0xc5c6

    invoke-virtual {v1, v4, v6, v3, v14}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 93
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1, v15, v8, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 94
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->clearPatternAndExternal()V

    .line 95
    iget-object v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const v3, -0xd1d1d2

    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    :cond_e
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcf
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public intoPatternFromParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->setResult()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->setResult()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    return-void
.end method

.method public isBottomVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCircleVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoundBaseVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoundCurrentVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public pauseRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelScaleDownAnimation()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelScaleUpAnimation()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const v1, 0x3f266666    # 0.65f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord(ZZF)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iput-boolean v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    const/16 v4, 0xff

    .line 7
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 8
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsTimerBurstCircle:Z

    const/16 v5, 0xb0

    const/16 v6, 0xa6

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    iput v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    .line 10
    :cond_1
    iget v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/4 v7, 0x0

    if-eq v0, v6, :cond_12

    const/16 v6, 0xa7

    if-eq v0, v6, :cond_b

    const/16 v6, 0xa9

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_12

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_8

    const/16 v1, 0xbd

    if-eq v0, v1, :cond_5

    const/16 v1, 0xcc

    const v5, 0x3f6e147b    # 0.93f

    const/4 v6, -0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_9

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setSpaceAngel(F)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->clearSegments()V

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iput-boolean v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 16
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 18
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 19
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/ThemeResource;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f060351

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v6

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setRecordingBgColor(I)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setSpaceAngel(F)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->clearSegments()V

    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    const v4, 0x3f970a3d    # 1.18f

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedProcessShade(ZIZ)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    iput-boolean v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 32
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 33
    :cond_4
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setRecordingBgColor(I)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 37
    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->clearSegments()V

    .line 40
    iget v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_7

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v5, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    mul-float/2addr v1, v5

    iput v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    .line 42
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedProcessShade(ZIZ)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    if-eq v1, v4, :cond_6

    goto :goto_2

    :cond_6
    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_3

    .line 44
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 45
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 46
    :cond_8
    iget v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_14

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->removePatternOnly()V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 50
    :cond_9
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->removePatternOnly()V

    .line 51
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mSecondPaintHintEnable:Z

    if-eqz v0, :cond_a

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 53
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 54
    :cond_b
    :pswitch_5
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v0, :cond_c

    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->onLongExposePrepare(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 57
    :cond_c
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVertical:Z

    if-eqz v0, :cond_d

    const v0, 0x3f866666    # 1.05f

    goto :goto_4

    :cond_d
    const v0, 0x3fa66666    # 1.3f

    .line 58
    :goto_4
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_5

    :cond_e
    move v1, v3

    .line 59
    :goto_5
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const v6, 0x3f5020c5    # 0.813f

    mul-float/2addr v0, v6

    invoke-virtual {v5, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    if-eqz v1, :cond_f

    .line 60
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v5, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->setFixCircleOffset(Z)V

    .line 61
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v5, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_6

    .line 62
    :cond_f
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->setFixCircleOffset(Z)V

    .line 63
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    iget v6, v5, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 64
    :goto_6
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v5, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setShowCenterBitmap(Z)V

    const v5, 0x3f2e147b    # 0.68f

    if-eqz v1, :cond_10

    .line 65
    iget-object v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iput-boolean v3, v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 66
    invoke-virtual {v4, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_7

    .line 67
    :cond_10
    iget-object v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iput-boolean v3, v6, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 68
    iget-object v8, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v8, v8, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    invoke-virtual {v6, v8}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 69
    iget-object v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 70
    iget-object v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget-object v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v6, v6, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    mul-float/2addr v6, v5

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 71
    :goto_7
    iget-object v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v4, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 72
    iget-object v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v6, v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    if-eqz v1, :cond_11

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_8

    .line 75
    :cond_11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 76
    :goto_8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 78
    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;->setResult()V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord(ZZF)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 83
    :cond_13
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    iget v4, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord(ZZF)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const v1, 0x3f30a3d7    # 0.69f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setBaseWidthPercent(F)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_9
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 92
    iget-boolean p1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_15

    move v7, v1

    :cond_15
    aput v7, v0, v3

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$6;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$6;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb7
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xcf
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public removeLastSegment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->getSegmentRatios()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->removeLastSegmentAndGetLastTime()J

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public resetRecordingState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->resetRecordingState()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->resetRecordingState()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->resetRecordingState()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->resetRecordingState()V

    return-void
.end method

.method public resumeRecording()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->updateLiveAnimationConfig()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->setDurationText(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setSpecificProgress(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setSpecificProgress(I)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStopButtonEnable(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/16 p2, 0x4d

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    :cond_1
    :goto_0
    return-void
.end method

.method public setWidthHeight(FF)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    div-float v2, p2, v0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v0

    .line 2
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 3
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    return-void
.end method

.method public setbitmap(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSkip:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->intoStartShotPattern(Landroid/content/Context;I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public showBitmap(Landroid/content/Context;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->hasSameBitmap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->clearBitmap()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->showTargetBitmap(Landroid/content/Context;I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 p2, 0x1

    const/16 v0, 0xff

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setBitmapPatternTargetAlpha(II)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$18;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$18;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$19;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$19;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showBottomPaintItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public showCirclePaintItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public showPaintCenterVVItem()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v2, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v3, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    iget v4, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iget v1, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->prepareRecord()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public showRoundPaintItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public skipDrawCenter(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iput-boolean p1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSkip:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startModeChangeAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 4
    iget v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd4

    if-ne v0, v1, :cond_2

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->updateLiveAnimationConfig()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    iget v1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-boolean p1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startRecordAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->finishRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    :goto_0
    return-void
.end method

.method public startRingAnimation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setRingVisible(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$5;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startScaleDownAnimation(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelScaleUpAnimation()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result p1

    const v0, 0x3f6147ae    # 0.88f

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    if-eqz v0, :cond_1

    .line 9
    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->showBitmapPattern()Z

    move-result p1

    const v0, 0x3f666666    # 0.9f

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->setBitmapPatternTargetScale(F)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setBitmapPatternTargetScale(F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 13
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelScaleDownAnimation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    if-eqz v1, :cond_0

    .line 6
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->showBitmapPattern()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->setBitmapPatternTargetScale(F)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setBitmapPatternTargetScale(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$3;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$3;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_2

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public stopRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isInLongExpose(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$9;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$9;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelScaleDownAnimation()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelScaleUpAnimation()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const v2, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord(ZZF)V

    .line 10
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsTimerBurstCircle:Z

    const/16 v3, 0xb0

    const/16 v4, 0xa6

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iput v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    .line 12
    :cond_3
    iget v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/4 v5, 0x1

    if-eq v0, v4, :cond_e

    const/16 v4, 0xa7

    if-eq v0, v4, :cond_c

    if-eq v0, v3, :cond_e

    const/16 v2, 0xbd

    if-eq v0, v2, :cond_b

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_9

    const/16 v2, 0xcf

    if-eq v0, v2, :cond_9

    const/16 v2, 0xb3

    if-eq v0, v2, :cond_8

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_9

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_5

    .line 13
    :pswitch_0
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v0, :cond_4

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->onLongExposeFinish(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 17
    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 18
    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v2

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    .line 19
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_1

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget p1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    if-nez p1, :cond_6

    move v1, v5

    :cond_6
    if-eqz v1, :cond_7

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto/16 :goto_9

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto/16 :goto_9

    .line 24
    :cond_8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->setDurationText(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    const v1, 0x3f970a3d    # 1.18f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCenterVVPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 28
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 29
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    .line 30
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_2

    .line 31
    :cond_9
    :pswitch_1
    iget-boolean p1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    if-eqz p1, :cond_a

    .line 32
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 34
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 35
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/16 v1, 0xff

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_3

    .line 37
    :cond_b
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 38
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseStokeWidth:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetStrokeWidth(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 39
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    .line 40
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_4

    .line 41
    :cond_c
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v0, :cond_d

    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->onLongExposeFinish(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 44
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 45
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    iget v4, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_6

    .line 46
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 47
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 48
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v5, v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord(ZZF)V

    .line 49
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 50
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    .line 51
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_7

    .line 52
    :cond_f
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1, v5, v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord(ZZF)V

    .line 53
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 54
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 55
    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v2

    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    .line 56
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_8

    .line 57
    :cond_10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 58
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstAlpha:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 59
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mBottomPatinItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintBottom;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 60
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const v0, 0x3f1c28f6    # 0.61f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setBaseWidthPercent(F)V

    .line 61
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 62
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 63
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    :cond_11
    :goto_9
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 64
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 68
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$11;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$11;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb7
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopRingAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setRingVisible(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public test()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
