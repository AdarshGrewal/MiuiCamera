.class public Lcom/android/camera/ui/CameraSnapView;
.super Landroid/view/View;
.source "CameraSnapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraSnapView$SnapListener;,
        Lcom/android/camera/ui/CameraSnapView$SnapEvent;
    }
.end annotation


# static fields
.field public static final LONG_PRESS_TIME:I = 0x320

.field public static final MSG_START_CLICK:I = 0x1

.field public static final MSG_START_LONG_PRESS:I = 0x2

.field public static final MSG_START_LONG_PRESS_CANCEL_IN:I = 0x4

.field public static final MSG_START_LONG_PRESS_CANCEL_OUT:I = 0x3

.field public static final RECT_WIDTH:F = 0.75f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

.field public mCancelRespond:Z

.field public mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

.field public mCurrentMode:I

.field public mEnableSnapClick:Z

.field public mExtraBitmap:Landroid/graphics/Bitmap;

.field public mExtraBitmapMatrix:Landroid/graphics/Matrix;

.field public mExtraBitmapPaint:Landroid/graphics/Paint;

.field public mHandler:Landroid/os/Handler;

.field public mHasCancelByOutside:Z

.field public mHeight:I

.field public mLongPressTime:I

.field public mMissTaken:Z

.field public mPressDownTime:J

.field public mPressUpTime:J

.field public mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    const/16 p1, 0x320

    .line 3
    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    .line 4
    new-instance p1, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    const/16 p1, 0x320

    .line 10
    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    .line 11
    new-instance p1, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    .line 14
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    const/16 p1, 0x320

    .line 17
    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    .line 18
    new-instance p1, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    .line 20
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    .line 21
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->initView()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/ui/CameraSnapView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    return p1
.end method

.method private initView()V
    .locals 0

    return-void
.end method

.method private onTouchDownDefaultHandler(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canSnap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    .line 4
    iget-wide v2, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    sub-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onTrackSnapMissTaken(J)V

    .line 6
    :cond_0
    sget-object p1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string v0, "can not snap"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-nez v0, :cond_2

    return v1

    .line 8
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    return v2
.end method

.method private recycleBitmap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float v1, v0, v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v2, p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v0, p1

    .line 7
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    .line 8
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addSegmentNow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->addSegmentNow()V

    return-void
.end method

.method public directFinishRecord()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->directFinishRecord()V

    return-void
.end method

.method public hasSegments()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hasSegments()Z

    move-result v0

    return v0
.end method

.method public hideBottomPaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hideBottomPaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public hideCirclePaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hideCirclePaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public hidePaintCenterVVItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hidePaintCenterVVItem()V

    return-void
.end method

.method public hideRoundPaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hideRoundPaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public intoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startModeChangeAnimation()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isBottomVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isBottomVisible()Z

    move-result v0

    return v0
.end method

.method public isCircleVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isCircleVisible()Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public isRoundBaseVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isRoundBaseVisible()Z

    move-result v0

    return v0
.end method

.method public isRoundCurrentVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isRoundCurrentVisible()Z

    move-result v0

    return v0
.end method

.method public isSnapEnableClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    return v0
.end method

.method public longExposePrepare(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public longExposeStart(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->recycleBitmap()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onForceVideoStateChange(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-ne v1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startModeChangeAnimation()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHeight:I

    .line 5
    iget p2, p0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz p1, :cond_1

    .line 7
    iget p2, p0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    int-to-float p2, p2

    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setWidthHeight(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTimeOut()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->showCirclePaintItem()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraSnapView;->isSnapEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this view is disabled. action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v13, 0xb0

    const/16 v14, 0xa9

    const/16 v15, 0xa6

    const/16 v3, 0xa2

    const/16 v4, 0xa1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_11

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_1

    if-eq v2, v8, :cond_4

    const/4 v5, 0x6

    if-eq v2, v5, :cond_6

    goto/16 :goto_4

    :cond_1
    if-eqz v1, :cond_2

    return v7

    .line 6
    :cond_2
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    if-eqz v2, :cond_4

    :cond_3
    return v7

    .line 7
    :cond_4
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 9
    iget-wide v11, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    sub-long/2addr v9, v11

    .line 10
    iget v5, v0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    int-to-long v11, v5

    cmp-long v5, v9, v11

    if-gez v5, :cond_6

    if-eqz v1, :cond_5

    .line 11
    iget-boolean v5, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    if-nez v5, :cond_5

    .line 12
    sget-object v5, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "snap click action_up"

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v5, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 14
    :cond_5
    sget-object v5, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "out of shutter button when you touch up"

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_6
    :goto_0
    iget-boolean v5, v0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    if-eqz v5, :cond_7

    return v6

    .line 16
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 17
    iget-wide v11, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    sub-long/2addr v9, v11

    .line 18
    sget-object v5, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeDiffer = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget v5, v0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    int-to-long v11, v5

    cmp-long v5, v9, v11

    if-ltz v5, :cond_9

    iget-boolean v5, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    if-nez v5, :cond_9

    if-eqz v1, :cond_8

    .line 20
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 21
    :cond_8
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_1
    const-wide/16 v7, 0x78

    cmp-long v1, v9, v7

    if-lez v1, :cond_a

    const-wide/16 v7, 0x0

    goto :goto_2

    :cond_a
    sub-long/2addr v7, v9

    .line 22
    :goto_2
    iget v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    if-eq v1, v4, :cond_1b

    if-eq v1, v3, :cond_1b

    if-eq v1, v15, :cond_10

    if-eq v1, v14, :cond_1b

    if-eq v1, v13, :cond_f

    const/16 v3, 0xbb

    if-eq v1, v3, :cond_e

    const/16 v3, 0xbd

    if-eq v1, v3, :cond_1b

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_d

    const/16 v2, 0xd4

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xac

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xad

    if-eq v1, v2, :cond_b

    const/16 v2, 0xb3

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xcf

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xd0

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xd6

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_1b

    packed-switch v1, :pswitch_data_0

    .line 23
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v7, v8, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    :pswitch_0
    const/4 v2, 0x0

    .line 25
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v1, :cond_1b

    iget-boolean v1, v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-nez v1, :cond_1b

    .line 26
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    .line 27
    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 28
    :cond_c
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    .line 29
    :cond_d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 30
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v1, :cond_1b

    iget-boolean v1, v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-nez v1, :cond_1b

    .line 31
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    .line 32
    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-eqz v1, :cond_1b

    .line 33
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getPressAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 34
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    :cond_f
    const/4 v2, 0x0

    .line 35
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    :cond_10
    const/4 v2, 0x0

    .line 36
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_4

    .line 37
    :cond_11
    sget-object v8, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "snap click action_down"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-boolean v7, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    .line 39
    iget v8, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    if-eq v8, v4, :cond_18

    if-eq v8, v3, :cond_18

    if-eq v8, v15, :cond_17

    if-eq v8, v14, :cond_18

    if-eq v8, v13, :cond_17

    const/16 v3, 0xbb

    if-eq v8, v3, :cond_16

    const/16 v3, 0xbd

    if-eq v8, v3, :cond_18

    const/16 v2, 0xcc

    if-eq v8, v2, :cond_15

    const/16 v2, 0xb3

    if-eq v8, v2, :cond_18

    const/16 v2, 0xb4

    if-eq v8, v2, :cond_18

    const/16 v2, 0xcf

    if-eq v8, v2, :cond_18

    const/16 v2, 0xd0

    if-eq v8, v2, :cond_18

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    packed-switch v8, :pswitch_data_3

    .line 40
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 42
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    goto/16 :goto_3

    .line 43
    :cond_12
    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-direct {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->onTouchDownDefaultHandler(I)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 44
    :pswitch_1
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v1, :cond_18

    iget-boolean v1, v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-nez v1, :cond_18

    .line 45
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v1, v8}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    goto/16 :goto_3

    .line 46
    :pswitch_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_13
    iget v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    .line 47
    invoke-direct {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->onTouchDownDefaultHandler(I)Z

    move-result v1

    if-nez v1, :cond_18

    return v7

    .line 48
    :pswitch_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooo0o()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    .line 49
    invoke-interface {v2}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canSnap()Z

    move-result v2

    if-nez v2, :cond_14

    .line 50
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    .line 51
    iput-boolean v6, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    goto :goto_3

    .line 52
    :cond_14
    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-direct {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->onTouchDownDefaultHandler(I)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 53
    :cond_15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 54
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v1, :cond_18

    iget-boolean v1, v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-nez v1, :cond_18

    .line 55
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    goto :goto_3

    .line 56
    :cond_16
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-eqz v1, :cond_18

    .line 57
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getPressAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 58
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    goto :goto_3

    .line 59
    :cond_17
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    .line 60
    :cond_18
    :goto_3
    :pswitch_4
    iput-boolean v7, v0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    .line 61
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapPrepare()V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    .line 63
    iget-wide v3, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_19

    .line 64
    iget-object v8, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    sub-long/2addr v1, v3

    invoke-interface {v8, v1, v2}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onTrackSnapTaken(J)V

    .line 65
    :cond_19
    iget-boolean v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    if-nez v1, :cond_1a

    .line 66
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    int-to-long v2, v2

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    :cond_1a
    iput-boolean v7, v0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    :cond_1b
    :goto_4
    :pswitch_5
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb7
        :pswitch_4
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public pauseRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->pauseRecording()V

    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isVoiceAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1
.end method

.method public prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public removeLastSegment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->removeLastSegment()V

    return-void
.end method

.method public resumeRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->resumeRecording()V

    return-void
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setDurationText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 3
    iget v0, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    .line 6
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPatternFromParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->resetRecordingState()V

    .line 9
    iget-boolean v0, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->needSnapButtonAnimation:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startModeChangeAnimation()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPatternFromParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    const/16 p1, 0x226

    .line 14
    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    return-void
.end method

.method public setSnapClickEnable(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClickEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    return-void
.end method

.method public setSpecificProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setSpecificProgress(I)V

    return-void
.end method

.method public setStopButtonEnable(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setStopButtonEnable(ZZ)V

    return-void
.end method

.method public showBottomPaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showBottomPaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showCirclePaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showCirclePaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showPaintCenterVVItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showPaintCenterVVItem()V

    return-void
.end method

.method public showRoundPaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showRoundPaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public skipDrawCenter(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->skipDrawCenter(Z)V

    :cond_0
    return-void
.end method

.method public startRing()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080903

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraSnapView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRingAnimation()V

    return-void
.end method

.method public startSpeech()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0803b7

    goto :goto_0

    :cond_0
    const v0, 0x7f0803b8

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showBitmap(Landroid/content/Context;I)V

    return-void
.end method

.method public stopRing()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->recycleBitmap()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->stopRingAnimation()V

    return-void
.end method

.method public stopSpeech(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->clearBitmap(Z)V

    :cond_0
    return-void
.end method

.method public triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xbd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 2
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecordAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    goto :goto_0

    .line 4
    :cond_1
    :pswitch_1
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecordAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSnapStatus(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setbitmap(I)V

    return-void
.end method
