.class public abstract Lcom/android/camera/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;,
        Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;,
        Lcom/android/camera/SurfaceTextureScreenNail$ExternalProcessorType;,
        Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;
    }
.end annotation


# static fields
.field public static final MOVIE_SOLID_CROPPED_X:F = 0.8f

.field public static final MOVIE_SOLID_CROPPED_Y:F = 0.8f

.field public static final TAG:Ljava/lang/String; = "STScreenNail"

.field public static sFrameListener:Landroid/os/HandlerThread; = null

.field public static sMaxHighPriorityFrameCount:I = 0x8


# instance fields
.field public currentFrameCount:I

.field public mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field public mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field public mCameraHeight:I

.field public mCameraWidth:I

.field public mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field public mDisplayOrientation:I

.field public mDisplayRect:Landroid/graphics/Rect;

.field public mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field public mExternalFrameNeedFit:Z

.field public volatile mExternalFrameProcessor:Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

.field public mExternalFrameRect:Landroid/graphics/Rect;

.field public mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public mFullCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public mFullCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field public mHasTexture:Z

.field public mHeight:I

.field public mIsFullScreen:Z

.field public mIsRatio16_9:Z

.field public final mLock:Ljava/lang/Object;

.field public mModuleSwitching:Z

.field public mNeedCropped:Z

.field public mPreviewSaveListener:Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;

.field public mReadPixelsHeight:I

.field public mReadPixelsWidth:I

.field public mRenderHeight:I

.field public mRenderLayoutRect:Landroid/graphics/Rect;

.field public mRenderOffsetX:I

.field public mRenderOffsetY:I

.field public mRenderWidth:I

.field public mScaleX:F

.field public mScaleY:F

.field public mScreenNailCallback:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

.field public mSkipFirstFrame:Z

.field public mSurfaceCreatedTimestamp:J

.field public mSurfaceHeight:I

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mSurfaceWidth:I

.field public mTargetRatio:I

.field public mTheight:I

.field public mTransform:[F

.field public mTwidth:I

.field public mTx:I

.field public mTy:I

.field public mUncroppedRenderHeight:I

.field public mUncroppedRenderWidth:I

.field public mVideoStabilizationCropped:Z

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 7
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 8
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 9
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScreenNailCallback:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

    return-void
.end method

.method private checkThreadPriority()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHighPriorityFrameCount:I

    if-ne v0, v1, :cond_0

    const-string v0, "STScreenNail"

    const-string v1, "normalHandlerCapacity:set normal"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 4
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method private computeRatio()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getStrictAspectRatio(II)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-gt v0, v4, :cond_4

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 2
    invoke-static {v0, v4, v5, v6}, Lcom/android/camera/CameraSettings;->isNearAspectRatio(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    if-eqz v0, :cond_f

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    if-eqz v4, :cond_f

    .line 4
    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-eqz v5, :cond_2

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-eqz v6, :cond_2

    mul-int v7, v5, v4

    mul-int v8, v6, v0

    if-eq v7, v8, :cond_2

    .line 5
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    mul-int v7, v0, v6

    mul-int v8, v4, v5

    if-le v7, v8, :cond_1

    .line 6
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    mul-int/2addr v4, v5

    .line 7
    div-int/2addr v4, v6

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    int-to-float v4, v4

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 8
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 9
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 10
    :cond_1
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    mul-int/2addr v0, v6

    .line 11
    div-int/2addr v0, v5

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 12
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    int-to-float v0, v0

    int-to-float v2, v4

    div-float/2addr v0, v2

    .line 13
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 14
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 15
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 16
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 17
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 18
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 19
    :goto_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto/16 :goto_6

    .line 20
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 21
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    .line 22
    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41800000    # 16.0f

    if-eqz v5, :cond_a

    if-eq v5, v3, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 24
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    if-eq v0, v4, :cond_6

    .line 25
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 26
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    int-to-float v1, v0

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 27
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    move v1, v0

    goto/16 :goto_5

    .line 28
    :cond_6
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 29
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 30
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_2

    .line 31
    :cond_7
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 32
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 33
    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v5

    if-nez v5, :cond_9

    .line 34
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    mul-int/lit8 v1, v0, 0x10

    mul-int/lit8 v2, v4, 0x9

    if-le v1, v2, :cond_8

    int-to-float v1, v4

    mul-float/2addr v1, v6

    div-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v2, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 35
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    move v0, v1

    goto :goto_2

    :cond_8
    int-to-float v1, v0

    mul-float/2addr v1, v7

    div-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v2, v1

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 36
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto/16 :goto_5

    .line 37
    :cond_9
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 38
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 39
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    :goto_2
    move v1, v4

    goto :goto_5

    .line 40
    :cond_a
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 42
    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->isAspectRatio123(II)Z

    move-result v5

    const/high16 v8, 0x3f400000    # 0.75f

    if-nez v5, :cond_c

    .line 43
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v1

    xor-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    mul-int/lit8 v1, v0, 0x4

    mul-int/lit8 v2, v4, 0x3

    if-le v1, v2, :cond_b

    int-to-float v1, v4

    mul-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v2, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 44
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    move v0, v1

    goto :goto_3

    :cond_b
    int-to-float v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v1

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 45
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    move v4, v1

    goto :goto_3

    .line 46
    :cond_c
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 47
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 48
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 49
    :goto_3
    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_d

    .line 50
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 51
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 52
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    int-to-float v1, v0

    mul-float/2addr v1, v7

    div-float/2addr v1, v6

    float-to-int v1, v1

    .line 53
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v2, v8

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    goto :goto_4

    :cond_d
    move v1, v4

    .line 54
    :goto_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOo0()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 55
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 56
    :cond_e
    :goto_5
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 57
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 58
    :cond_f
    :goto_6
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderRect()V

    return-void
.end method

.method private initializePreviewTexture()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooOo()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceCreatedTimestamp:J

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireSurfaceTexture: setDefaultBufferSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STScreenNail"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    if-le v0, v2, :cond_3

    .line 11
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 13
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooOo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    .line 16
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    invoke-static {v0, p0, v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    const-string v0, "fullHandlerCapacity:set urgent display"

    .line 18
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, -0x8

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_1

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScreenNailCallback:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

    if-eqz v0, :cond_5

    .line 23
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;->onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;)V

    :cond_5
    return-void
.end method

.method private updateRenderSize()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 3
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    int-to-float v0, v0

    .line 5
    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireSurfaceTexture: mHasTexture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STScreenNail"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->initializePreviewTexture()V

    .line 7
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 8
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    const/16 v2, 0x2d0

    mul-int/2addr v1, v2

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    div-int/2addr v1, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 10
    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_1
    iput-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 16
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameProcessor:Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OoO0o()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->isAnimationGaussian()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isProcessorReady()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooOo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->checkThreadPriority()V

    :cond_1
    const-string v0, "STScreenNail"

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceTextureScreenNail draw start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "[%d %d %d %d] [%d %d %d %d]"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 16
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setPreviewSize(II)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 20
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 21
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 22
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateExtraTransformMatrix([F)V

    .line 24
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 25
    iget-object p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScreenNailCallback:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

    if-nez p2, :cond_2

    .line 26
    iget-object p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScreenNailCallback:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

    iget-object p3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {p2, p1, p3}, Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;->onSurfaceTexturePending(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 28
    iget-object p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 29
    :cond_3
    iget-object p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScreenNailCallback:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

    iget-object p3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {p2, p1, p3}, Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    .line 30
    :goto_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    const-string p1, "STScreenNail"

    const-string p2, "SurfaceTextureScreenNail draw end"

    .line 31
    invoke-static {p1, p2}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getCurrentTransform()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    return-object v0
.end method

.method public getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getReadPixelsHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsHeight:I

    return v0
.end method

.method public getReadPixelsWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsWidth:I

    return v0
.end method

.method public getRenderHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getRenderTargetRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    return v0
.end method

.method public getRenderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceCreatedTimestamp:J

    return-wide v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTranslateY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimationGaussian()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract noDraw()V
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract recycle()V
.end method

.method public abstract releaseBitmapIfNeeded()V
.end method

.method public releaseSurfaceTexture()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseSurfaceTexture: mHasTexture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STScreenNail"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    monitor-enter p0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 11
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceCreatedTimestamp:J

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScreenNailCallback:Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;->onSurfaceTextureReleased()V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 17
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 20
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 21
    :cond_4
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 22
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDisplayArea(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDisplayRect:Landroid/graphics/Rect;

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->computeRatio()V

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDisplayOrientation:I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    if-le p1, p2, :cond_0

    .line 1
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 2
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    .line 4
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    .line 5
    :goto_0
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getRenderAspectRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->computeRatio()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultBufferSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STScreenNail"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    :cond_1
    return-void
.end method

.method public setVideoStabilizationCropped(Z)V
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo0o0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    :goto_0
    return-void
.end method

.method public updateExtraTransformMatrix([F)V
    .locals 0

    return-void
.end method

.method public updateReadPixelsSize()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    .line 4
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    mul-int v3, v2, v1

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    mul-int v5, v4, v0

    if-le v3, v5, :cond_1

    .line 5
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsWidth:I

    mul-int/2addr v4, v0

    .line 6
    div-int/2addr v4, v2

    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsHeight:I

    goto :goto_0

    :cond_1
    mul-int/2addr v2, v1

    .line 7
    div-int/2addr v2, v4

    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsWidth:I

    .line 8
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsHeight:I

    .line 9
    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsWidth:I

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "updateReadPixelsSize: %dx%d"

    .line 11
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STScreenNail"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public updateRenderRect()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTargetRatio:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    mul-int/2addr v3, v4

    div-int/2addr v3, v0

    :goto_0
    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    .line 3
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    sub-int v3, v0, v3

    div-int/2addr v3, v1

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    mul-int/2addr v2, v0

    div-int/2addr v2, v4

    :goto_1
    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    .line 4
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    .line 5
    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    sub-int v5, v3, v4

    div-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    add-int/2addr v5, v6

    add-int v7, v4, v2

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    add-int/2addr v3, v6

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetX:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    mul-int/2addr v1, v3

    div-int/2addr v1, v0

    :goto_2
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTx:I

    .line 8
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    if-nez v0, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderOffsetY:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    mul-int/2addr v1, v3

    div-int/2addr v1, v0

    :goto_3
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTy:I

    .line 9
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTwidth:I

    .line 10
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTheight:I

    .line 11
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateReadPixelsSize()V

    return-void
.end method

.method public updateTransformMatrix([F)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isInVideoCategory()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    move v4, v0

    move v5, v1

    goto :goto_0

    :cond_0
    move v0, v2

    move v4, v0

    move v5, v3

    .line 2
    :goto_0
    iget-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    if-eqz v6, :cond_1

    .line 3
    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v0, v5

    .line 4
    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v4, v5

    move v5, v1

    .line 5
    :cond_1
    iget v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDisplayOrientation:I

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 6
    invoke-static {p1, v3, v5, v5, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v7, 0x0

    .line 7
    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDisplayOrientation:I

    int-to-float v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 8
    invoke-static {p1, v3, v0, v4, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v0, -0x41000000    # -0.5f

    .line 9
    invoke-static {p1, v3, v0, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_3
    return-void
.end method

.method public updateTransformMatrixForMirror([FI)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/16 v2, 0x5a

    if-eq p2, v2, :cond_0

    const/16 v2, 0xb4

    if-eq p2, v2, :cond_2

    const/16 v2, 0x10e

    if-eq p2, v2, :cond_0

    const-string p1, "STScreenNail"

    const-string/jumbo p2, "updateTransformMatrixForMirror unknown orientation"

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const/4 p2, 0x4

    .line 3
    aget v2, p1, p2

    neg-float v2, v2

    aput v2, p1, p2

    const/16 v2, 0xc

    .line 4
    aget p2, p1, p2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    aput v0, p1, v2

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    .line 5
    aget v2, p1, p2

    neg-float v2, v2

    aput v2, p1, p2

    const/16 v2, 0xd

    .line 6
    aget p2, p1, p2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    aput v0, p1, v2

    :cond_4
    :goto_2
    return-void
.end method
