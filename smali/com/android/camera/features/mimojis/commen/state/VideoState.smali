.class public Lcom/android/camera/features/mimojis/commen/state/VideoState;
.super Ljava/lang/Object;
.source "VideoState.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/state/IMiState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;
    }
.end annotation


# static fields
.field public static final START_OFFSET_MS:J = 0x384L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Lcom/android/camera/ActivityBase;

.field public mCountDownTimer:Landroid/os/CountDownTimer;

.field public final mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

.field public mMaxVideoDurationInMs:I

.field public mMediaEncoderListener:Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;

.field public final mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

.field public final mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

.field public final mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mNeedThumbnail:Z

.field public mRecordingStartTime:J

.field public mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public mStopRecordType:I

.field public final mTextureId:[I

.field public mTotalRecordingTime:J

.field public final mUiHandler:Landroid/os/Handler;

.field public mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

.field public final trans:[F

.field public final transTemp:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/state/VideoState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 3
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->transTemp:[F

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->trans:[F

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mTextureId:[I

    .line 7
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getContext()Lcom/android/camera/ActivityBase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    .line 9
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mUiHandler:Landroid/os/Handler;

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 2

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(I)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v1, 0x7f1204ea

    .line 8
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    return-void
.end method

.method public static synthetic OooO00o(Landroid/graphics/Rect;[B)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/16 p1, 0xb4

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf9

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->setPreviewCover(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/commen/state/VideoState;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mTotalRecordingTime:J

    return-wide v0
.end method

.method public static synthetic access$002(Lcom/android/camera/features/mimojis/commen/state/VideoState;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mTotalRecordingTime:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/commen/state/VideoState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMaxVideoDurationInMs:I

    return p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/commen/state/VideoState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->enableStopButton()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/commen/state/VideoState;)Lcom/android/camera/ActivityBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mimojis/commen/state/VideoState;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mStopRecordType:I

    return p0
.end method

.method private enableStopButton()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->enableStopButton(ZZ)V

    :cond_0
    return-void
.end method

.method private readPreviewPixels(Lcom/android/camera/Camera;Landroid/graphics/Rect;)[B
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v1

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 3
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->trans:[F

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    mul-int p1, v4, v5

    mul-int/lit8 p1, p1, 0x4

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object v8, p1

    .line 6
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private saveVideoDirect()V
    .locals 5

    :try_start_0
    const-string v0, "MIMOJI"

    const-string v1, "mp4"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->copy2ShareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v3, :cond_0

    .line 7
    check-cast v2, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 8
    invoke-virtual {v2, v1, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startSaveToLocal(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveVideoDirect: exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private startRecording()V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start record..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string v1, "is stopRecording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDrawFrame: mimojiControl is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mStopRecordType:I

    .line 8
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-nez v2, :cond_3

    .line 9
    new-instance v2, Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-direct {v2}, Lcom/android/camera/module/encoder/LiveMediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMediaEncoderListener:Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;-><init>(Lcom/android/camera/features/mimojis/commen/state/VideoState;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMediaEncoderListener:Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "video/hevc"

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "video/avc"

    :goto_0
    move-object v7, v2

    .line 13
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 15
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 16
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_NORMAL_CACHE_FILE:Ljava/lang/String;

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3, v3}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_6
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 18
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 19
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    div-double/2addr v3, v5

    double-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/CameraSize;->width:I

    int-to-double v8, v4

    div-double/2addr v8, v5

    double-to-int v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v2

    :goto_1
    move-object v4, v2

    .line 20
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getOrientation()I

    move-result v5

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    .line 21
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMediaEncoderListener:Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual/range {v3 .. v10}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;ZF)Z

    move-result v2

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->updateRecordingTime()V

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0x3a5

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v3, :cond_7

    .line 25
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-interface {v4}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isAudioSourceCamcorder(I)Z

    move-result v4

    goto :goto_2

    :cond_7
    move v4, v0

    :goto_2
    if-eqz v2, :cond_a

    .line 26
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->startRecorder(JZ)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 27
    :cond_8
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-interface {v2}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_9

    .line 28
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isBluetoothScoOn()Z

    move-result v3

    goto :goto_3

    :cond_9
    move v3, v0

    .line 29
    :goto_3
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    invoke-interface {v4}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->getMimojiPara()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, v2, v0, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2CaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZ)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setActionState(I)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mNeedThumbnail:Z

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mRecordingStartTime:J

    :cond_a
    :goto_4
    return-void

    .line 33
    :cond_b
    :goto_5
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "repeat recording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initModeState()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setActionState(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZZ)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    iget-object v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    const/4 v9, 0x0

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDrawFrame: mimojiControl is null"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 3
    :cond_0
    iget-object v6, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mTextureId:[I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->drawPreview(Landroid/graphics/Rect;IIZ[IZ)Z

    .line 4
    iget-object v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_1

    return v9

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz v1, :cond_4

    .line 6
    iget-object v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v2

    const/4 v4, 0x3

    if-ge v2, v4, :cond_2

    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    move v2, v9

    .line 8
    :goto_0
    iget-object v4, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mTextureId:[I

    aget v5, v4, v9

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 9
    iget-object v10, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    aget v11, v4, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->init(IIIIIZI)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    .line 10
    iget-object v10, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    iget-object v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getFboUtils()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    move-result-object v1

    iget-object v4, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-virtual {v1, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->drawFBO(Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->init(IIIIIZI)Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    .line 11
    iget-object v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget-object v2, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimoijTexAttribute:Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawAttribute;Z)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v2, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v4, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->trans:[F

    invoke-virtual {v2, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 13
    iget-object v2, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->transTemp:[F

    invoke-static {v2, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 14
    iget-object v2, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->transTemp:[F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->matrixForCrop([FFFFF)V

    .line 15
    iget-object v14, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->trans:[F

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->transTemp:[F

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v10, v14

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 16
    iget-object v2, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    iget-object v4, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->trans:[F

    invoke-virtual {v2, v1, v4, v8}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 17
    iget-object v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget-object v2, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Z)V

    .line 18
    :cond_4
    :goto_1
    iget-boolean v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mNeedThumbnail:Z

    if-eqz v1, :cond_5

    .line 19
    iput-boolean v9, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mNeedThumbnail:Z

    .line 20
    iget-object v1, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mContext:Lcom/android/camera/ActivityBase;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-direct {v0, v1, v8}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->readPreviewPixels(Lcom/android/camera/Camera;Landroid/graphics/Rect;)[B

    move-result-object v1

    .line 21
    iget-object v2, v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0oO;

    invoke-direct {v4, v8, v1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0oO;-><init>(Landroid/graphics/Rect;[B)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return v3
.end method

.method public onModeStateBack(IZ)V
    .locals 0

    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onFaceDetectResult(Landroid/media/Image;)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mUiHandler:Landroid/os/Handler;

    new-instance p3, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO;

    invoke-direct {p3, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    return-void

    .line 5
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onDrawFrame: mimojiControl is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecordStopped(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRecordStopped: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setActionState(I)V

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onRecordStopped: isCancel"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0o;

    invoke-virtual {p1, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->saveVideoDirect()V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfb

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz v0, :cond_2

    .line 11
    sget-object p1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_NORMAL_CACHE_FILE:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mTotalRecordingTime:J

    invoke-interface {v0, p1, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->combineVideoAudio(Ljava/lang/String;J)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string v1, "gifEditor is null : "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0oo;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0oo;-><init>(Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 14
    :cond_3
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mStopRecordType:I

    if-eqz v0, :cond_4

    .line 15
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->saveVideoDirect()V

    .line 16
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0o0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0o0;-><init>(Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void

    .line 17
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfc

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p1, :cond_5

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setActionState(I)V

    .line 20
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mStopRecordType:I

    invoke-interface {p1, v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->combineVideoAudio(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->stopRecording(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->startRecording()V

    :goto_0
    return-void
.end method

.method public stopRecording(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "repeat call stopRecording: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stop record..."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setActionState(I)V

    .line 5
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mStopRecordType:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->enableStopButton()V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf9

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz p1, :cond_4

    .line 12
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mTotalRecordingTime:J

    invoke-interface {p1, v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->setRecordingTime(J)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz p1, :cond_5

    .line 14
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mRecordingStartTime:J

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->stopRecorder(J)Z

    :cond_5
    return-void
.end method

.method public updateRecordingTime()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mTotalRecordingTime:J

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1388

    .line 5
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMaxVideoDurationInMs:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a98

    .line 6
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMaxVideoDurationInMs:I

    .line 7
    :goto_0
    new-instance v0, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mMaxVideoDurationInMs:I

    int-to-long v1, v1

    const-wide/16 v3, 0x384

    add-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/features/mimojis/commen/state/VideoState$1;-><init>(Lcom/android/camera/features/mimojis/commen/state/VideoState;JJ)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
