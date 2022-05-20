.class public Lcom/android/camera/fragment/lighting/FragmentLightView;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentLightView.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;


# static fields
.field public static final FRAGMENT_INFO:I = 0xff8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public lastConfirmTime:J

.field public lastFaceResult:I

.field public mActiveArraySize:Landroid/graphics/Rect;

.field public mCamera2TranslateMatrix:Landroid/graphics/Matrix;

.field public mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field public mCurrentMimojiFaceResult:I

.field public mIsMimojiFaceDetectTip:Z

.field public mIsShowLighting:Z

.field public mLastFaceSuccess:Z

.field public mLightingView:Lcom/android/camera/ui/LightingView;

.field public mMatrix:Landroid/graphics/Matrix;

.field public mMimojiDetectTipType:I

.field public mMimojiFaceDetect:I

.field public mMimojiLightingView:Lcom/android/camera/ui/LightingView;

.field public mRootView:Landroid/view/View;

.field public mZoomValue:F

.field public mergeRectF:Landroid/graphics/RectF;

.field public miFaceTipResId:I

.field public miLightTipResId:I

.field public mimojiTipResId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/lighting/FragmentLightView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/lighting/FragmentLightView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mergeRectF:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mimojiTipResId:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->miFaceTipResId:I

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->miLightTipResId:I

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMatrix:Landroid/graphics/Matrix;

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/lighting/FragmentLightView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCurrentMimojiFaceResult:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/lighting/FragmentLightView;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/lighting/FragmentLightView;->mimojiFaceDetectSync(II)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/lighting/FragmentLightView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastFaceResult:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/lighting/FragmentLightView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    return p0
.end method

.method private consumeResult(IZ)V
    .locals 5

    if-eqz p2, :cond_0

    const/16 v0, 0x2bc

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    .line 1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastConfirmTime:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastConfirmTime:J

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "faceResult:"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    const/16 p2, 0xa1

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/lighting/FragmentLightView;->mimojiFaceDetectSync(II)V

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xac

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6
    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastFaceResult:I

    if-ne v0, p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isContainAlertLightingTip(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 7
    :cond_3
    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastFaceResult:I

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_4

    .line 9
    new-instance v1, Lcom/android/camera/fragment/lighting/FragmentLightView$2;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/fragment/lighting/FragmentLightView$2;-><init>(Lcom/android/camera/fragment/lighting/FragmentLightView;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 10
    :goto_1
    iget-boolean p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    if-ne p2, p1, :cond_6

    return-void

    .line 11
    :cond_6
    iput-boolean p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    if-eqz v0, :cond_7

    .line 12
    new-instance p1, Lcom/android/camera/fragment/lighting/FragmentLightView$3;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/fragment/lighting/FragmentLightView$3;-><init>(Lcom/android/camera/fragment/lighting/FragmentLightView;Lcom/android/camera/ui/LightingView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method private getMergeRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 3
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 4
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mergeRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mergeRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method private isMimojiFaceDetectTip()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mIsMimojiFaceDetectTip:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mIsMimojiFaceDetectTip:Z

    return v0
.end method

.method private isRectIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    .line 1
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private declared-synchronized mimojiFaceDetectSync(II)V
    .locals 3

    monitor-enter p0

    const/16 v0, 0xa0

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCurrentMimojiFaceResult:I

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->getTipsResId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mimojiTipResId:I

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCurrentMimojiFaceResult:I

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/fragment/lighting/FragmentLightView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mimojiFaceDetectSync 0, mCurrentMimojiFaceResult = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCurrentMimojiFaceResult:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mimoji tips resId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mimojiTipResId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xa1

    if-ne v0, p1, :cond_1

    .line 5
    :try_start_1
    invoke-static {p2}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->getTipsResIdFace(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->miFaceTipResId:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    .line 6
    sget-object p1, Lcom/android/camera/fragment/lighting/FragmentLightView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimojiFaceDetectSync 1, faceResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", miface tips resId = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->miFaceTipResId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiFaceDetect:I

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiDetectTipType:I

    if-ne p1, v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/lighting/FragmentLightView;->setMimojiFaceDetectTip()V

    .line 10
    sget-object v0, Lcom/android/camera/fragment/lighting/FragmentLightView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimojiFaceDetectSync 2, faceResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "type:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_2
    :try_start_3
    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiDetectTipType:I

    .line 13
    iput p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiFaceDetect:I

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/lighting/FragmentLightView;->setMimojiFaceDetectTip()V

    .line 15
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb8

    if-ne v0, v2, :cond_4

    .line 16
    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->miFaceTipResId:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mimojiTipResId:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    :cond_4
    :goto_0
    const-string v0, "mimojiFaceDetectSync"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "face_detect_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",is_face_location_ok:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private prepareMatrix(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mActiveArraySize:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mZoomValue:F

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->scaleCamera2Matrix(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v4

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v5

    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v6

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 v8, p1, 0x2

    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 10
    invoke-static/range {v2 .. v10}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIIIII)V

    return-void
.end method

.method private setMimojiFaceDetectTip()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mIsMimojiFaceDetectTip:Z

    return-void
.end method

.method private transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiDetectTipType:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    .line 3
    invoke-static {v1}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->getTipsResIdFace(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->miLightTipResId:I

    if-eqz v0, :cond_2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/fragment/lighting/FragmentLightView;->isMimojiFaceDetectTip()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiFaceDetect:I

    invoke-static {v1}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->getTipsResIdFace(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->miFaceTipResId:I

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 7
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/lighting/FragmentLightView;->isMimojiFaceDetectTip()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 9
    :cond_1
    iget v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCurrentMimojiFaceResult:I

    invoke-static {v1}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->getTipsResId(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mimojiTipResId:I

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 10
    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    .line 11
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    if-eqz p1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/LightingView;->getIsFocusingSuccess()Z

    move-result v1

    if-nez v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/LightingView;->triggerAnimateSuccess()V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/LightingView;->getIsFocusingSuccess()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/LightingView;->triggerAnimateStart()V

    .line 16
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xed

    .line 17
    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 18
    invoke-interface {v1, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFaceDetectChanges;->setDetectSuccess(Z)V

    if-eqz p1, :cond_8

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 20
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v1

    const v4, 0x7f1204eb

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    invoke-interface {v0, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    goto :goto_4

    .line 23
    :cond_7
    :goto_3
    invoke-interface {v0, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    goto :goto_4

    .line 24
    :cond_8
    iget p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->miFaceTipResId:I

    if-gez p1, :cond_9

    iget p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mimojiTipResId:I

    if-gez p1, :cond_9

    const p1, 0x7f1204ea

    .line 25
    invoke-interface {v0, v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_9
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xff8

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0087

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mRootView:Landroid/view/View;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion1()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0203

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/LightingView;

    iput-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/LightingView;->setRotation(I)V

    :cond_0
    const v0, 0x7f0a0280

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/LightingView;

    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    const v0, 0x3f970a3d    # 1.18f

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/LightingView;->setCircleRatio(F)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    const v0, 0x3f8f5c29    # 1.12f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/LightingView;->setCircleHeightRatio(F)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-void
.end method

.method public isFaceLocationOK()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    return v0
.end method

.method public isShowLightingView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mIsShowLighting:Z

    return v0
.end method

.method public lightingCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateExit()V

    :cond_0
    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastConfirmTime:J

    return-void
.end method

.method public lightingDetectFace([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 5

    if-eqz p4, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iput-object p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 3
    invoke-static {p2, p3}, Lcom/android/camera/HybridZoomingSystem;->toZoomRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mZoomValue:F

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/lighting/FragmentLightView;->prepareMatrix(Landroid/view/View;)V

    const/4 p2, 0x5

    if-eqz p1, :cond_a

    .line 5
    array-length p3, p1

    if-eqz p3, :cond_a

    array-length p3, p1

    const/4 v1, 0x1

    if-le p3, v1, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    iget-wide v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastConfirmTime:J

    const-wide/16 v3, -0x1

    cmp-long p3, v1, v3

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p3, 0x0

    .line 7
    aget-object p1, p1, p3

    iget-object p1, p1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->getFaceViewRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/lighting/FragmentLightView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->getFaceViewRectF()Landroid/graphics/RectF;

    move-result-object p1

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->getFocusRectF()Landroid/graphics/RectF;

    move-result-object p3

    .line 10
    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/lighting/FragmentLightView;->isRectIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11
    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/lighting/FragmentLightView;->getMergeRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 12
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr v0, p1

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mergeRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mergeRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr p1, v1

    .line 14
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr v1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p4, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, p3

    :goto_1
    if-eqz p4, :cond_5

    const/high16 p3, 0x3fc00000    # 1.5f

    :cond_5
    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v1

    mul-float/2addr v4, v3

    mul-float/2addr v1, v2

    mul-float/2addr v1, p3

    mul-float/2addr v2, v0

    cmpg-float p3, p1, v2

    if-gez p3, :cond_6

    goto :goto_3

    :cond_6
    cmpg-float p2, p1, v4

    if-gez p2, :cond_7

    const/4 p1, 0x4

    :goto_2
    move p2, p1

    goto :goto_3

    :cond_7
    cmpg-float p1, p1, v1

    if-gez p1, :cond_8

    cmpg-float p1, v0, v1

    if-gez p1, :cond_8

    const/4 p1, 0x6

    goto :goto_2

    :cond_8
    const/4 p1, 0x3

    goto :goto_2

    .line 15
    :cond_9
    :goto_3
    invoke-direct {p0, p2, p4}, Lcom/android/camera/fragment/lighting/FragmentLightView;->consumeResult(IZ)V

    return-void

    .line 16
    :cond_a
    :goto_4
    invoke-direct {p0, p2, p4}, Lcom/android/camera/fragment/lighting/FragmentLightView;->consumeResult(IZ)V

    return-void
.end method

.method public lightingFocused()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateSuccess()V

    :cond_0
    return-void
.end method

.method public lightingStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/LightingView;->setCinematicAspectRatio(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateStart()V

    :cond_0
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastFaceResult:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastConfirmTime:J

    return-void
.end method

.method public mimojiEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateExit()V

    return-void
.end method

.method public mimojiFaceDetect(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    new-instance v1, Lcom/android/camera/fragment/lighting/FragmentLightView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/lighting/FragmentLightView$1;-><init>(Lcom/android/camera/fragment/lighting/FragmentLightView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public mimojiStart()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastFaceResult:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->lastConfirmTime:J

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateStart()V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 8
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLastFaceSuccess:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->clear()V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/lighting/FragmentLightView;->isShowLightingView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/lighting/FragmentLightView;->showOrHideLightingView()Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/ui/LightingView;->clear()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/ui/LightingView;->clear()V

    :cond_2
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mLightingView:Lcom/android/camera/ui/LightingView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/LightingView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa03

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setLightingViewStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mIsShowLighting:Z

    return-void
.end method

.method public setMimojiDetectTipType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiDetectTipType:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiDetectTipType:I

    :cond_0
    return-void
.end method

.method public showOrHideLightingView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mIsShowLighting:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mIsShowLighting:Z

    return v0
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa03

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateMimojiFaceDetectResultTip(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView;->mMimojiLightingView:Lcom/android/camera/ui/LightingView;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOOO/OooO00o;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOOO/OooO00o;-><init>(Lcom/android/camera/fragment/lighting/FragmentLightView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
