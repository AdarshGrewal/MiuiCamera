.class public Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;
.super Ljava/lang/Object;
.source "MimojiVideoEditorImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;,
        Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;,
        Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public composeTime:J

.field public mContext:Landroid/content/Context;

.field public mEncodeHeight:I

.field public mEncodeWidth:I

.field public mGifSourcePath:Ljava/lang/String;

.field public mIsComposing:Z

.field public mIsRelease:Z

.field public volatile mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

.field public volatile mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

.field public final mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public volatile mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

.field public mOrientation:I

.field public mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field public mVideoSavePath:Ljava/lang/String;

.field public mVoiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWaitingResultSurfaceTexture:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "vvc++_shared"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "ffmpeg"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mimoji_tracking"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mimoji_soundsupport"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mimoji_video2gif"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x780

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mEncodeWidth:I

    const/16 v0, 0x438

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mEncodeHeight:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsRelease:Z

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->startPlay(Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic access$302(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    return p1
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->onSuccess(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->composeTime:J

    return-wide v0
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->onFail()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mWaitingResultSurfaceTexture:Z

    return p0
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private declared-synchronized onFail()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void onFail[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->onCombineError()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void onFail null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onSuccess(Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->concatResult(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :try_start_1
    const-string v2, "mimoji_normal"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mimoji_deal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string p2, "MIMOJI"

    const-string v2, "mp4"

    .line 5
    invoke-static {p2, v2}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p2, v3, v1}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->copy2ShareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Landroid/net/Uri;

    move-object p2, v2

    .line 8
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->onFail()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, v1

    .line 10
    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->onCombineSuccess([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    sget-object p2, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji void cnSuccess[savePath] Exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->onFail()V

    .line 13
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    goto :goto_1

    .line 14
    :cond_4
    sget-object p1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string p2, "mimoji void cnSuccess[savePath] null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->onFail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized release()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsRelease:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->cancelVideo2gif()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    if-eqz v1, :cond_1

    .line 7
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    .line 10
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    .line 11
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    .line 12
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startPlay(Landroid/view/Surface;)V
    .locals 3

    .line 6
    sget-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void startPlay[surface]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsRelease:Z

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mWaitingResultSurfaceTexture:Z

    .line 9
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setScaleType(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setScaleType(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    .line 14
    :goto_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mVideoSavePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mEncodeWidth:I

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mEncodeHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setVideoSpecifiedSize(II)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1}, Lcom/android/camera/ui/TextureVideoView;->start()V

    return-void

    .line 19
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->release()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->pausePlay()Z

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->combineVideoAudio(Ljava/lang/String;I)V

    return-void
.end method

.method public cancelVideo2gif()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->CancelGifConvert(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public changeTimbre()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0O0/OooO0O0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0O0/OooO0O0;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public declared-synchronized combineVideoAudio(Ljava/lang/String;I)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v2, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimoji void combineVideoAudio[savePath]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->composeTime:J

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsRelease:Z

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$1;)V

    iput-object v2, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v2

    const-class v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    sget-object v3, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v5, "mimoji void startPlay[surface]  timbre start"

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v3, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mVoiceMap:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mVoiceMap:Ljava/util/Map;

    .line 11
    :cond_2
    iget-object v3, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mVoiceMap:Ljava/util/Map;

    const-string v5, "mode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mVoiceMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddVoiceChangeFilter(Ljava/util/Map;)I

    const/high16 v16, 0x3f800000    # 1.0f

    .line 13
    iget-object v2, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->setStopRecordType(I)V

    const-wide/16 v6, 0x7d0

    .line 14
    sget-object v8, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    const/4 v9, 0x1

    const/16 v10, 0x1e

    const/16 v11, 0x5dc

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    iget-object v0, v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    move-object/from16 v5, p1

    move-object/from16 v17, v0

    invoke-static/range {v5 .. v17}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->Convert(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    goto :goto_0

    .line 15
    :cond_3
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->onSuccess(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji videoeditor init videoUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mWaitingResultSurfaceTexture:Z

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    .line 4
    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mVideoSavePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$1;)V

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    if-nez p2, :cond_1

    .line 9
    new-instance p2, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$1;)V

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    if-nez p2, :cond_2

    .line 11
    new-instance p2, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$1;)V

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/TextureVideoView;->setIsNeedAudio(Z)V

    return v0
.end method

.method public isAvaliable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->isComposing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComposing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestory()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiActionState(I)V

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v2, "mimoji void onDestory[]"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->release()V

    return-void
.end method

.method public pausePlay()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void pausePlay[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public resumePlay()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void resumePlay[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->resume()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRecordParameter(III)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mOrientation:I

    .line 2
    sget-object p3, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecordParameter:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mEncodeWidth:I

    .line 4
    iput p2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mEncodeHeight:I

    return-void
.end method

.method public startPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mVideoSavePath:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mWaitingResultSurfaceTexture:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->start()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->startPlay(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->release()V

    return-void
.end method

.method public video2gif(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    iput-object v2, v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    const/16 v3, 0xfa

    if-eqz v1, :cond_4

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v4, v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    if-nez v4, :cond_1

    .line 4
    new-instance v4, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    invoke-direct {v4, v0, v2}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$1;)V

    iput-object v4, v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->setCount(I)V

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    const/4 v2, 0x0

    move v4, v2

    .line 7
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_MP4_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 10
    sget-object v5, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    .line 11
    sget-object v5, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " source :"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " target : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iput-object v7, v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    .line 13
    iget-object v5, v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    invoke-virtual {v5, v4}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->setIndex(I)V

    const/16 v9, 0x14

    const v10, 0x5f5e100

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x1388

    .line 14
    iget-object v5, v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v16, v5

    invoke-static/range {v7 .. v16}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->ConvertGif(Ljava/lang/String;Ljava/lang/String;IIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    sget-object v5, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v6, "mimoji void video2gif[] cover fail"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    .line 17
    invoke-virtual {v5, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz v5, :cond_2

    .line 18
    iput-boolean v2, v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    .line 19
    invoke-interface {v5}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->coverEmoticonError()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    .line 20
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz v1, :cond_5

    .line 22
    invoke-interface {v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->coverEmoticonSuccess()V

    :cond_5
    return-void
.end method
