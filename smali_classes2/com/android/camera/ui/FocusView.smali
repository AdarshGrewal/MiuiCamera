.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$ExposureViewListener;,
        Lcom/android/camera/ui/FocusView$SetPositionType;,
        Lcom/android/camera/ui/FocusView$CenterFlag;,
        Lcom/android/camera/ui/FocusView$CursorState;,
        Lcom/android/camera/ui/FocusView$ViewState;
    }
.end annotation


# static fields
.field public static final ALPHA_TIMEOUT:I = 0x7d0

.field public static final CENTER_CAPTURE:I = 0x2

.field public static final CENTER_CIRCLE:I = 0x1

.field public static final CENTER_LOCK:I = 0x5

.field public static final CENTER_MOON:I = 0x4

.field public static final CENTER_NONE:I = 0x0

.field public static final CENTER_SUN:I = 0x3

.field public static final CENTER_SUN_2:I = 0x6

.field public static final CURSOR_GATHER:I = 0x1

.field public static final CURSOR_NORMAL:I = 0x0

.field public static final CURSOR_SLIDE_BACK:I = 0x2

.field public static final DISAPPEAR_TIME:I = 0x5dc

.field public static final DRAG_MODE_ADJUST_EV:I = 0x1

.field public static final DRAG_MODE_MOVE_EXPOSURE:I = 0x3

.field public static final DRAG_MODE_MOVE_FOCUS:I = 0x2

.field public static final DRAG_MODE_NONE:I = 0x0

.field public static final END_DISAPPEAR_TIMEOUT:I = 0x320

.field public static final GAP_NUM:F

.field public static final MAX_SLIDE_DISTANCE:I

.field public static final MODE_AUTO:I = 0x0

.field public static final MODE_FLAG_ANY:I = 0x0

.field public static final MODE_FLAG_EXPOSURE:I = 0x2

.field public static final MODE_FLAG_FOCUS:I = 0x1

.field public static final MODE_MANUAL_COMBO:I = 0x1

.field public static final MODE_MANUAL_METERING_ONLY:I = 0x3

.field public static final MODE_MANUAL_SPLIT:I = 0x2

.field public static final MSG_ALPHA:I = 0x8

.field public static final MSG_ANIMATE_EV_CENTER:I = 0x7

.field public static final MSG_FINISH_DISAPPEAR:I = 0x5

.field public static final MSG_RESET_CENTER:I = 0x6

.field public static final MSG_RESET_VIEW:I = 0x9

.field public static final MSG_START_DISAPPEAR:I = 0x4

.field public static final MSG_START_SHOW:I = 0xa

.field public static final NORMAL_CAPTURE:I = 0x0

.field public static final NORMAL_EV:I = 0x1

.field public static final SET_BY_AUTO_DISAPPEAR:I = 0x6

.field public static final SET_BY_AUTO_FOCUS_MOVING:I = 0x3

.field public static final SET_BY_CANCEL_PREVIOUS_FOCUS:I = 0x2

.field public static final SET_BY_CLEAR_VIEW:I = 0x7

.field public static final SET_BY_DEVICE_KEEP_MOVING:I = 0x4

.field public static final SET_BY_INITIALIZE:I = 0x8

.field public static final SET_BY_RESET_CENTER:I = 0x5

.field public static final SET_BY_RESET_TO_FACE_AREA:I = 0x9

.field public static final SET_BY_TOUCH_DOWN:I = 0x1

.field public static final STANDBY_TRANSPARENT_ALPHA:F = 0.4f

.field public static final START_DISAPPEAR_TIMEOUT:I = 0x1388

.field public static final STATE_CHANGE_TIME:I = 0x1f4

.field public static final STATE_FAIL:I = 0x3

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_START:I = 0x1

.field public static final STATE_SUCCESS:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field public static final TRIANGLE_BASE_DIS:I

.field public static final ZERO_MINUS:I = 0x3

.field public static final ZERO_PLUS:I = 0x4


# instance fields
.field public final MIN_DRAG_DISTANCE:I

.field public mActivity:Lcom/android/camera/Camera;

.field public mAdapter:Lcom/android/camera/ui/RollAdapter;

.field public mAdjustedDoneTime:J

.field public mBeingDragged:Z

.field public mBeingEvAdjusted:Z

.field public mBottomRelative:I

.field public mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

.field public mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

.field public mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

.field public mCameraPreviewRect:Landroid/graphics/Rect;

.field public mCaptureBitmap:Landroid/graphics/Bitmap;

.field public mCenterFlag:I

.field public mCenterX:I

.field public mCenterY:I

.field public mCurrentDistanceY:I

.field public mCurrentItem:I

.field public mCurrentMinusCircleCenter:I

.field public mCurrentMinusCircleRadius:F

.field public mCurrentMode:I

.field public mCurrentRadius:I

.field public mCurrentRayBottom:I

.field public mCurrentRayHeight:I

.field public mCurrentRayWidth:I

.field public mCurrentViewState:I

.field public mCursorState:I

.field public mDeltaX:F

.field public mDeltaY:F

.field public mDisappearAnimator:Landroid/animation/ValueAnimator;

.field public mDragMode:I

.field public mEVAnimationRatio:F

.field public mEVAnimationStartTime:J

.field public mEVCaptureRatio:F

.field public mEvValue:F

.field public mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field public mExposureX:I

.field public mExposureY:I

.field public mFailTime:J

.field public mFocusMode:Ljava/lang/String;

.field public mFocusMoving:Z

.field public mFocusX:I

.field public mFocusY:I

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mHandler:Landroid/os/Handler;

.field public mHeight:I

.field public mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mIsAnimationEnable:Z

.field public mIsDown:Z

.field public volatile mIsDraw:Z

.field public mIsEvAdjustable:Z

.field public mIsRecording:Z

.field public mIsSplitFocusExposureDown:Z

.field public mIsTouchFocus:Z

.field public mLastItem:I

.field public mLockBodyBitmap:Landroid/graphics/Bitmap;

.field public mLockExposureBitmap:Landroid/graphics/Bitmap;

.field public mLockFocusBitmap:Landroid/graphics/Bitmap;

.field public mLockHeadBitmap:Landroid/graphics/Bitmap;

.field public mMode:I

.field public mRotation:I

.field public mScrollDistanceY:I

.field public mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field public mStartTime:J

.field public mState:I

.field public mSuccessTime:J

.field public mUserVisibleRect:Landroid/graphics/Rect;

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const v0, 0x42dc999a    # 110.3f

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    const/high16 v0, 0x40400000    # 3.0f

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 3
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 4
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const-string v1, "auto"

    .line 7
    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mFocusMode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    .line 9
    new-instance v2, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    .line 10
    iput-boolean p2, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    .line 11
    new-instance v2, Lcom/android/camera/ui/FocusView$3;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FocusView$3;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 12
    move-object v2, p1

    check-cast v2, Lcom/android/camera/Camera;

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    .line 13
    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 15
    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 16
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 17
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 18
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v3, v2}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    const v2, 0x7f0800a6

    .line 19
    invoke-static {p1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 21
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, p2, p2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const v2, 0x7f0803f6

    .line 24
    invoke-static {p1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 26
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v2, p2, p2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 28
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    .line 30
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    .line 31
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 32
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mLockHeadBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView;->mLockBodyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setLockIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 33
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 34
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-direct {v2, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    .line 35
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 36
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-direct {v2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    .line 37
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v1, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setAeAfLockedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 38
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/2addr v1, v1

    .line 39
    iput v1, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Lcom/android/camera/ui/FocusView;->mIsAnimationEnable:Z

    .line 41
    sget-object p1, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FocusView: is global animation available: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsAnimationEnable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic OooO0O0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/camera/ui/FocusView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/camera/ui/FocusView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->startAlphaAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/ui/FocusView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleResetView(I)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->handleStartShow()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method public static synthetic access$2000(Lcom/android/camera/ui/FocusView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    return p0
.end method

.method public static synthetic access$2400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    return p0
.end method

.method public static synthetic access$2600(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p0
.end method

.method public static synthetic access$2602(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p1
.end method

.method public static synthetic access$2700(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p0
.end method

.method public static synthetic access$2702(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method public static synthetic access$2800()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return v0
.end method

.method public static synthetic access$2902(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p0
.end method

.method public static synthetic access$3000(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetAlpha()V

    return-void
.end method

.method public static synthetic access$302(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method public static synthetic access$3100(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result p0

    return p0
.end method

.method public static synthetic access$3300(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return p0
.end method

.method public static synthetic access$3400(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method public static synthetic access$3502(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method public static synthetic access$3600(Lcom/android/camera/ui/FocusView;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method public static synthetic access$3700(Lcom/android/camera/ui/FocusView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    return p0
.end method

.method public static synthetic access$402(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/FocusView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetCenter()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return p0
.end method

.method private calculateAttribute()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    .line 2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    .line 3
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    .line 5
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 8
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelResetCenter()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 11
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    .line 14
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    .line 15
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    .line 16
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    .line 17
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    :cond_4
    :goto_1
    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private focusToCapture()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xa3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xba

    if-eq v0, v1, :cond_0

    const/16 v1, 0xbc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->removeTiltShiftMask()V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startCaptureIndicatorAnimation()V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performFocusShoot()V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startCaptureIndicatorAnimation()V

    .line 17
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performFocusShoot()V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method private getCurrentAngle()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x168

    const/4 v5, 0x0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, v4

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v5

    .line 4
    :goto_0
    invoke-static {v0, v5, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_2

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    .line 6
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v0, v1

    .line 7
    sget v1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v0, v5, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 8
    sget v1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_2

    .line 9
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    mul-int/2addr v0, v4

    div-int/2addr v1, v3

    div-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v5

    .line 10
    :goto_1
    invoke-static {v0, v5, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    :goto_2
    rsub-int v5, v0, 0x168

    goto :goto_3

    :cond_3
    const/16 v3, 0x87

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x43070000    # 135.0f

    if-ne v0, v2, :cond_4

    .line 11
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr v0, v4

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 12
    invoke-static {v0, v5, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    goto :goto_3

    :cond_4
    if-ne v0, v1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 14
    invoke-static {v0, v5, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    :cond_5
    :goto_3
    return v5
.end method

.method private getInterpolation(F)F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    return p1
.end method

.method private getItemByCoordinate()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    sget v1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    return v0
.end method

.method private getItemRatio(I)F
    .locals 3

    int-to-float p1, p1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ltz v1, :cond_0

    sub-float/2addr p1, v0

    :cond_0
    mul-float/2addr p1, v2

    return p1
.end method

.method private handleResetView(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 2
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 3
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->reset()V

    .line 9
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    if-ne p1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsAnimationEnable:Z

    if-eqz v1, :cond_1

    .line 11
    new-instance v0, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;I)V

    invoke-direct {p0, p0, v0}, Lcom/android/camera/ui/FocusView;->startAlphaDisappearAnimation(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    .line 12
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/2addr v1, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/2addr v3, v2

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    .line 13
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)V
    .locals 14

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v9, v3

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-nez v3, :cond_5

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetAlpha()V

    .line 7
    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    .line 8
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v12, :cond_0

    .line 9
    invoke-direct {p0, v1, v2, v9}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFF)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne p1, v13, :cond_3

    .line 10
    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    :cond_0
    if-ne p1, v13, :cond_3

    .line 11
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v6, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v7, p1

    move-object v3, p0

    move v4, v1

    move v5, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iput v13, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 13
    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    .line 14
    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_0

    .line 15
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v6, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v7, p1

    move-object v3, p0

    move v4, v1

    move v5, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 17
    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_0

    .line 18
    :cond_2
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 19
    :cond_3
    :goto_0
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne p1, v13, :cond_4

    .line 20
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    .line 21
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto/16 :goto_5

    :cond_4
    if-ne p1, v10, :cond_11

    .line 22
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    .line 23
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto/16 :goto_5

    .line 24
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v13, :cond_f

    .line 25
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    sub-float/2addr v1, p1

    .line 26
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    sub-float/2addr v2, p1

    .line 27
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 28
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v3, v13, :cond_6

    .line 29
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v3, p1

    sub-float/2addr v3, v1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    :goto_1
    int-to-float v4, p1

    sub-float/2addr v4, v2

    int-to-float p1, p1

    sub-float/2addr p1, v2

    mul-float/2addr v4, p1

    add-float p1, v3, v4

    goto :goto_2

    :cond_6
    if-ne v3, v10, :cond_7

    .line 30
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v3, p1

    sub-float/2addr v3, v1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    goto :goto_1

    .line 31
    :cond_7
    :goto_2
    iget v3, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_8

    return-void

    .line 32
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetAlpha()V

    .line 33
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    const-wide/16 v4, 0x7d0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v12, :cond_a

    .line 35
    iput v13, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    .line 36
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v3, 0xa7

    if-ne p1, v3, :cond_9

    const-string p1, "M_manual_"

    goto :goto_3

    :cond_9
    const-string p1, "M_proVideo_"

    :goto_3
    const-string v3, "metering_focus_split"

    const-string/jumbo v4, "on"

    invoke-static {p1, v3, v4}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_a
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    if-eqz p1, :cond_b

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070141

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f07014b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    :cond_b
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    sub-int/2addr v3, v4

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    int-to-float v3, v4

    .line 40
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 41
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 42
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v1, v1

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 45
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v1, v13, :cond_d

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isFocusLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 46
    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int p1, p1

    .line 47
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    float-to-int p1, v0

    .line 48
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    .line 49
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-nez p1, :cond_c

    .line 50
    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    .line 51
    :cond_c
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1, v13}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setState(I)V

    .line 52
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setFocusCenter(II)V

    goto :goto_4

    .line 53
    :cond_d
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v1, v10, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isExposureLocked()Z

    move-result v1

    if-nez v1, :cond_e

    .line 54
    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int p1, p1

    .line 55
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    float-to-int p1, v0

    .line 56
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    .line 57
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1, v13}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setState(I)V

    .line 58
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setExposureCenter(II)V

    .line 59
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateExposureArea()V

    .line 60
    :cond_e
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 61
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v12, :cond_11

    .line 62
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne p1, v13, :cond_10

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isFocusLocked()Z

    move-result p1

    if-nez p1, :cond_10

    .line 63
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateFocusArea()V

    .line 64
    :cond_10
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 65
    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 66
    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    :cond_11
    :goto_5
    return-void
.end method

.method private handleStartShow()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "handleStartShow"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 3
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 9
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 10
    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v0, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 13
    :cond_2
    sget-object v1, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showStart mExposureViewListener is null "

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startTouchDownAnimation()V

    .line 15
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v1, v0, :cond_3

    .line 16
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startTouchDownAnimation(I)V

    .line 17
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OO00()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startEvAnimation()V

    .line 21
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_3

    :cond_7
    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 25
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 28
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private initRect()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mUserVisibleRect:Landroid/graphics/Rect;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 5
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 6
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v0, v1

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 8
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setCenter(II)V

    return-void
.end method

.method private isInInteractable(FFF)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v2, v1

    sub-float/2addr v2, p3

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v4, v3

    sub-float/2addr v4, p3

    int-to-float v1, v1

    add-float/2addr v1, p3

    int-to-float v3, v3

    add-float/2addr v3, p3

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method private isInInteractable(FFFFF)Z
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    sub-float v1, p3, p5

    sub-float v2, p4, p5

    add-float/2addr p3, p5

    add-float/2addr p4, p5

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method private isProMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

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

.method private isStableStart()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result v0

    return v0
.end method

.method private performFocusShoot()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x5a

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private processParameterIfNeeded(F)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 0

    return-void
.end method

.method private reset(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", draw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "mIsTouchFocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleResetView(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private resetAlpha()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private resetCenter()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v0, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 9
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 11
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v0, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetEvValue()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    .line 3
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 4
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    .line 5
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->reset()V

    return-void
.end method

.method private setCenter(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 2
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 3

    .line 1
    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, p2, :cond_2

    .line 2
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 3
    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xa9

    .line 5
    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-nez p2, :cond_0

    .line 6
    sget-object p1, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string p2, "needEvPresenter"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvChanged: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    .line 9
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_2
    return-void
.end method

.method private setDraw(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 5
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    :cond_2
    return-void
.end method

.method private setTouchDown()V
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    return-void
.end method

.method private startAlphaAnimation(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOOo;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOOo;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method private startAlphaDisappearAnimation(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v1, 0xc8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOo0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOo0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
    .end array-data
.end method

.method private startAnimation()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopEvAdjust()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 5
    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    :cond_0
    return-void
.end method

.method private threadSafeInvalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private updateEV()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRational()Landroid/util/Rational;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 4
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    :goto_0
    return-void
.end method

.method private updateExposureArea()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onMeteringAreaChanged(II)V

    :cond_0
    return-void
.end method

.method private updateFocusArea()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFocusArea"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mFocusMode:Ljava/lang/String;

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz v0, :cond_1

    .line 5
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onFocusAreaChanged(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public canLongPressReset()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canRestFocus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isFocusOrExposureLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/4 v1, 0x0

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa7

    if-eq v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mUserVisibleRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->getTapableRectWithEdgeSlop(ZLandroid/graphics/Rect;Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    if-eqz v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07014b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    return-void

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v10, v4

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_6

    .line 12
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v2, :cond_4

    .line 13
    invoke-direct {p0, v0, v3, v10}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 15
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v7, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v8, p1

    move-object v4, p0

    move v5, v0

    move v6, v3

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFFFF)Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v7, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v8, p1

    move-object v4, p0

    move v5, v0

    move v6, v3

    move v9, v10

    .line 16
    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    :cond_5
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 19
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public clear(I)V
    .locals 3

    .line 2
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public enableControls(Z)V
    .locals 0

    return-void
.end method

.method public getFocusX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    return v0
.end method

.method public getFocusY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    return v0
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->initialize(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->initialize(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    const/16 p1, 0x8

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isEvAdjusted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return v0
.end method

.method public isEvAdjustedTime()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v5, 0x5dc

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocusViewMoving()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitFocusExposureDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isProMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OO00()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 7
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v2, :cond_2

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 9
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v3, 0xa7

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_4

    .line 10
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)V

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_5

    const/4 v2, 0x3

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v2, p1, :cond_7

    .line 13
    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz p1, :cond_6

    .line 14
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackEvAdjusted(F)V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    :cond_6
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz p1, :cond_7

    .line 20
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_7
    if-nez v0, :cond_8

    .line 21
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz p1, :cond_9

    :cond_8
    move v1, v3

    :cond_9
    :goto_0
    return v1
.end method

.method public processingFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    return-void
.end method

.method public processingStart()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    return-void
.end method

.method public reInit()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraOpen>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->initRect()V

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRange()Landroid/util/Range;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo000:Z

    if-eqz v2, :cond_1

    const/4 v1, -0x3

    const/4 v0, 0x4

    .line 9
    :cond_1
    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoo:Z

    if-nez v2, :cond_2

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoOO:Z

    if-eqz v2, :cond_3

    :cond_2
    const/16 v1, -0xc

    const/16 v0, 0xc

    :cond_3
    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_4

    goto/16 :goto_3

    .line 10
    :cond_4
    new-instance v2, Lcom/android/camera/ui/FloatSlideAdapter;

    sget v3, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_5
    sub-int v4, v0, v1

    int-to-float v4, v4

    div-float v3, v4, v3

    :goto_0
    invoke-direct {v2, v1, v0, v3}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 11
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraOpen: adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v0, :cond_6

    return-void

    .line 13
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    .line 15
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusView;->setRotation(F)V

    .line 16
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xa7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    goto :goto_1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 19
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/ui/FocusView;->setEvAdjust(ZZ)V

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_2

    .line 23
    :cond_8
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 24
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_9
    :goto_3
    return-void
.end method

.method public releaseListener()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-void
.end method

.method public setEVVisible(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->threadSafeInvalidate()V

    return-void
.end method

.method public setEvAdjust(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->threadSafeInvalidate()V

    return-void
.end method

.method public setFocusType(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eq p2, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    .line 3
    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setOrientation(I)V

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setOrientation(I)V

    .line 5
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 2
    iput p3, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v0, p2

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, p3

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setCenter(II)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    .line 9
    iget p2, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 p3, 0xa7

    if-eq p2, p3, :cond_2

    const/16 p3, 0xb4

    if-eq p2, p3, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastmotionModulePro()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xa9

    .line 12
    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz p2, :cond_2

    .line 13
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->resetEvValue()V

    .line 14
    :cond_2
    :goto_0
    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz p2, :cond_3

    const/4 p2, 0x7

    if-eq p1, p2, :cond_3

    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    :cond_3
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isProMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->setRotatingDegree(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->setRotatingDegree(F)V

    :goto_0
    return-void
.end method

.method public showFail()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isProMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startFocusFailAnimation()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusFailAnimation()V

    .line 4
    :goto_0
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showFail, mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 7
    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->threadSafeInvalidate()V

    :cond_1
    return-void
.end method

.method public showStart()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->handleStartShow()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public showSuccess()V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showSuccess"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 4
    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 5
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x320

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_2

    .line 11
    sget-object v0, Lcom/android/camera/ui/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "needExposurePresenter"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    const/16 v5, 0xb4

    const/16 v6, 0xa7

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 13
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x0

    const-string v2, "3A_Locked"

    const-string v8, "CENTER_LOCK"

    .line 14
    invoke-static {v2, v8, v0}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 17
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_7

    .line 18
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->focusToCapture()V

    goto :goto_2

    .line 19
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    if-eq v0, v6, :cond_6

    if-ne v0, v5, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    iput v7, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_2

    .line 21
    :cond_6
    :goto_1
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 22
    :cond_7
    :goto_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    if-eq v0, v5, :cond_b

    if-ne v0, v6, :cond_8

    goto :goto_4

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    .line 24
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OO00()Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move v4, v7

    .line 26
    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v4, :cond_a

    move v1, v7

    :cond_a
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-eqz v4, :cond_d

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startEvAnimation()V

    goto :goto_5

    .line 28
    :cond_b
    :goto_4
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v4, :cond_c

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    goto :goto_5

    .line 30
    :cond_c
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-ne v0, v3, :cond_d

    .line 31
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    .line 32
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    :cond_d
    :goto_5
    return-void
.end method

.method public startEvShowAgainAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startEvShowAgainAnimation()V

    :cond_0
    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mFocusMode:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method
