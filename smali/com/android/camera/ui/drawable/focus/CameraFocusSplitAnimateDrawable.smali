.class public Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;
.super Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;
.source "CameraFocusSplitAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final BIG_RECT_HALF_LENGTH:I

.field public static final CENTER_ALPHA:I = 0xf0

.field public static final CENTER_BASE_RADIUS:I

.field public static final STATE_COMBO:I = 0x1

.field public static final STATE_SPLIT:I = 0x2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCaptureBitmap:Landroid/graphics/Bitmap;

.field public mExposureBitmap:Landroid/graphics/Bitmap;

.field public mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field public mExposureLocked:Z

.field public mExposureX:I

.field public mExposureY:I

.field public mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field public mFocusLocked:Z

.field public mFocusMode:Ljava/lang/String;

.field public mFocusX:I

.field public mFocusY:I

.field public mOrientation:I

.field public mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field public mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

.field public mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field public mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

.field public mResetCenterAnimator:Landroid/animation/ValueAnimator;

.field public mState:I

.field public mSuccessAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->TAG:Ljava/lang/String;

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RECT_HALF_LENGTH:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x3f2a3d71    # 0.665f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->CENTER_BASE_RADIUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mOrientation:I

    const-string v1, "auto"

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusMode:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const v1, 0x3faa3d71    # 1.33f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, -0x1

    const/16 v4, 0xff

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5, v3, v4, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v5, v3, v4, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, -0x31ea

    invoke-virtual {p1, v5, v2, v4, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0xf0

    invoke-virtual {p1, v5, v2, v4, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v5, v2, v4, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->rotateItem:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-object p0
.end method

.method private drawCombo(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawSplit(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private playSplittingAnimation()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    const v1, 0x3e3851ec    # 0.18f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-string/jumbo v3, "split_up"

    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "split_tag"

    aput-object v5, v4, v1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v7

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v7, [F

    const/high16 v6, 0x43480000    # 200.0f

    aput v6, v5, v1

    const/16 v6, 0x12

    invoke-virtual {v2, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-array v5, v7, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    aput-object v6, v5, v1

    invoke-virtual {v2, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public synthetic OooO0o(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->updateValue(F)V

    return-void
.end method

.method public cancelResetCenter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public cancelSuccessAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->drawCombo(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->drawSplit(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCenterIndicator()Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isAnimatorRunning(Landroid/animation/Animator;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isExposureLocked()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFocusLocked()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFocusOrExposureLocked()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/16 v1, -0x31ea

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setAeAfLockedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/4 v0, 0x6

    iput v0, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorBitmapSun(Landroid/graphics/Bitmap;)V

    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/4 p3, 0x1

    iput p3, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iget-object p3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p3, p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mCaptureBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setCenter(II)V
    .locals 5

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusX:I

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    int-to-float v2, p1

    int-to-float v3, p2

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RECT_HALF_LENGTH:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setExposureCenter(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setFocusCenter(II)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/16 p2, -0x31ea

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setExposureCenter(II)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureX:I

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureY:I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    int-to-float p1, p1

    int-to-float p2, p2

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RECT_HALF_LENGTH:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFocusCenter(II)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusX:I

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusY:I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    int-to-float p1, p1

    int-to-float p2, p2

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RECT_HALF_LENGTH:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->updateValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusMode:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mOrientation:I

    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->playSplittingAnimation()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startFocusFailAnimation()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusFailAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooO/OooO00o/OooOO0o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooO/OooO00o/OooOO0o;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startFocusSuccessAnimation(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    :cond_0
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mIsTouchFocus:Z

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    return-void

    :cond_2
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    if-eq p1, p2, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    :cond_5
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/16 p2, -0x31ea

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->start3ALockSuccessAnimation()Landroid/animation/Animator;

    goto :goto_0

    :cond_6
    invoke-super {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startNormalFocusSuccessAnimation()V

    :goto_0
    return-void
.end method

.method public startTouchDownAnimation(I)V
    .locals 1

    sget-object p1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startTouchDownAnimation "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startTouchDownAnimation()V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
