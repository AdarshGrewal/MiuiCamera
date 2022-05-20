.class public Lcom/android/camera/ui/FaceView;
.super Lcom/android/camera/ui/FrameView;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FaceView$FaceAnimation;,
        Lcom/android/camera/ui/FaceView$FaceViewRectState;,
        Lcom/android/camera/ui/FaceView$PopType;
    }
.end annotation


# static fields
.field public static final AUTO_HIDE_TIME_DELAY:I = 0x7d0

.field public static final GENDER_FEMALE_RECT_COLOR:I = -0x11957f

.field public static final GENDER_MALE_RECT_COLOR:I = -0x90480c

.field public static final LATEST_FACE_NUM:I = 0x6

.field public static final MAGIC_MIRROR_RECT_COLOR:I = -0x47c9

.field public static final MAX_FACE_MOVE_DISTANCE:I = 0x78

.field public static final MAX_FACE_WIDTH_DISTANCE:I = 0x5a

.field public static final MAX_GENDER_FEMALE:F = 0.4f

.field public static final MIN_ANALYZE_PROB:F = 0.5f

.field public static final MIN_FACE_WIDTH:I = 0x29e

.field public static final MIN_GENDER_MALE:F = 0.6f

.field public static final MSG_ANNOUNCE_FACE_TIP:I = 0x4

.field public static final MSG_AUTOMATIC_HIDE_FACE:I = 0x1

.field public static final MSG_CANCEL_FACE_HIDE:I = 0x2

.field public static final MSG_SET_FACE_VISIBLE:I = 0x3

.field public static final SHOW_TYPE_GENDER_AGE:I = 0x1

.field public static final SHOW_TYPE_NORMAL:I = 0x0

.field public static final SHOW_TYPE_NULL:I = -0x1

.field public static final SHOW_TYPE_SCORE:I = 0x4

.field public static final SHOW_TYPE_SCORE_WINNER:I = 0x2

.field public static final STATE_FORCE_HIDE:I = 0x4

.field public static final STATE_HIDE:I = 0x2

.field public static final STATE_NORMAL:I = 0x1

.field public static final STATE_WAIT_FOR_HIDE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "FaceView"


# instance fields
.field public configuration:Landroid/content/res/Configuration;

.field public mActiveArraySize:Landroid/graphics/Rect;

.field public mAgeFemaleHonPadding:I

.field public mAgeMaleHonPadding:I

.field public mAgeVerPadding:I

.field public mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

.field public mCamera2TranslateMatrix:Landroid/graphics/Matrix;

.field public mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field public mCanvasMatrix:Landroid/graphics/Matrix;

.field public mCorrection:I

.field public mCurrentWaterMarkDataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field public mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

.field public mEffectRectPaint:Landroid/graphics/Paint;

.field public mEyeDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

.field public mEyeTrackOn:Z

.field public mFaceAgeFormat:Ljava/lang/String;

.field public mFaceAnimation:Lcom/android/camera/ui/FaceView$FaceAnimation;

.field public mFaceDataLock:Ljava/lang/Object;

.field public mFaceInfoNumberPaint:Landroid/graphics/Paint;

.field public mFaceInfoTextPaint:Landroid/graphics/Paint;

.field public mFacePopupBottom:I

.field public mFacePosition:Ljava/lang/String;

.field public mFaceRectHideAnimator:Landroid/animation/Animator;

.field public mFaceScoreInfoFormat:Ljava/lang/String;

.field public mFaceTipContentDescription:Ljava/lang/String;

.field public mFaces:[Lcom/android/camera2/CameraHardwareFace;

.field public mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field public mGap:I

.field public mHandler:Landroid/os/Handler;

.field public mIsCameraFaceDetectionAutoHidden:Z

.field public mIsUpdateFaceInfos:Z

.field public mLatestFaceIndex:I

.field public mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

.field public mLightingOn:Z

.field public mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

.field public mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field public mMatrix:Landroid/graphics/Matrix;

.field public mMirror:Z

.field public mNormalRectPaint:Landroid/graphics/Paint;

.field public mOrientation:I

.field public mPopBottomMargin:I

.field public mRect:Landroid/graphics/RectF;

.field public mRectState:I

.field public mScoreHonPadding:I

.field public mScoreVerPadding:I

.field public mSexFemaleIc:Landroid/graphics/drawable/Drawable;

.field public mSexMaleIc:Landroid/graphics/drawable/Drawable;

.field public mShadowRectPaint:Landroid/graphics/Paint;

.field public mShowGenderAndAge:Z

.field public mShowMagicMirror:Z

.field public mSkipDraw:Z

.field public mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

.field public mWaterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field public mWinnerIndex:I

.field public mZoomValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 3
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    .line 4
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    .line 5
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 6
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mFaceDataLock:Ljava/lang/Object;

    const/4 p2, 0x6

    new-array p2, p2, [Lcom/android/camera2/CameraHardwareFace;

    .line 7
    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    .line 10
    iput p2, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    .line 11
    new-instance p2, Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/FaceView$FaceAnimation;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mFaceAnimation:Lcom/android/camera/ui/FaceView$FaceAnimation;

    .line 12
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 13
    new-instance p2, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, p2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 16
    :cond_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mShadowRectPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mShadowRectPaint:Landroid/graphics/Paint;

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mShadowRectPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mShadowRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    move-object p2, p1

    check-cast p2, Lcom/android/camera/ActivityBase;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 31
    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    invoke-direct {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mEyeDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/FaceView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/ui/FaceView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/FaceView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->isEyeAsDrawTarget()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/FaceView;)Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mEyeDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/FaceView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mFaceTipContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mShadowRectPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private calcFacePos(Landroid/graphics/Rect;FF)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    cmpg-float v1, p2, v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v1, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    move p2, v2

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    move p2, v3

    goto :goto_0

    :cond_2
    move p2, v5

    .line 4
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    .line 5
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v5

    .line 7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private cancelHideAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private clearAttemptHideFaceRect()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private determineWatermarkType()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private drawEye(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->getEyeRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/android/camera/trackfocus/EyeInfo;->EMPTY_EYE_RECT:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FaceView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    const-string v0, "FaceView"

    const-string v1, "drawEye: no eye rect data!! "

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEyeDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->setMiddle(FFF)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEyeDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawFaceInfoText(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 2
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d+\\.?\\d*"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v3, p3

    div-float v2, v1, v2

    add-float/2addr v3, v2

    int-to-float v2, p4

    .line 6
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v3, p3

    div-float v2, v1, v2

    add-float/2addr v3, v2

    int-to-float v2, p4

    .line 8
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    int-to-float p3, p3

    add-float/2addr p3, v1

    float-to-int p3, p3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 1
    iget-object v7, v0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    .line 2
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\d+\\.?\\d*"

    .line 4
    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5
    iget-object v11, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    goto :goto_1

    .line 6
    :cond_0
    iget-object v11, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    :goto_1
    add-float/2addr v9, v10

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v6

    iget v10, v0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int/2addr v7, v10

    int-to-float v7, v7

    add-float/2addr v7, v9

    int-to-float v10, v6

    add-float/2addr v7, v10

    float-to-int v7, v7

    move/from16 v10, p7

    int-to-float v10, v10

    const v11, 0x40666666    # 3.6f

    mul-float/2addr v11, v10

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 9
    new-instance v12, Landroid/graphics/Rect;

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    float-to-int v13, v13

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v13, v7

    iget v14, v2, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    sub-int/2addr v14, v11

    sub-int v14, v14, p9

    sub-int v14, v14, p8

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v11, v7

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    sub-int v2, v2, p9

    invoke-direct {v12, v13, v14, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v4, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iget v4, v12, Landroid/graphics/Rect;->left:I

    add-int v7, v4, v6

    iget v11, v12, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    const v13, 0x3fe66666    # 1.8f

    mul-float/2addr v10, v13

    add-float/2addr v11, v10

    iget v13, v0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    int-to-float v13, v13

    sub-float/2addr v11, v13

    float-to-int v11, v11

    add-int/2addr v4, v6

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, v12, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v10

    iget v10, v0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    int-to-float v10, v10

    sub-float/2addr v6, v10

    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    float-to-int v6, v6

    .line 18
    invoke-virtual {v2, v7, v11, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 20
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v3, v9, v8

    if-eqz v3, :cond_3

    .line 21
    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 22
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v6, v0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int/2addr v4, v6

    .line 23
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v6, v2

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    .line 24
    invoke-direct {p0, v1, v5, v4, v6}, Lcom/android/camera/ui/FaceView;->drawFaceInfoText(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method private drawFaceRecognitionRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;F)V
    .locals 34

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    move-object/from16 v7, p5

    .line 1
    iget v8, v0, Landroid/graphics/RectF;->top:F

    .line 2
    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 3
    iget v10, v0, Landroid/graphics/RectF;->right:F

    .line 4
    iget v11, v0, Landroid/graphics/RectF;->left:F

    const/16 v12, 0x8

    new-array v0, v12, [F

    const/4 v13, 0x0

    aput v11, v0, v13

    add-float v14, v8, p3

    const/4 v15, 0x1

    aput v14, v0, v15

    const/16 v16, 0x2

    aput v11, v0, v16

    add-float v1, v8, p4

    sub-float v17, v1, p6

    const/16 v18, 0x3

    aput v17, v0, v18

    add-float v1, v11, p4

    sub-float v19, v1, p6

    const/16 v20, 0x4

    aput v19, v0, v20

    const/16 v21, 0x5

    aput v8, v0, v21

    add-float v22, v11, p3

    const/16 v23, 0x6

    aput v22, v0, v23

    const/16 v24, 0x7

    aput v8, v0, v24

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v25, p4, v2

    add-float v5, v11, v25

    add-float v4, v8, v25

    invoke-direct {v1, v11, v8, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v27, v4

    move/from16 v4, v26

    move/from16 v28, v5

    move-object/from16 v5, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-array v0, v12, [F

    aput v10, v0, v13

    sub-float v26, v9, p3

    aput v26, v0, v15

    aput v10, v0, v16

    sub-float v1, v9, p4

    add-float v29, v1, p6

    aput v29, v0, v18

    sub-float v1, v10, p4

    add-float v30, v1, p6

    aput v30, v0, v20

    aput v9, v0, v21

    sub-float v31, v10, p3

    aput v31, v0, v23

    aput v9, v0, v24

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    sub-float v5, v10, v25

    sub-float v4, v9, v25

    invoke-direct {v1, v5, v4, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v32, v4

    move/from16 v4, v25

    move/from16 v33, v5

    move-object/from16 v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-array v0, v12, [F

    aput v11, v0, v13

    aput v26, v0, v15

    aput v11, v0, v16

    aput v29, v0, v18

    aput v19, v0, v20

    aput v9, v0, v21

    aput v22, v0, v23

    aput v9, v0, v24

    .line 11
    new-instance v1, Landroid/graphics/RectF;

    move/from16 v2, v28

    move/from16 v3, v32

    invoke-direct {v1, v11, v3, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    move-object/from16 v0, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-array v0, v12, [F

    aput v10, v0, v13

    aput v14, v0, v15

    aput v10, v0, v16

    aput v17, v0, v18

    aput v30, v0, v20

    aput v8, v0, v21

    aput v31, v0, v23

    aput v8, v0, v24

    .line 14
    new-instance v1, Landroid/graphics/RectF;

    move/from16 v2, v27

    move/from16 v3, v33

    invoke-direct {v1, v3, v8, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 15
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/android/camera2/CameraHardwareFace;)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move/from16 v0, p3

    move-object/from16 v1, p4

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    const v3, 0x3c1374bc    # 0.009f

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_6

    .line 1
    :cond_0
    iget v0, v1, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, v7, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    const/16 v1, -0x47c9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v3

    .line 4
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v3

    iget-object v2, v7, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 6
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera2/CameraHardwareFace;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    iget v0, v1, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v0, v7, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_5

    const v1, -0x11957f

    goto :goto_1

    :cond_5
    const v1, -0x90480c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v3

    .line 10
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v3

    iget-object v2, v7, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 12
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070297

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070299

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07029b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07029a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070296

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 17
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f070298

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_8

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    move v11, v0

    move v10, v2

    move v12, v4

    move v4, v1

    goto :goto_5

    .line 18
    :cond_8
    :goto_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    .line 19
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    goto :goto_4

    .line 20
    :cond_9
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    :goto_4
    div-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v10, v0

    mul-double/2addr v10, v5

    double-to-float v0, v10

    float-to-double v10, v1

    mul-double/2addr v10, v5

    double-to-float v1, v10

    float-to-double v10, v2

    mul-double/2addr v10, v5

    double-to-float v2, v10

    float-to-double v10, v3

    mul-double/2addr v10, v5

    double-to-float v3, v10

    float-to-double v10, v4

    mul-double/2addr v10, v5

    double-to-float v4, v10

    goto :goto_2

    .line 21
    :goto_5
    iget-object v0, v7, Lcom/android/camera/ui/FaceView;->mShadowRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget-object v5, v7, Lcom/android/camera/ui/FaceView;->mShadowRectPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v4

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/FaceView;->drawFaceRecognitionRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;F)V

    .line 23
    iget-object v0, v7, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object v5, v7, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/FaceView;->drawFaceRecognitionRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;F)V

    :goto_6
    return-void
.end method

.method private getAgeInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/camera2/CameraHardwareFace;->ageMale:F

    float-to-int v0, v0

    .line 2
    iget v1, p1, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 3
    iget p1, p1, Lcom/android/camera2/CameraHardwareFace;->ageFemale:F

    float-to-int v0, p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceAgeFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEyeRect()Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    iget-object v1, v1, Lcom/android/camera/trackfocus/EyeInfo;->rect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    iget-object v1, v1, Lcom/android/camera/trackfocus/EyeInfo;->rect:Landroid/graphics/Rect;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera/trackfocus/EyeInfo;->EMPTY_EYE_RECT:Landroid/graphics/Rect;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFacePos(Lcom/android/camera2/CameraHardwareFace;I)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getReferenceLine()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 7
    iget-object p1, p1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/ui/FaceView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    const/4 p1, 0x0

    .line 8
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x6

    .line 10
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget v4, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v4, :cond_3

    .line 12
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v6

    div-float/2addr v4, v5

    .line 13
    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v1

    div-float/2addr v6, v5

    add-int v1, p1, v0

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 14
    invoke-virtual {v3, v2, v1, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 15
    invoke-direct {p0, v3, v4, v6}, Lcom/android/camera/ui/FaceView;->calcFacePos(Landroid/graphics/Rect;FF)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0x5a

    if-ne v4, v6, :cond_4

    .line 16
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    add-float/2addr v4, v7

    .line 17
    iget v7, v6, Landroid/graphics/RectF;->top:F

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v6

    div-float/2addr v7, v5

    .line 18
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v5

    add-int/2addr v5, p1

    iget v6, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v8, v0, 0x2

    add-int/2addr v6, v8

    sub-int/2addr v5, v6

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v6

    add-int/2addr p1, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v3, v5, v2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    invoke-direct {p0, v3, v4, v7}, Lcom/android/camera/ui/FaceView;->calcFacePos(Landroid/graphics/Rect;FF)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/16 v6, 0xb4

    if-ne v4, v6, :cond_5

    .line 20
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v6

    div-float/2addr v7, v5

    add-float/2addr v4, v7

    .line 21
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v7

    div-float/2addr v8, v5

    add-float/2addr v6, v8

    .line 22
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v5

    iget v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p1

    mul-int/lit8 v8, v0, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    mul-int/lit8 v7, v2, 0x2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v8

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    sub-int/2addr v8, p1

    invoke-virtual {v3, v2, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 23
    invoke-direct {p0, v3, v4, v6}, Lcom/android/camera/ui/FaceView;->calcFacePos(Landroid/graphics/Rect;FF)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/16 v1, 0x10e

    if-ne v4, v1, :cond_6

    .line 24
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    div-float/2addr v4, v5

    .line 25
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->top:F

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v6

    div-float/2addr v7, v5

    add-float/2addr v1, v7

    add-int v5, p1, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    mul-int/lit8 v0, v2, 0x2

    .line 26
    invoke-virtual {v3, v5, v2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 27
    invoke-direct {p0, v3, v4, v1}, Lcom/android/camera/ui/FaceView;->calcFacePos(Landroid/graphics/Rect;FF)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string p1, ""

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFacePosition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 29
    invoke-direct {p0, p2, p1}, Lcom/android/camera/ui/FaceView;->setContentDescription(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private getPopShowType([Lcom/android/camera2/CameraHardwareFace;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 1
    array-length v2, p1

    if-lez v2, :cond_6

    .line 2
    iget-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    .line 3
    iput v2, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    move v3, v0

    .line 4
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 5
    aget-object v4, p1, v0

    .line 6
    iget v4, v4, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 7
    iget v5, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-eq v5, v2, :cond_0

    aget-object v5, p1, v5

    iget v5, v5, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 8
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-le v3, v1, :cond_3

    const/4 p1, 0x2

    :goto_1
    move v0, p1

    goto :goto_2

    :cond_3
    if-lez v3, :cond_4

    const/4 p1, 0x4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    .line 9
    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-eqz p1, :cond_6

    move v0, v1

    :cond_6
    :goto_2
    return v0
.end method

.method private getScoreInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceScoreInfoFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleEyeData([Lcom/android/camera2/CameraHardwareFace;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFaces: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", frameType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getInstance()Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getFocusFrameType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rectState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rect alpha"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FaceView"

    .line 5
    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 6
    array-length v3, p1

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    if-eq v3, v1, :cond_1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v3, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getInstance()Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getFocusFrameType()I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v1, :cond_6

    const/4 v1, 0x2

    if-eq v3, v1, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    const-string/jumbo v0, "setFaces: make eye visible"

    .line 8
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FaceView;->onFaceInnerUiChanged(Lcom/android/camera/trackfocus/EyeInfo;)V

    goto :goto_2

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    iget v0, v0, Lcom/android/camera/trackfocus/EyeInfo;->eyePos:I

    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    iget v1, v1, Lcom/android/camera/trackfocus/EyeInfo;->eyePos:I

    if-eq v0, v1, :cond_9

    const-string/jumbo v0, "setFaces: switch eye"

    .line 11
    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FaceView;->onFaceInnerUiChanged(Lcom/android/camera/trackfocus/EyeInfo;)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 13
    sget-object p1, Lcom/android/camera/trackfocus/EyeInfo;->EMPTY_EYE_RECT:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    iget-object v0, v0, Lcom/android/camera/trackfocus/EyeInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string/jumbo p1, "setFaces: eye 2 face"

    .line 14
    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->clearAttemptHideFaceRect()V

    .line 16
    new-instance p1, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOO0O;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOO0O;-><init>(Lcom/android/camera/ui/FaceView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    if-nez p1, :cond_9

    const-string/jumbo p1, "setFaces: make face visible"

    .line 18
    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    goto :goto_2

    .line 20
    :cond_8
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mEyeDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->setVisible(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_9
    :goto_2
    return-void
.end method

.method private initFaceInfoStyle()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "(\\D+)|(\\d+\\.?\\d*)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    const v1, 0x7f1203bb

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceAgeFormat:Ljava/lang/String;

    const v1, 0x7f1203d2

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceScoreInfoFormat:Ljava/lang/String;

    const v1, 0x7f080573

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f080185

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0803b3

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0803b2

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    .line 11
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f07028f

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 15
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 16
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 17
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 18
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    .line 19
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 20
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 22
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    const v3, 0x3f947ae1    # 1.16f

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_2
    const v1, 0x7f08056e

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f080200

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f070294

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    const v1, 0x7f070293

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    const v1, 0x7f07028d

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    const v1, 0x7f070295

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    const v1, 0x7f070291

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mScoreHonPadding:I

    const v1, 0x7f070292

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mScoreVerPadding:I

    const v1, 0x7f070290

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    const v1, 0x7f07028e

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    return-void
.end method

.method private isEyeAsDrawTarget()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackEyeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getInstance()Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getFocusFrameType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidAGInfo(Lcom/android/camera2/CameraHardwareFace;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/camera2/CameraHardwareFace;->prob:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    iget p1, p1, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const v0, 0x3f19999a    # 0.6f

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onFaceInnerUiChanged(Lcom/android/camera/trackfocus/EyeInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->clearAttemptHideFaceRect()V

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO;-><init>(Lcom/android/camera/ui/FaceView;Lcom/android/camera/trackfocus/EyeInfo;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performMatrix(Landroid/graphics/Matrix;ZIFFII)V
    .locals 5

    const/16 v0, 0xb4

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p1, p2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    neg-int p2, p3

    int-to-float p2, p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    if-eq p3, v2, :cond_3

    if-ne p3, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    if-ne p3, v0, :cond_1

    neg-int p2, p6

    int-to-float p2, p2

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    if-ne p3, v0, :cond_2

    int-to-float v3, p7

    .line 4
    :cond_2
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p1, p5, p4}, Landroid/graphics/Matrix;->postScale(FF)Z

    if-ne p3, v2, :cond_4

    neg-int p2, p7

    int-to-float p2, p2

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    if-ne p3, v1, :cond_5

    int-to-float v3, p6

    .line 6
    :cond_5
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6

    :cond_6
    int-to-float p2, p3

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    if-eq p3, v2, :cond_a

    if-ne p3, v1, :cond_7

    goto :goto_4

    .line 8
    :cond_7
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    if-ne p3, v0, :cond_8

    int-to-float p2, p6

    goto :goto_3

    :cond_8
    move p2, v3

    :goto_3
    if-ne p3, v0, :cond_9

    int-to-float v3, p7

    .line 9
    :cond_9
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6

    .line 10
    :cond_a
    :goto_4
    invoke-virtual {p1, p5, p4}, Landroid/graphics/Matrix;->postScale(FF)Z

    if-ne p3, v2, :cond_b

    int-to-float p2, p7

    goto :goto_5

    :cond_b
    move p2, v3

    :goto_5
    if-ne p3, v1, :cond_c

    int-to-float v3, p6

    .line 11
    :cond_c
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_6
    return-void
.end method

.method private prepareMatrix()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mZoomValue:F

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->scaleCamera2Matrix(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    .line 5
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v4, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v5, p0, Lcom/android/camera/ui/FrameView;->mCameraDisplayOrientation:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v6

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v7

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 9
    invoke-static/range {v3 .. v11}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIIIII)V

    .line 10
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mLightingOn:Z

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_0
    return-void
.end method

.method private setContentDescription(ILjava/lang/String;)V
    .locals 7

    .line 1
    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mFacePosition:Ljava/lang/String;

    if-lez p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100009

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 5
    invoke-virtual {v0, v2, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceTipContentDescription:Ljava/lang/String;

    if-eqz p2, :cond_1

    if-ne p1, v3, :cond_1

    const/4 p1, -0x1

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_0
    const-string v0, "3_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :pswitch_1
    const-string v0, "3_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :pswitch_2
    const-string v0, "3_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :pswitch_3
    const-string v0, "2_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :pswitch_4
    const-string v0, "2_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_1

    :pswitch_5
    const-string v0, "2_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :pswitch_6
    const-string v0, "1_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :pswitch_7
    const-string v0, "1_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :pswitch_8
    const-string v0, "1_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    :goto_0
    move v3, p1

    :goto_1
    packed-switch v3, :pswitch_data_3

    goto :goto_2

    :pswitch_9
    const v6, 0x7f120069

    goto :goto_2

    :pswitch_a
    const v6, 0x7f120063

    goto :goto_2

    :pswitch_b
    const v6, 0x7f120065

    goto :goto_2

    :pswitch_c
    const v6, 0x7f120068

    goto :goto_2

    :pswitch_d
    const v6, 0x7f120067

    goto :goto_2

    :pswitch_e
    const v6, 0x7f120064

    goto :goto_2

    :pswitch_f
    const v6, 0x7f12006a

    goto :goto_2

    :pswitch_10
    const v6, 0x7f12006b

    goto :goto_2

    :pswitch_11
    const v6, 0x7f120066

    :goto_2
    if-lez v6, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mFaceTipContentDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceTipContentDescription:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc3a3
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc764
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcb25
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private setCurrentFaceInfos(Landroid/graphics/RectF;Ljava/lang/String;III)V
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    if-nez v0, :cond_0

    const-string p1, "FaceView"

    const-string/jumbo p2, "setCurrentFaceInfos@2: updateInfo=false"

    .line 15
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    .line 18
    :cond_1
    new-instance v0, Lcom/android/camera/watermark/WaterMarkData;

    invoke-direct {v0}, Lcom/android/camera/watermark/WaterMarkData;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/camera/watermark/WaterMarkData;->setFaceRectF(Landroid/graphics/RectF;)V

    .line 20
    invoke-virtual {v0, p2}, Lcom/android/camera/watermark/WaterMarkData;->setInfo(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p3}, Lcom/android/camera/watermark/WaterMarkData;->setFaceViewWidth(I)V

    .line 22
    invoke-virtual {v0, p4}, Lcom/android/camera/watermark/WaterMarkData;->setFaceViewHeight(I)V

    .line 23
    invoke-virtual {v0, p5}, Lcom/android/camera/watermark/WaterMarkData;->setOrientation(I)V

    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->determineWatermarkType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/watermark/WaterMarkData;->setWatermarkType(I)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private setCurrentFaceInfos(Landroid/graphics/RectF;ZLjava/lang/String;III)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    if-nez v0, :cond_0

    const-string p1, "FaceView"

    const-string/jumbo p2, "setCurrentFaceInfos@1: updateInfo=false"

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    .line 5
    :cond_1
    new-instance v0, Lcom/android/camera/watermark/WaterMarkData;

    invoke-direct {v0}, Lcom/android/camera/watermark/WaterMarkData;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/camera/watermark/WaterMarkData;->setFaceRectF(Landroid/graphics/RectF;)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/camera/watermark/WaterMarkData;->setFemale(Z)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/android/camera/watermark/WaterMarkData;->setInfo(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Lcom/android/camera/watermark/WaterMarkData;->setFaceViewWidth(I)V

    .line 10
    invoke-virtual {v0, p5}, Lcom/android/camera/watermark/WaterMarkData;->setFaceViewHeight(I)V

    .line 11
    invoke-virtual {v0, p6}, Lcom/android/camera/watermark/WaterMarkData;->setOrientation(I)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->determineWatermarkType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/watermark/WaterMarkData;->setWatermarkType(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setToVisible()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showNormalFaceRectImmediately()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateFaceInfos()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    if-nez v0, :cond_0

    const-string v0, "FaceView"

    const-string/jumbo v1, "updateFaceInfos: false"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method private updateLatestFaces()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz v3, :cond_4

    .line 3
    array-length v4, v3

    if-ge v4, v2, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    aget-object v1, v3, v1

    .line 5
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 6
    aget-object v4, v3, v2

    iget-object v4, v4, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, v3, v2

    iget-object v5, v5, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, v1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    if-le v4, v6, :cond_2

    .line 7
    aget-object v1, v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    aput-object v1, v2, v0

    goto :goto_3

    .line 9
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 10
    :goto_3
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceAnimation:Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView$FaceAnimation;->startFaceAnimWithAssociatedFrame()V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/trackfocus/EyeInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEyeDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    iget-object p1, p1, Lcom/android/camera/trackfocus/EyeInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->startShowAnim(Landroid/view/View;I)V

    return-void
.end method

.method public attemptHideFaceRect(J)V
    .locals 2

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceDataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearFaceFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    return-void
.end method

.method public clearPreviousFaces()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    .line 3
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public faceExisted()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    if-gez v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v3, v3

    add-int/2addr v0, v3

    .line 3
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public faceExists()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forceHideRect()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    iput v1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x8

    const/16 v1, 0xc8

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceAnimation:Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-static {v0}, Lcom/android/camera/ui/FaceView$FaceAnimation;->access$500(Lcom/android/camera/ui/FaceView$FaceAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceAnimation:Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-static {v0}, Lcom/android/camera/ui/FaceView$FaceAnimation;->access$500(Lcom/android/camera/ui/FaceView$FaceAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceAnimation:Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-static {v0}, Lcom/android/camera/ui/FaceView$FaceAnimation;->access$500(Lcom/android/camera/ui/FaceView$FaceAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->isEyeAsDrawTarget()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEyeDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->startAlphaAnim(Landroid/view/View;ZJ)V

    :cond_3
    return-void
.end method

.method public getFaceWaterMarkInfos()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz v0, :cond_8

    .line 2
    array-length v1, v0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FaceView;->getPopShowType([Lcom/android/camera2/CameraHardwareFace;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 5
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/ui/FaceView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v4, v4, v2

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera2/CameraHardwareFace;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 9
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const v5, 0x3ecccccd    # 0.4f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v1

    .line 10
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v8

    .line 11
    new-instance v6, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v9, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v6, v4, v5, v9, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    move-object v5, p0

    .line 13
    invoke-direct/range {v5 .. v11}, Lcom/android/camera/ui/FaceView;->setCurrentFaceInfos(Landroid/graphics/RectF;ZLjava/lang/String;III)V

    :cond_3
    :goto_2
    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    .line 14
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    new-instance v5, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v4, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 16
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/FaceView;->setCurrentFaceInfos(Landroid/graphics/RectF;Ljava/lang/String;III)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 18
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateFaceInfos()V

    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    return-object v0

    :cond_8
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFaces()[Lcom/android/camera2/CameraHardwareFace;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    return-object v0
.end method

.method public getFocusRect()Landroid/graphics/RectF;
    .locals 14

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    if-ltz v2, :cond_0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 5
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 6
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/camera/ui/FaceView;->mZoomValue:F

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->scaleCamera2Matrix(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    .line 7
    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v6, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v7, p0, Lcom/android/camera/ui/FrameView;->mCameraDisplayOrientation:I

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v9

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v10, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v11, v1, 0x2

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 11
    invoke-static/range {v5 .. v13}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIIIII)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 14
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 15
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz v0, :cond_2

    .line 2
    array-length v1, v0

    if-lez v1, :cond_2

    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    array-length v2, v0

    new-array v10, v2, [Landroid/graphics/RectF;

    .line 5
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v3

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    .line 9
    iget-boolean v5, p0, Lcom/android/camera/ui/FaceView;->mLightingOn:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    if-eqz v5, :cond_0

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    move v8, p1

    move v9, v4

    int-to-float p1, v8

    int-to-float v2, v2

    div-float v6, p1, v2

    int-to-float p1, v9

    int-to-float v2, v3

    div-float v7, p1, v2

    .line 10
    iget-boolean v4, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/FaceView;->performMatrix(Landroid/graphics/Matrix;ZIFFII)V

    const/4 p1, 0x0

    .line 11
    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_1

    .line 12
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v10, p1

    .line 13
    aget-object v2, v10, p1

    aget-object v3, v0, p1

    iget-object v3, v3, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 14
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    aget-object v3, v10, p1

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 15
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    aget-object v3, v10, p1

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 16
    aget-object v2, v10, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v10

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public isFaceStable()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v9, v0, v3

    if-nez v9, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x3

    if-lt v4, v9, :cond_1

    return v2

    .line 2
    :cond_0
    iget-object v9, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 3
    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v9

    add-int/2addr v6, v10

    add-int/2addr v7, v11

    add-int/2addr v8, v9

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v0, v0

    sub-int/2addr v0, v4

    .line 5
    div-int/2addr v5, v0

    .line 6
    div-int/2addr v6, v0

    .line 7
    div-int/2addr v7, v0

    .line 8
    div-int/2addr v8, v0

    .line 9
    div-int/lit8 v0, v5, 0x3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v9, v1, v4

    if-nez v9, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    iget-object v10, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->right:I

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v10

    sub-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v0, :cond_6

    iget-object v10, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v7

    .line 12
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x78

    if-gt v10, v11, :cond_6

    iget-object v9, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v8

    .line 13
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v11, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return v2

    :cond_7
    const/16 v0, 0x29e

    const/4 v1, 0x1

    if-gt v5, v0, :cond_8

    if-le v6, v0, :cond_9

    :cond_8
    move v2, v1

    .line 14
    :cond_9
    iput-boolean v2, p0, Lcom/android/camera/ui/FrameView;->mIsBigEnoughRect:Z

    return v1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1
    iget-boolean v0, v10, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v0

    iput-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz v0, :cond_11

    .line 3
    array-length v0, v0

    if-eqz v0, :cond_11

    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_11

    iget-boolean v0, v10, Lcom/android/camera/ui/FrameView;->mPause:Z

    if-eqz v0, :cond_1

    goto/16 :goto_8

    .line 4
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-boolean v0, v10, Lcom/android/camera/ui/FaceView;->mLightingOn:Z

    if-nez v0, :cond_2

    .line 6
    iget v0, v10, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 7
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->getEyeRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->isEyeAsDrawTarget()Z

    move-result v1

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    sget-object v1, Lcom/android/camera/trackfocus/EyeInfo;->EMPTY_EYE_RECT:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget v0, v10, Lcom/android/camera/ui/FaceView;->mRectState:I

    if-eq v0, v13, :cond_3

    if-eq v0, v12, :cond_3

    .line 11
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/ui/FaceView;->drawEye(Landroid/graphics/Canvas;)V

    :cond_3
    const-string v0, "FaceView"

    const-string/jumbo v1, "onDraw eye: done"

    .line 12
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_4
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->getPopShowType([Lcom/android/camera2/CameraHardwareFace;)I

    move-result v14

    const/4 v15, 0x0

    move v9, v15

    .line 14
    :goto_0
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v1, v0

    if-ge v9, v1, :cond_10

    .line 15
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 16
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v0, v1}, Lcom/android/camera/ui/FaceView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 17
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mFaceAnimation:Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView$FaceAnimation;->isAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 19
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFaceAnimation:Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView$FaceAnimation;->getShowFaceScaleRatio()F

    move-result v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/render/RectUtil;->centerScaleF(Landroid/graphics/RectF;F)V

    .line 21
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v9

    invoke-direct {v10, v11, v0, v14, v1}, Lcom/android/camera/ui/FaceView;->drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/android/camera2/CameraHardwareFace;)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v9

    invoke-direct {v10, v11, v0, v14, v1}, Lcom/android/camera/ui/FaceView;->drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/android/camera2/CameraHardwareFace;)V

    :goto_1
    const/4 v0, 0x1

    if-eq v14, v0, :cond_a

    const/4 v0, 0x0

    if-eq v14, v13, :cond_8

    if-eq v14, v12, :cond_6

    :goto_2
    move/from16 v17, v9

    goto/16 :goto_7

    .line 23
    :cond_6
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v9

    iget v1, v1, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_7

    goto :goto_2

    .line 24
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 25
    iget-object v2, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v3, v10, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    iget-object v4, v10, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v9

    .line 26
    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v5

    iget v6, v10, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    iget v7, v10, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v8, v10, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v1, v10, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object/from16 v1, p1

    move/from16 v17, v9

    move/from16 v9, v16

    .line 27
    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto/16 :goto_7

    :cond_8
    move/from16 v17, v9

    .line 28
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v17

    iget v1, v1, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_9

    goto/16 :goto_7

    .line 29
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 30
    iget-object v2, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v3, v10, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    iget-object v4, v10, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v17

    .line 31
    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v5

    iget v6, v10, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    iget v7, v10, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v8, v10, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v9, v10, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 32
    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto :goto_7

    :cond_a
    move/from16 v17, v9

    .line 33
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v17

    invoke-direct {v10, v1}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera2/CameraHardwareFace;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 35
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v17

    iget v1, v1, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    goto :goto_3

    :cond_b
    move v0, v15

    .line 36
    :goto_3
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v17

    invoke-direct {v10, v1}, Lcom/android/camera/ui/FaceView;->getAgeInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v5

    .line 37
    iget-object v2, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_c

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_c
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    :goto_4
    move-object v3, v1

    if-eqz v0, :cond_d

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_d
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    :goto_5
    move-object v4, v1

    if-eqz v0, :cond_e

    iget v0, v10, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    goto :goto_6

    :cond_e
    iget v0, v10, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    :goto_6
    move v6, v0

    iget v7, v10, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v8, v10, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v9, v10, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    :cond_f
    :goto_7
    add-int/lit8 v9, v17, 0x1

    goto/16 :goto_0

    .line 38
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    :goto_8
    return-void
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->pause()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    return-void
.end method

.method public reShowFaceRect()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->resume()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraFaceDetectionAutoHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsCameraFaceDetectionAutoHidden:Z

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackEye()Lcom/android/camera/trackfocus/ComponentConfigTrackEye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->isTrackEyeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mEyeTrackOn:Z

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mCameraDisplayOrientation:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCameraDisplayOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFaceRectVisible(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFaceRectVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mShadowRectPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    const/16 v0, 0x26

    :cond_1
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    .line 6
    new-instance v0, Lcom/android/camera/ui/FaceView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FaceView$2;-><init>(Lcom/android/camera/ui/FaceView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setFaces([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Num of faces = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FaceView"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    array-length v0, p1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    array-length v2, v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v1

    .line 6
    :goto_3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_7

    if-ne v0, v3, :cond_5

    .line 7
    aget-object v5, p1, v1

    invoke-direct {p0, v5, v0}, Lcom/android/camera/ui/FaceView;->getFacePos(Lcom/android/camera2/CameraHardwareFace;I)V

    goto :goto_4

    :cond_5
    if-nez v0, :cond_6

    .line 8
    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    const-string v5, ""

    .line 9
    invoke-direct {p0, v0, v5}, Lcom/android/camera/ui/FaceView;->setContentDescription(ILjava/lang/String;)V

    :cond_7
    :goto_4
    if-nez v0, :cond_8

    if-nez v2, :cond_8

    return v3

    .line 10
    :cond_8
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    if-eq v2, v6, :cond_10

    iget-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    if-eqz v2, :cond_9

    goto/16 :goto_7

    .line 11
    :cond_9
    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 12
    invoke-static {p2, p3}, Lcom/android/camera/HybridZoomingSystem;->toZoomRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mZoomValue:F

    .line 13
    iget-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mEyeTrackOn:Z

    if-eqz v2, :cond_a

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FaceView;->handleEyeData([Lcom/android/camera2/CameraHardwareFace;)V

    .line 15
    :cond_a
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 16
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    const-string p1, "FaceView"

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFaces: activeArraySize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cropRegion="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mZoomValue="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/ui/FaceView;->mZoomValue:F

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " face="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length p2, p2

    if-eqz p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object p3, p3, v1

    iget-object p3, p3, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object p3, p3, v1

    iget-object p3, p3, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_b
    const-string p2, "null"

    :goto_5
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateLatestFaces()V

    .line 22
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->prepareMatrix()V

    .line 23
    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_c

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_c
    if-eqz v4, :cond_d

    if-lez v0, :cond_d

    .line 25
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    .line 26
    :cond_d
    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mIsCameraFaceDetectionAutoHidden:Z

    if-eqz p1, :cond_f

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 28
    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    if-eq p1, p2, :cond_f

    const/4 p2, 0x3

    if-eq p1, p2, :cond_f

    const-wide/16 p1, 0x7d0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/FaceView;->attemptHideFaceRect(J)V

    goto :goto_6

    .line 30
    :cond_e
    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    if-eq p1, v3, :cond_f

    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->clearAttemptHideFaceRect()V

    :cond_f
    :goto_6
    return v3

    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_10
    :goto_7
    return v3
.end method

.method public setLightingOn(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mLightingOn:Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLightingOn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mLightingOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMirror(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceView;->setShowMagicMirror(Z)V

    :cond_2
    return-void
.end method

.method public setShowMagicMirror(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Z)V

    :cond_2
    return-void
.end method

.method public setShutterStatus(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    if-eq v0, p1, :cond_2

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setShutterStatus: updateInfo="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setSkipDraw(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    return-void
.end method

.method public showFail()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showStart()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showSuccess()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method
