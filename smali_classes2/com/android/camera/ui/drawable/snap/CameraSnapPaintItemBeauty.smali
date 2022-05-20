.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;
.super Ljava/lang/Object;
.source "CameraSnapPaintItemBeauty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$LongPressIncreaseListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraSnapPaintItemBeau"

.field public static final mCameraDownConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mCameraUpSplashConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field public mCameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

.field public mCurrentAlpha:I

.field public mCurrentColor:I

.field public mCurrentWidth:F

.field public mDownSpring:Lcom/facebook/rebound/Spring;

.field public mDstAlpha:I

.field public mDstColor:I

.field public mDstWidth:F

.field public mLongPressIncreaseListener:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$LongPressIncreaseListener;

.field public mPaint:Landroid/graphics/Paint;

.field public mRecordSpring:Lcom/facebook/rebound/Spring;

.field public mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field public mSrcAlpha:I

.field public mSrcColor:I

.field public mSrcWidth:F

.field public mUpSpring:Lcom/facebook/rebound/Spring;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCameraDownConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    .line 2
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v2

    sput-object v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide v2, 0x4066800000000000L    # 180.0

    .line 3
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 4
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCameraUpSplashConfig:Lcom/facebook/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentWidth:F

    .line 3
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$1;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mLongPressIncreaseListener:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$LongPressIncreaseListener;

    .line 4
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->initClickReboundSystem()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->initLongPressReboundSystem()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    return-object p0
.end method

.method private initClickReboundSystem()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDownSpring:Lcom/facebook/rebound/Spring;

    .line 3
    sget-object v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCameraDownConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDownSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$2;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method private initLongPressReboundSystem()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mUpSpring:Lcom/facebook/rebound/Spring;

    .line 2
    sget-object v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mUpSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$3;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mRecordSpring:Lcom/facebook/rebound/Spring;

    .line 5
    sget-object v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mRecordSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mRecordSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$4;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void
.end method


# virtual methods
.method public onDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDownSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public onLongPress()V
    .locals 0

    return-void
.end method

.method public onUp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDownSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public reInitValues(FII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstWidth:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstColor:I

    .line 3
    iput p3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstAlpha:I

    .line 4
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentWidth:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcWidth:F

    .line 5
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentColor:I

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcColor:I

    .line 6
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentAlpha:I

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcAlpha:I

    return-void
.end method

.method public setResult()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstWidth:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentWidth:F

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstAlpha:I

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentAlpha:I

    .line 3
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstColor:I

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentColor:I

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentWidth:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcWidth:F

    .line 7
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentColor:I

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcColor:I

    .line 8
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentAlpha:I

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcAlpha:I

    return-void
.end method

.method public updateValue(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstWidth:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcWidth:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 2
    iput v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentWidth:F

    .line 3
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcColor:I

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstColor:I

    if-eq v0, v1, :cond_0

    .line 4
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 5
    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentColor:I

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mSrcAlpha:I

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mDstAlpha:I

    if-eq v0, v1, :cond_1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 8
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentAlpha:I

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    return-void
.end method
