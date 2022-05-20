.class public Lcom/android/camera/module/encoder/LiveMediaRecorder;
.super Ljava/lang/Object;
.source "LiveMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;,
        Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;
    }
.end annotation


# static fields
.field public static final ERR_INIT_RECORD:I = 0x1

.field public static final ERR_INVALID_ARGS:I = 0x0

.field public static final ERR_START_RECORD:I = 0x2

.field public static final START_OFFSET_MS:J = 0x1c2L

.field public static final TAG:Ljava/lang/String; = "LiveMediaRecorder"


# instance fields
.field public mCurrentVideoFilename:Ljava/lang/String;

.field public mCurrentVideoValues:Landroid/content/ContentValues;

.field public mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public mEnableAudio:Z

.field public mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field public mMediaAudioEncoder:Lcom/android/camera/module/encoder/MediaAudioEncoder;

.field public mMediaVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

.field public mMimeType:Ljava/lang/String;

.field public mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field public mOrientationCompensation:I

.field public mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

.field public mScopedStorage:Z

.field public mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

.field public mVideoSize:Lcom/android/camera/CameraSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const-string/jumbo v0, "video/avc"

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no video file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-object v2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z

    .line 10
    :goto_0
    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete empty video file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-object v2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method private releaseLastMediaRecorder()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseLastMediaRecorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->join()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    :cond_1
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseMediaRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->cleanupEmptyFile()V

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteVideoFile(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete invalid video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public handleVideoFile(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseMediaRecorder()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->deleteVideoFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v1, v0

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->closeFd()V

    :cond_2
    if-nez v1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz p1, :cond_4

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mScopedStorage:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->save(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-interface {p1, v0, v1}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->save(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;)Z
    .locals 8

    const-string/jumbo v4, "video/avc"

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;ZF)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;ZF)Z
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 2
    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;ZFI)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;ZFI)Z
    .locals 14

    move-object v1, p0

    move-object v0, p1

    move/from16 v2, p2

    move-object/from16 v10, p5

    move/from16 v11, p7

    .line 3
    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    move-object/from16 v5, p4

    .line 4
    iput-object v5, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMimeType:Ljava/lang/String;

    .line 5
    iput v2, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mOrientationCompensation:I

    .line 6
    iput-object v10, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    move/from16 v3, p6

    .line 7
    iput-boolean v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mEnableAudio:Z

    const-string v3, "_data"

    .line 8
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/android/camera/Util;->getResolution(Landroid/content/ContentValues;)Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    const/4 v12, 0x0

    if-nez v3, :cond_1

    .line 10
    iget-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, v12}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->onError(I)V

    :cond_0
    return v12

    .line 12
    :cond_1
    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mScopedStorage:Z

    if-eqz v3, :cond_2

    .line 13
    new-instance v3, Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/storage/mediastore/VideoFile;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v3, v12, v4}, Lcom/android/camera/storage/mediastore/VideoFile;->initialize(ZLandroid/content/Intent;)V

    .line 15
    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v3, p1}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    :cond_2
    const/4 v13, 0x1

    .line 16
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseLastMediaRecorder()V

    .line 17
    iget-boolean v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mScopedStorage:Z

    if-eqz v0, :cond_3

    .line 18
    new-instance v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v3}, Lcom/android/camera/storage/mediastore/VideoFile;->insertContentValues()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;-><init>(Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    goto :goto_0

    .line 19
    :cond_3
    new-instance v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    .line 20
    :goto_0
    new-instance v0, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    iget-object v6, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v8, v3, Lcom/android/camera/CameraSize;->width:I

    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v9, v3, Lcom/android/camera/CameraSize;->height:I

    move-object v3, v0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/module/encoder/MediaVideoEncoder;-><init>(Landroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;II)V

    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMediaVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    .line 21
    invoke-virtual {v0, v11}, Lcom/android/camera/module/encoder/MediaEncoder;->setRecordSpeed(F)V

    .line 22
    iget-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMediaVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    move/from16 v3, p8

    invoke-virtual {v0, v3}, Lcom/android/camera/module/encoder/MediaEncoder;->setRecordFps(I)V

    .line 23
    iget-boolean v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mEnableAudio:Z

    if-eqz v0, :cond_4

    .line 24
    new-instance v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-direct {v0, v3, v10}, Lcom/android/camera/module/encoder/MediaAudioEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;)V

    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMediaAudioEncoder:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    .line 25
    invoke-virtual {v0, v11}, Lcom/android/camera/module/encoder/MediaEncoder;->setRecordSpeed(F)V

    .line 26
    :cond_4
    iget-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->prepare()V

    .line 27
    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget v2, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mOrientationCompensation:I

    invoke-virtual {v0, v2}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v13

    :catch_0
    move-exception v0

    .line 29
    sget-object v2, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    const-string v3, "initializeRecorder: "

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    iget-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz v0, :cond_5

    .line 31
    invoke-interface {v0, v13}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->onError(I)V

    :cond_5
    return v12
.end method

.method public onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawAttribute;Z)V
    .locals 1

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMediaVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/camera/module/encoder/MediaVideoEncoder;->frameAvailableSoon(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Z)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMediaVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1, p1, v2}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/encoder/MediaVideoEncoder;->frameAvailableSoon(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseMediaRecorder()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseLastMediaRecorder()V

    return-void
.end method

.method public startRecorder(JZ)Z
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1c2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->startRecording(JZ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    iget-object p2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {p2}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 4
    iget-object p2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz p2, :cond_1

    const/4 p3, 0x2

    .line 5
    invoke-interface {p2, p3}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->onError(I)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseMediaRecorder()V

    :cond_2
    return p1
.end method

.method public stopRecorder()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->onStop()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public stopRecorder(J)Z
    .locals 2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->onStop()V

    :cond_1
    const-wide/16 p1, 0x3e8

    cmp-long p1, v0, p1

    const/4 p2, 0x1

    if-gez p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->handleVideoFile(Z)V

    return p2
.end method
