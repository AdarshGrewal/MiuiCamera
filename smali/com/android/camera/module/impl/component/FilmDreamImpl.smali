.class public Lcom/android/camera/module/impl/component/FilmDreamImpl;
.super Ljava/lang/Object;
.source "FilmDreamImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$FilmDreamConfig;
.implements Lcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;


# static fields
.field public static final FILM_DIR:Ljava/lang/String;

.field public static final SEGMENTS_PATH:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "FilmDreamImpl"

.field public static final TEMPLATE_PATH:Ljava/lang/String;

.field public static final WORKSPACE_PATH:Ljava/lang/String;


# instance fields
.field public mActivity:Lcom/android/camera/ActivityBase;

.field public mAudioController:Lcom/android/camera/module/AudioController;

.field public mComposeFile:Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;

.field public mContext:Landroid/content/Context;

.field public mCountDownTimer:Landroid/os/CountDownTimer;

.field public mCurrentFilmItem:Lcom/android/camera/fragment/film/FilmItem;

.field public mCurrentOrientation:I

.field public mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

.field public mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

.field public mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

.field public mFrameAvailable:Z

.field public mHandler:Landroid/os/Handler;

.field public volatile mInited:Z

.field public mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

.field public mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

.field public mMediaRecorderRecording:Z

.field public mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

.field public mNeedRequestRender:Z

.field public mNeedStop:Z

.field public mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

.field public mPlayFinished:Z

.field public mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public mStartTime:J

.field public mTempVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalRecordingTime:J

.field public mTotalTime:J

.field public mValidTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/film/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->FILM_DIR:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FilmDreamImpl;->FILM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "template/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TEMPLATE_PATH:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FilmDreamImpl;->FILM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "workspace/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->WORKSPACE_PATH:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FilmDreamImpl;->WORKSPACE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "segments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2904

    .line 2
    iput-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalRecordingTime:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    .line 4
    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    .line 7
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mHandler:Landroid/os/Handler;

    .line 8
    new-instance p1, Lcom/android/camera/module/AudioController;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFrameAvailable:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFrameAvailable:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/ui/RenderEngineAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->notifyModuleRecordingFinish()V

    return-void
.end method

.method public static synthetic access$502(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedStop:Z

    return p1
.end method

.method public static synthetic access$602(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mPlayFinished:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/data/observeable/FilmDreamProcessing;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "copyFile error"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x1000

    :try_start_2
    new-array p2, p2, [B

    .line 3
    :goto_0
    invoke-virtual {v3, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 4
    invoke-virtual {p1, p2, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6
    :catch_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    sget-object p2, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v2

    :goto_2
    move-object v2, v3

    goto :goto_6

    :catch_3
    move-exception p2

    move-object p1, v2

    :goto_3
    move-object v2, v3

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object p1, v2

    goto :goto_6

    :catch_4
    move-exception p2

    move-object p1, v2

    .line 8
    :goto_4
    :try_start_5
    sget-object v3, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_2

    .line 9
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_2
    if-eqz p1, :cond_3

    .line 10
    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 11
    sget-object p2, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_5
    return v1

    :catchall_3
    move-exception p2

    :goto_6
    if-eqz v2, :cond_4

    .line 12
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_4
    if-eqz p1, :cond_5

    .line 13
    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p1

    .line 14
    sget-object v1, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :cond_5
    :goto_7
    throw p2

    :cond_6
    :goto_8
    return v1
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/FilmDreamImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private makeSureFilmDreamProcess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a3

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    :cond_0
    return-void
.end method

.method private notifyModuleRecordingFinish()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->resetFlag()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xd4

    if-ne v1, v2, :cond_0

    .line 4
    check-cast v0, Lcom/android/camera/module/FilmDreamModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/module/FilmDreamModule;->stopVideoRecording(ZZ)V

    :cond_0
    return-void
.end method

.method private prepareEffectGraph()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    invoke-direct {v2}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    .line 4
    invoke-virtual {v2}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;->ConstructMediaEffectGraph()V

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;->AddSourcesAndEffectBySourcesPath([Ljava/lang/String;[F)V

    return-void
.end method

.method private resetFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedRequestRender:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedStop:Z

    return-void
.end method

.method private setTotalTime()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalTime:J

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    iget-wide v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->setTotalTime(J)V

    return-void
.end method

.method private startRecordingTime()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v7, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;

    iget-wide v3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalRecordingTime:J

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;JJLcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mStartTime:J

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public OnNeedStopRecording()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnNeedStopRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/impl/component/FilmDreamImpl$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$4;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnNotifyRender()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnNotifyRender"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedRequestRender:Z

    return-void
.end method

.method public OnReceiveFirstFrame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->CanRenderFrame()V

    return-void
.end method

.method public OnRecordFailed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnRecordFailed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnRecordFinish(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mValidTime:J

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->setTotalTime()V

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnRecordFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mTotalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnRecordFinish(Ljava/lang/String;JJ)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->OnRecordFinish(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO00o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release render"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->release()V

    :cond_1
    return-void
.end method

.method public canFinishRecording()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canRecordingStop()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public combineVideoAudio(Lcom/android/camera/storage/mediastore/VideoFile;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object p1

    .line 7
    invoke-static {v0, v1, p1}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->transfer(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    return-void
.end method

.method public combineVideoAudio(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    return-void
.end method

.method public getAlgorithmPreviewSize(Ljava/util/List;)Lcom/android/camera/CameraSize;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->getPreviewRatio()F

    move-result v0

    float-to-double v0, v0

    const/16 v2, 0xb0

    const/16 v3, 0x90

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1
.end method

.method public getAuthResult()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getPreviewRatio()F
    .locals 1

    const v0, 0x3fe38e38

    return v0
.end method

.method public getProcessorType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRecordSpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSegmentPath(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getStartRecordingTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mStartTime:J

    return-wide v0
.end method

.method public getTotalRecordingTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getTotalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public initPreview(IIILcom/android/camera/CameraScreenNail;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    const-wide/16 p3, 0x0

    .line 4
    iput-wide p3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mValidTime:J

    :cond_0
    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFrameAvailable:Z

    .line 6
    iput-boolean p3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInited:Z

    .line 7
    new-instance p4, Landroid/graphics/SurfaceTexture;

    invoke-direct {p4, p3}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 8
    invoke-virtual {p4, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance p2, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;

    invoke-direct {p2, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public initResource()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->FILM_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    .line 2
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 3
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->WORKSPACE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 4
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    return-void
.end method

.method public isInited()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInited:Z

    return v0
.end method

.method public isProcessorReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)Z
    .locals 6

    .line 1
    iget-boolean p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFrameAvailable:Z

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result p4

    if-nez p4, :cond_7

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    const/4 v0, 0x1

    if-nez p4, :cond_2

    .line 4
    new-instance p4, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    invoke-direct {p4}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;-><init>()V

    iput-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    .line 5
    new-instance p4, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    invoke-direct {p4, v1}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;-><init>(Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;)V

    iput-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p4, v1}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->init(Landroid/graphics/SurfaceTexture;)V

    .line 7
    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p4, v1, v2, v3, v4}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->SetWindowSize(IIII)V

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInited:Z

    .line 9
    :cond_2
    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {p4}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->updateTexImage()V

    .line 10
    iget-wide v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mValidTime:J

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-gtz p4, :cond_3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mValidTime:J

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->isRecording()Z

    move-result p4

    const/16 v1, 0x4000

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p4, :cond_6

    iget-boolean p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedStop:Z

    if-eqz p4, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->bind(Landroid/graphics/Rect;II)V

    .line 14
    iget-object p2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    iget-object p3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide p3

    const-wide/32 v4, 0xf4240

    div-long/2addr p3, v4

    const/16 v4, 0xf00

    const/16 v5, 0x870

    invoke-virtual {p2, p3, p4, v4, v5}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->NeedProcessTexture(JII)V

    .line 15
    iget-object p2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {p2}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->getCanRender()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    invoke-virtual {p1}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->RenderFrame()V

    goto :goto_0

    .line 17
    :cond_5
    invoke-static {v3, v3, v3, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 18
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 19
    iget-object p2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p4

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    invoke-virtual {p2, p3, p4, v2, v1}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->DrawCameraPreview(IIII)V

    :goto_0
    return v0

    .line 20
    :cond_6
    :goto_1
    invoke-static {v3, v3, v3, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 21
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 22
    iget-object p2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p4

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    invoke-virtual {p2, p3, p4, v2, v1}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->DrawCameraPreview(IIII)V

    :cond_7
    :goto_2
    return v0
.end method

.method public onOrientationChanged(III)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    add-int/2addr p2, p3

    rem-int/lit16 p2, p2, 0x168

    if-ne p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iput p2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->SetRotateAngle(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public pausePlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->PausePreView()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 7

    const-string/jumbo v0, "vvc++_shared"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "ffmpeg"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "inception_video"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mContext:Landroid/content/Context;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/SystemUtil;->Init(Landroid/content/Context;I)V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getCurrentFilmItem()Lcom/android/camera/fragment/film/FilmItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->prepare(Lcom/android/camera/fragment/vv/VVItem;)V

    .line 7
    new-instance v1, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    invoke-direct {v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    const/16 v2, 0x780

    const/16 v3, 0x438

    const/high16 v4, 0x1400000

    const/16 v5, 0x1e

    move-object v6, p0

    .line 8
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->ConstructMediaEffectCamera(IIIILcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "h264"

    goto :goto_0

    :cond_0
    const-string v1, "h265"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->SetEncoderType(Ljava/lang/String;)Z

    return-void
.end method

.method public prepare(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 1

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    if-nez p1, :cond_0

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getTempVideoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->resetFlag()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->stopRecording()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release mediaCamera"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->DestructMediaEffectCamera()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release mediaPlayer"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->StopPreView()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->DestructMediaPlayer()V

    .line 12
    iput-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    if-eqz v0, :cond_3

    .line 14
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release mediaEffectGraph"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;->DestructMediaEffectGraph()V

    .line 16
    iput-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/xiaomi/inceptionmediaprocess/SystemUtil;->UnInit()V

    .line 19
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo0o0;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method

.method public resumePlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->ResumePreView()Z

    :cond_0
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 0

    return-void
.end method

.method public setRecordSpeed(I)V
    .locals 0

    return-void
.end method

.method public startPlay(Landroid/view/Surface;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->makeSureFilmDreamProcess()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->prepareEffectGraph()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mPlayFinished:Z

    .line 4
    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    invoke-direct {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;-><init>(Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->ConstructMediaPlayer()Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    new-instance v1, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->SetPlayerNotify(Lcom/xiaomi/inceptionmediaprocess/EffectNotifier;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer$SurfaceGravity;

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->setGravity(Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer$SurfaceGravity;II)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->EnableUserAdjustRotatePlay(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->SetGraphLoop(Z)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {p1}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->StartPreView()V

    return-void
.end method

.method public startRecording()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->makeSureFilmDreamProcess()V

    .line 4
    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteSubFiles(Ljava/lang/String;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/AudioController;->stopAudio()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    iget-object v0, v0, Lcom/android/camera/fragment/film/FilmItem;->configJsonPath:Ljava/lang/String;

    const/16 v1, 0xd4

    .line 7
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    iget v3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->SetOrientation(I)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    iget v3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    add-int/lit8 v3, v3, -0x5a

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->setThumbnailOrientation(I)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    if-eqz v2, :cond_0

    .line 11
    iget v3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->SetRotateAngle(I)V

    .line 12
    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {v2, v1}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->EnableFilmPicture(Z)V

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {v2}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ResetRenderFrame()V

    .line 14
    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    invoke-virtual {v2, v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->EnableFilmPicture(Z)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    sget-object v2, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->StartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->startRecordingTime()V

    return-void
.end method

.method public stopPlayWhenSave()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->StopPreView()V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->setTotalTime()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->StopRecording()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    return-void
.end method

.method public trackVideoParams()V
    .locals 0

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->release()V

    return-void
.end method
