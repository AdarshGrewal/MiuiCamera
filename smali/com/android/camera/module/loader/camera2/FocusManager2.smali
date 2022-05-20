.class public Lcom/android/camera/module/loader/camera2/FocusManager2;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;,
        Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;
    }
.end annotation


# static fields
.field public static final FOCUS_TIMEOUT_DELAY:I = 0x7d0

.field public static final FOCUS_TIME_OUT:I = 0xfa0

.field public static final FORCE_RESET_TOUCH_FOCUS:I = 0x1

.field public static FORCE_RESET_TOUCH_FOCUS_DELAY:I = 0x1450

.field public static final MAX_FACE_MOVE:I = 0x50

.field public static final MSG_DELAY_FOCUS_SOUND:I = 0x2

.field public static final MSG_FOCUS_TIMEOUT:I = 0x3

.field public static final NEED_RESET_FOCUS_MODE:I = 0x1

.field public static final RESET_TOUCH_FOCUS:I = 0x0

.field public static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field public static final TAG:Ljava/lang/String; = "FocusManager"

.field public static final TAP_ACTION_AE:I = 0x1

.field public static final TAP_ACTION_AE_AND_AF:I = 0x2


# instance fields
.field public mAELockOnlySupported:Z

.field public mAeAwbLock:Z

.field public mCafStartTime:J

.field public mCameraFocusArea:Landroid/graphics/Rect;

.field public mCameraMeteringArea:Landroid/graphics/Rect;

.field public mChangeAe:Z

.field public mDestroyed:Z

.field public mFocusAreaSupported:Z

.field public mFocusFrom:I

.field public mFocusMode:Ljava/lang/String;

.field public mFocusPoint:Landroid/graphics/Point;

.field public mFocusResultConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Lcom/android/camera/module/loader/camera2/FocusTask;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusResultDisposable:Lio/reactivex/disposables/Disposable;

.field public mFocusResultEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/android/camera/module/loader/camera2/FocusTask;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public mIsSupportAFSaliency:Z

.field public mKeepFocusUIState:Z

.field public mLastFocusFrom:I

.field public mLastState:I

.field public mLatestFocusFace:Landroid/graphics/RectF;

.field public mLatestFocusTime:J

.field public mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mLockAeAwbNeeded:Z

.field public mMeteringAreaSupported:Z

.field public mMeteringPoint:Landroid/graphics/Point;

.field public mOverrideFocusMode:Ljava/lang/String;

.field public mPendingMultiCapture:Z

.field public mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

.field public mScreenNailHeight:I

.field public mScreenNailWidth:I

.field public mSupportedFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;ZLandroid/os/Looper;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastState:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    .line 5
    new-instance v0, Lcom/android/camera/module/loader/camera2/FocusManager2$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/loader/camera2/FocusManager2$2;-><init>(Lcom/android/camera/module/loader/camera2/FocusManager2;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusResultConsumer:Lio/reactivex/functions/Consumer;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraTouchFocusDelayEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x36ee80

    .line 7
    sput v0, Lcom/android/camera/module/loader/camera2/FocusManager2;->FORCE_RESET_TOUCH_FOCUS_DELAY:I

    .line 8
    :cond_0
    new-instance v0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;-><init>(Lcom/android/camera/module/loader/camera2/FocusManager2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setCharacteristics(Lcom/android/camera2/CameraCapabilities;)V

    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusManagerAbstract;->setMirror(Z)V

    .line 12
    iput-boolean p5, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mIsSupportAFSaliency:Z

    .line 13
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusPoint:Landroid/graphics/Point;

    .line 14
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mMeteringPoint:Landroid/graphics/Point;

    .line 15
    new-instance p1, Lcom/android/camera/module/loader/camera2/FocusManager2$1;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/FocusManager2$1;-><init>(Lcom/android/camera/module/loader/camera2/FocusManager2;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusResultConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusResultDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/loader/camera2/FocusManager2;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/module/loader/camera2/FocusManager2;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setLastFocusState(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/module/loader/camera2/FocusManager2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/module/loader/camera2/FocusManager2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/android/camera/module/loader/camera2/FocusManager2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/android/camera/module/loader/camera2/FocusManager2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/module/loader/camera2/FocusManager2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/module/loader/camera2/FocusManager2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    return p0
.end method

.method public static synthetic access$1602(Lcom/android/camera/module/loader/camera2/FocusManager2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/android/camera/module/loader/camera2/FocusManager2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/loader/camera2/FocusManager2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mPendingMultiCapture:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/loader/camera2/FocusManager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->multiCapture()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/module/loader/camera2/FocusManager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->capture()V

    return-void
.end method

.method public static synthetic access$502(Lcom/android/camera/module/loader/camera2/FocusManager2;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusResultEmitter:Lio/reactivex/ObservableEmitter;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/camera/module/loader/camera2/FocusManager2;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/module/loader/camera2/FocusManager2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mDestroyed:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/module/loader/camera2/FocusManager2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/module/loader/camera2/FocusManager2;Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onAutoFocusMoving(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void
.end method

.method private afaeRectangle(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->afaeRectangleToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 p2, 0x1

    new-array p3, p2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/Util;->createMeteringRectangleFrom(Landroid/graphics/Rect;I)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p3, p2

    return-object p3
.end method

.method private afaeRectangleToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v1, p3

    .line 8
    iget p3, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr p3, p1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    add-float/2addr p3, v3

    iput p3, v0, Landroid/graphics/RectF;->left:F

    .line 9
    iget p3, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr p3, v1

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    add-float/2addr p3, v4

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 10
    iget p3, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr p3, p1

    int-to-float p1, v2

    add-float/2addr p3, p1

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 11
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, v1

    int-to-float p3, v3

    add-float/2addr p1, p3

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 13
    invoke-static {v0, p1}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 14
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p3, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 15
    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p3, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 16
    iget p3, p1, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p3, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 17
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p3, v0, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method private capture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->onWaitingFocusFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mPendingMultiCapture:Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private focusPoint(IIIZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iput p3, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusFrom:I

    .line 4
    iput-boolean p4, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mChangeAe:Z

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelFocus()V

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/loader/camera2/FocusManager2;->initializeParameters(IIIZ)V

    const/4 p4, 0x1

    .line 9
    invoke-direct {p0, p4, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->initializeFocusIndicator(III)V

    const/4 p1, 0x3

    if-ne p3, p1, :cond_2

    .line 10
    iget-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mIsSupportAFSaliency:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/saliencychecker/SaliencyChecker;->hasInit()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1, p4}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->notifyFocusAreaUpdate(Z)V

    :cond_3
    if-eqz p1, :cond_4

    if-nez p4, :cond_5

    :cond_4
    const-string p1, "FocusManager"

    const-string p2, "not isAFSaliencyCheck, focusPointAfter"

    .line 14
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->focusPointAfter()V

    :cond_5
    :goto_1
    return-void
.end method

.method private getTapAction()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "edof"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "manual"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 10

    move-object v9, p0

    .line 1
    iget-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusPoint:Landroid/graphics/Point;

    move v4, p3

    iput v4, v0, Landroid/graphics/Point;->x:I

    move v5, p4

    .line 4
    iput v5, v0, Landroid/graphics/Point;->y:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    iget-object v8, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeFocusAreas mCameraFocusArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initializeFocusIndicator(III)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewPosition(III)V

    :cond_0
    return-void
.end method

.method private initializeMeteringAreas(IIIIIII)V
    .locals 10

    move-object v9, p0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    move/from16 v2, p7

    if-ne v2, v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isNeedExposure(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraMeteringArea:Landroid/graphics/Rect;

    return-void

    .line 4
    :cond_0
    iget-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraMeteringArea:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraMeteringArea:Landroid/graphics/Rect;

    .line 6
    :cond_1
    iget-object v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mMeteringPoint:Landroid/graphics/Point;

    move v4, p3

    iput v4, v0, Landroid/graphics/Point;->x:I

    move v5, p4

    .line 7
    iput v5, v0, Landroid/graphics/Point;->y:I

    const v3, 0x3fe66666    # 1.8f

    .line 8
    iget-object v8, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraMeteringArea:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeMeteringAreas mCameraMeteringArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraMeteringArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initializeParameters(IIIZ)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeParameters default focus area w*h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mMeteringPoint:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iput p2, v1, Landroid/graphics/Point;->y:I

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 6
    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/module/loader/camera2/FocusManager2;->initializeFocusAreas(IIIIII)V

    .line 7
    :cond_1
    iget-boolean p4, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mMeteringAreaSupported:Z

    if-eqz p4, :cond_2

    .line 8
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/module/loader/camera2/FocusManager2;->initializeMeteringAreas(IIIIIII)V

    :cond_2
    return-void
.end method

.method private isAutoFocusMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "auto"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "macro"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isFocusEnabled()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFocusValid(I)Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xfa0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x1388

    :goto_1
    const/4 v6, 0x1

    if-ge p1, v3, :cond_4

    .line 3
    iget v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    if-ge p1, v2, :cond_4

    iget-wide v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLatestFocusTime:J

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    if-ne p1, v6, :cond_3

    const/4 p1, 0x7

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetTouchFocus(I)V

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLatestFocusTime:J

    return v6
.end method

.method private isMeteringFocusSplit()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mMeteringPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lockAeAwbIfNeeded()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->notifyFocusAreaUpdate(Z)V

    :cond_0
    return-void
.end method

.method private multiCapture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->multiCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mPendingMultiCapture:Z

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getTapAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onAutoFocusMoving(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    .line 3
    iget-boolean v2, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    const-string v3, "FocusManager"

    if-nez v2, :cond_0

    const-string/jumbo p1, "onAutoFocusMoving"

    .line 4
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xa6

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isIsDepthFocus()Z

    move-result p1

    const/4 v4, 0x1

    xor-int/2addr p1, v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v7

    invoke-interface {v2, v7}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    invoke-interface {v2, v6}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    move p1, v5

    .line 9
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAutoFocusMoving: mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getFocusMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " show="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v7, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getFocusMode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "auto"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    :cond_3
    const/4 v7, 0x2

    if-eqz v0, :cond_5

    .line 12
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v0, v7, :cond_4

    .line 13
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/android/camera/module/loader/camera2/FocusManager2;->FORCE_RESET_TOUCH_FOCUS_DELAY:I

    int-to-long v8, v1

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    const-string v0, "Camera KPI: CAF start"

    .line 19
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCafStartTime:J

    if-eqz p1, :cond_a

    if-eqz v2, :cond_a

    .line 21
    invoke-interface {v2, v7, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    .line 22
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setEvAdjustVisible(Z)V

    goto :goto_2

    .line 23
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera KPI: CAF stop: Focus time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCafStartTime:J

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    .line 25
    invoke-direct {p0, v6}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 26
    invoke-direct {p0, v6}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setLastFocusState(I)V

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    .line 27
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 28
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setLastFocusState(I)V

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_8

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    move p1, v7

    goto :goto_1

    :cond_7
    move p1, v6

    .line 32
    :goto_1
    invoke-interface {v2, v7, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    :cond_8
    if-ne v0, v7, :cond_a

    .line 33
    invoke-direct {p0, v6}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 34
    iget-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mPendingMultiCapture:Z

    if-eqz p1, :cond_9

    .line 35
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->multiCapture()V

    goto :goto_2

    .line 36
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->capture()V

    :cond_a
    :goto_2
    return-void
.end method

.method private onlyAe()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getTapAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private processSaliencyChecker(Landroid/graphics/Rect;)V
    .locals 13

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processSaliencyChecker ratio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FocusManager"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processSaliencyChecker before: (left="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", top="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", width="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v3, Lcom/android/camera/saliencychecker/SaliencyProcessRect;

    invoke-direct {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;-><init>()V

    .line 6
    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-double v9, v9

    mul-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->setLeft(I)V

    .line 7
    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-double v9, v9

    mul-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->setTop(I)V

    .line 8
    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    mul-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->setWidth(I)V

    .line 9
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    mul-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v3, v9}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->setHeight(I)V

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processSaliencyChecker before ratio: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v9, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    invoke-direct {v9}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;-><init>()V

    const/4 v10, 0x1

    .line 12
    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setImgFormat(I)V

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->getImgWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setImgWidth(I)V

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->getImgHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setImgHeight(I)V

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->getImgWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setImgStride(I)V

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->getOrientation()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setOrientation(I)V

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->getBufferSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setBufferSize(J)V

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->getBufferData()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setBufferData([B)V

    .line 19
    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getLeft()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setLeft(I)V

    .line 20
    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getTop()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setTop(I)V

    .line 21
    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setHeight(I)V

    .line 22
    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setWidth(I)V

    .line 23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processSaliencyChecker input: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v10, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;

    invoke-direct {v10}, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;-><init>()V

    .line 25
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->getBufferSize()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->setBufferSize(J)V

    .line 26
    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->getBufferData()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->setBufferData([B)V

    .line 27
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/android/camera/saliencychecker/SaliencyChecker;->process(Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;)Z

    move-result v0

    .line 28
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processSaliencyChecker output: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v10}, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->getLeft()I

    move-result v0

    int-to-double v11, v0

    div-double/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v0, v11

    invoke-virtual {v3, v0}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->setLeft(I)V

    .line 30
    invoke-virtual {v10}, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->getTop()I

    move-result v0

    int-to-double v11, v0

    div-double/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v0, v11

    invoke-virtual {v3, v0}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->setTop(I)V

    .line 31
    invoke-virtual {v10}, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->getWidth()I

    move-result v0

    int-to-double v11, v0

    div-double/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v0, v11

    invoke-virtual {v3, v0}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->setWidth(I)V

    .line 32
    invoke-virtual {v10}, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->getHeight()I

    move-result v0

    int-to-double v9, v0

    div-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {v3, v0}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->setHeight(I)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processSaliencyChecker after ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 35
    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 36
    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getLeft()I

    move-result v0

    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 37
    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getTop()I

    move-result v0

    invoke-virtual {v3}, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processSaliencyChecker after: (left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private resetFocusAreaToCenter()V
    .locals 7

    .line 1
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v3, v5, 0x2

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v4, v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager2;->initializeFocusAreas(IIIIII)V

    .line 2
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->initializeFocusIndicator(III)V

    return-void
.end method

.method private resetFocusAreaToFaceArea()Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v6, v1

    .line 6
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    div-float/2addr v1, v2

    float-to-int v7, v1

    .line 7
    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v8, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v9, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/module/loader/camera2/FocusManager2;->initializeFocusAreas(IIIIII)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setFocusState(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return-void
.end method

.method private setLastFocusState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastState:I

    return-void
.end method

.method private startFocus(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "auto"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusMode(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    .line 4
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result p1

    if-ne v3, p1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, v2}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->stopObjectTracking(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->startFocus()V

    .line 9
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->updateFocusUI()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    sget v0, Lcom/android/camera/module/loader/camera2/FocusManager2;->FORCE_RESET_TOUCH_FOCUS_DELAY:I

    int-to-long v0, v0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->notifyFocusAreaUpdate(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateTrackFocusArea(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager2;->initializeFocusAreas(IIIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/module/loader/camera2/FocusManager2;->afaeRectangleToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public canRecord()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public cancelFocus()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->needAutoFocusCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelFocus(Z)V

    return-void
.end method

.method public cancelFocus(Z)V
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelFocus: E, resetFocusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusMode(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetTouchFocus(I)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelFocus: needAutoFocusCall()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->needAutoFocusCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->needAutoFocusCall()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v2, v4}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->notifyFocusAreaUpdate(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v2, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->cancelFocus(Z)V

    .line 10
    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v0, p1, :cond_3

    .line 11
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    goto :goto_2

    :cond_3
    const-string/jumbo p1, "waiting focus timeout!"

    .line 12
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->updateFocusUI()V

    .line 14
    iput-boolean v4, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string p1, "cancelFocus: X"

    .line 18
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelLongPressedAutoFocus()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setLastFocusState(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public cancelMultiSnapPending()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mPendingMultiCapture:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mPendingMultiCapture:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mDestroyed:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->removeMessages()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusResultDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0o0O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyChecker;->destroy()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public doMultiSnap(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->multiCapture()V

    .line 3
    :cond_1
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->needAutoFocusCall()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mPendingMultiCapture:Z

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->multiCapture()V

    goto :goto_1

    .line 8
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->multiCapture()V

    :cond_5
    :goto_1
    return-void
.end method

.method public doSnap()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "doSnap mState = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "FocusManager"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_4

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->needAutoFocusCall()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-ne v1, v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->shouldCaptureDirectly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->capture()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 8
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_5

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->capture()V

    goto :goto_1

    .line 10
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->capture()V

    :cond_5
    :goto_1
    return-void
.end method

.method public focusFaceArea()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v3

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFocusRect(I)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLatestFocusFace:Landroid/graphics/RectF;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget v4, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    if-ne v4, v3, :cond_3

    .line 7
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    iget-object v5, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v5

    sub-float/2addr v1, v6

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    return v2

    .line 9
    :cond_3
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 10
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 11
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    div-float/2addr v5, v4

    float-to-int v0, v5

    .line 12
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->focusPoint(IIIZ)V

    return v3

    :cond_4
    :goto_1
    return v2
.end method

.method public focusPointAfter()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusFrom:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAELockOnlySupported:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusAreaSupported:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mChangeAe:Z

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    .line 3
    :cond_2
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusFrom:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusFrom:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->startFocus(I)V

    goto :goto_2

    .line 5
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_6

    .line 6
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusFrom:I

    const/4 v3, 0x3

    if-ne v3, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iput-boolean v2, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 8
    :cond_4
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusFrom:I

    iput v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    .line 9
    iget-boolean v4, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAELockOnlySupported:Z

    if-eqz v4, :cond_5

    .line 10
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->startFocus(I)V

    goto :goto_1

    .line 11
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->updateFocusUI()V

    .line 13
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->updateFocusUI()V

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    return v0
.end method

.method public getCurrentFocusState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    return v0
.end method

.method public getFocusAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mIsSupportAFSaliency:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->processSaliencyChecker(Landroid/graphics/Rect;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->afaeRectangle(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFocusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFocusState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastState:I

    return v0
.end method

.method public getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraMeteringArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->afaeRectangle(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1
.end method

.method public getMeteringOrFocusAreas(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 11

    move-object v9, p0

    move v4, p1

    move v5, p2

    if-eqz p5, :cond_0

    .line 1
    iget v0, v9, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    .line 2
    iget v1, v9, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    iget-object v3, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusPoint:Landroid/graphics/Point;

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 4
    iput v5, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, v9, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    .line 6
    iget v1, v9, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    const v2, 0x3fe66666    # 1.8f

    .line 7
    iget-object v3, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mMeteringPoint:Landroid/graphics/Point;

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 8
    iput v5, v3, Landroid/graphics/Point;->y:I

    :goto_0
    move v3, v2

    move v2, v1

    move v1, v0

    .line 9
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget v6, v9, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v7, v9, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerAbstract;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    if-eqz p5, :cond_1

    .line 11
    iget-boolean v0, v9, Lcom/android/camera/module/loader/camera2/FocusManager2;->mIsSupportAFSaliency:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {p0, v10}, Lcom/android/camera/module/loader/camera2/FocusManager2;->processSaliencyChecker(Landroid/graphics/Rect;)V

    :cond_1
    move-object v0, p3

    move-object v1, p4

    .line 13
    invoke-direct {p0, v10, p3, p4}, Lcom/android/camera/module/loader/camera2/FocusManager2;->afaeRectangle(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    return-object v0
.end method

.method public initSaliencyChecker(II)V
    .locals 4

    if-le p1, p2, :cond_0

    .line 1
    iput p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailWidth:I

    .line 2
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailHeight:I

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailWidth:I

    .line 4
    iput p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailHeight:I

    .line 5
    :goto_0
    new-instance p1, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;

    invoke-direct {p1}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;-><init>()V

    .line 6
    iget p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailWidth:I

    int-to-double v0, p2

    iget p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->setRatio(D)V

    .line 8
    iget p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailWidth:I

    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->setImgWidth(I)V

    .line 9
    iget p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailHeight:I

    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->setImgHeight(I)V

    .line 10
    iget p2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    int-to-double v2, p2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p2, v2

    .line 11
    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 12
    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->setDefaultBoxHeight(I)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->setDefaultBoxWidth(I)V

    const-string p2, "/vendor/etc/camera"

    .line 14
    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->setAssetPath(Ljava/lang/String;)V

    const-string p2, "/vendor/lib/rfsa/adsp/"

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->setAdspPath(Ljava/lang/String;)V

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initSaliencyChecker: saliencyInitInputObject = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FocusManager"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/saliencychecker/SaliencyChecker;->init(Lcom/android/camera/saliencychecker/SaliencyInitInputObject;)Z

    return-void
.end method

.method public isFocusCompleted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

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

.method public isFocusing()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFromTouch()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedCancelAutoFocus()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public onCameraReleased()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onPreviewStopped()V

    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLatestFocusTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isMeteringFocusSplit()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setLastFocusState(I)V

    .line 4
    iget-boolean p2, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    if-eqz p2, :cond_0

    const-string p2, "FocusManager"

    const-string/jumbo v0, "onDeviceKeepMoving"

    .line 5
    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusResultDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetTouchFocus(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->updateFocusUI()V

    return-void
.end method

.method public onShutter()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->updateFocusUI()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    return-void
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterUp()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSingleTapUp isLongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onlyAe()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->focusPoint(IIIZ)V

    return-void
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mOverrideFocusMode:Ljava/lang/String;

    return-void
.end method

.method public prepareCapture(ZI)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v2, :cond_3

    const-string v5, "auto"

    .line 3
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "macro"

    .line 4
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5
    :cond_1
    iget v5, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastState:I

    if-eq v5, v1, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v4

    .line 6
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prepareCapture: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v6, "FocusManager"

    invoke-static {v2, v6, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const-string p2, "continuous-picture"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    if-eqz v5, :cond_6

    .line 9
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->focusFaceArea()Z

    goto :goto_1

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusAreaToCenter()V

    .line 14
    invoke-direct {p0, v3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->startFocus(I)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    .line 16
    iput-boolean v4, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mKeepFocusUIState:Z

    .line 17
    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->startFocus(I)V

    .line 18
    iput-boolean v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mKeepFocusUIState:Z

    :goto_1
    move v3, v4

    :cond_6
    if-nez v3, :cond_8

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 19
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0oO()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    iget p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-ne p1, v4, :cond_8

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelFocus()V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->requestAutoFocus()V

    :cond_8
    :goto_2
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public requestAutoFocus()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa6

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 4
    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v3, v5}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->cancelFocus(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    .line 7
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 8
    iput-boolean v5, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusAreaToFaceArea()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    .line 13
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_4
    move v2, v4

    goto :goto_0

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusAreaToCenter()V

    .line 15
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0, v5}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->notifyFocusAreaUpdate(Z)V

    .line 18
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->startFocus(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public resetAfterCapture(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;->cancelFocus(Z)V

    :cond_0
    const/4 p1, 0x7

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetTouchFocus(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->removeMessages()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setLastFocusState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetFocusIndicator(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_0
    return-void
.end method

.method public resetFocusState(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetFocusState resetFocusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public resetFocusStateIfNeeded()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isMeteringFocusSplit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraMeteringArea:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setLastFocusState(I)V

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public resetFocused()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusState(I)V

    return-void
.end method

.method public resetTouchFocus(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraFocusArea:Landroid/graphics/Rect;

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mCameraMeteringArea:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mCancelAutoFocusIfMove:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusIndicator(I)V

    :cond_0
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    return-void
.end method

.method public setCharacteristics(Lcom/android/camera2/CameraCapabilities;)V
    .locals 4

    const-string v0, "FocusManager"

    if-nez p1, :cond_0

    const-string/jumbo p1, "setCharacteristics got null CameraCapabilities!"

    .line 1
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusAreaSupported:Z

    .line 3
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isAERegionSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mMeteringAreaSupported:Z

    .line 4
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isAELockSupported()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isAWBLockSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLockAeAwbNeeded:Z

    .line 5
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getSupportedFocusModes()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/constant/AutoFocus;->convertToLegacyFocusModes([I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSupportedFocusModes:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mActiveArraySize:Landroid/graphics/Rect;

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000O()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusAreaSupported:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isAELockSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAELockOnlySupported:Z

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCharacteristics: mFocusAreaSupported = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusAreaSupported:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAELockOnlySupported = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAELockOnlySupported:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "FocusManager"

    const-string/jumbo v2, "setFocusMode: null focus mode"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    :cond_0
    const-string v0, "auto"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSupportedFocusModes:Ljava/util/List;

    .line 3
    invoke-static {p1, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    const-string v0, "continuous-picture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    const-string v0, "continuous-video"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    return-object p1
.end method

.method public setIsSupportAFSaliency(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mIsSupportAFSaliency:Z

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    .line 3
    iput p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setPreviewSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FocusManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    :cond_1
    return-void
.end method

.method public setSaliencyCheckerInfo([BI)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    invoke-direct {v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    invoke-virtual {v0, p1}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setBufferData([B)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setBufferSize(J)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailWidth:I

    invoke-virtual {p1, v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setImgWidth(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailHeight:I

    invoke-virtual {p1, v0}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setImgHeight(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mSaliencyProcessInputObject:Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;

    invoke-virtual {p1, p2}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setOrientation(I)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSaliencyCheckerInfo pictureSize="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mScreenNailHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", orientation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FocusManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateFocusUI()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mKeepFocusUIState:Z

    if-nez v1, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 4
    iget v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mLastFocusFrom:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v3, v2, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    .line 6
    :goto_0
    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eqz v5, :cond_9

    if-eq v5, v3, :cond_8

    if-eq v5, v4, :cond_8

    const/4 v3, 0x3

    if-eq v5, v3, :cond_5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    iget-object v5, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    const-string v6, "continuous-picture"

    .line 8
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mFocusMode:Ljava/lang/String;

    const-string v6, "continuous-video"

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v4, v3

    .line 10
    :cond_4
    :goto_1
    invoke-interface {v0, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    .line 11
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    const v0, 0x7f1200c6

    .line 12
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->announceForAccessibility(I)V

    goto :goto_3

    .line 13
    :cond_5
    invoke-interface {v0, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    .line 14
    iget-boolean v2, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->performHapticFeedback(I)V

    .line 16
    :cond_6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 17
    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2;->mAeAwbLock:Z

    if-eqz v0, :cond_7

    const v0, 0x7f120083

    goto :goto_2

    :cond_7
    const v0, 0x7f1200c7

    :goto_2
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->announceForAccessibility(I)V

    goto :goto_3

    .line 18
    :cond_8
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    goto :goto_3

    :cond_9
    if-ne v2, v4, :cond_a

    const/4 v1, 0x7

    .line 19
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto :goto_3

    .line 20
    :cond_a
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearIndicator(I)V

    :cond_b
    :goto_3
    return-void
.end method
