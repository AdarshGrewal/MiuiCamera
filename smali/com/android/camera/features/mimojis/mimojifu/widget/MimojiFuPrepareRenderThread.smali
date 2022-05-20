.class public final Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;
.super Ljava/lang/Thread;
.source "MimojiFuPrepareRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;,
        Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;
    }
.end annotation


# static fields
.field public static BACKGROUND_COLOR:[F = null

.field public static final MSG_AVATAR_INIT:I = 0x20

.field public static final MSG_DRAW_REQUESTED:I = 0x10

.field public static final MSG_QUIT_REQUESTED:I = 0x40

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mEGLWrapper:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EGLWrapper;

.field public volatile mEglContextPrepared:Z

.field public mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

.field public final mHeight:I

.field public volatile mIsCacheBuilding:Z

.field public volatile mIsNeedInit:Z

.field public final mLock:Ljava/lang/Object;

.field public mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

.field public volatile mReady:Z

.field public volatile mRequestDraw:I

.field public volatile mRequestRelease:Z

.field public final mWidth:I

.field public onFuPrepareListener:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->BACKGROUND_COLOR:[F

    return-void

    :array_0
    .array-data 4
        0x3de0ded3    # 0.1098f
        0x3df0d845    # 0.1176f
        0x3e0068dc    # 0.1254f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mReady:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestRelease:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mEglContextPrepared:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mIsNeedInit:Z

    .line 7
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mWidth:I

    .line 8
    iput p3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHeight:I

    .line 9
    iput-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->onFuPrepareListener:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->doDraw()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->doInit()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->doQuit()V

    return-void
.end method

.method private doDraw()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mEglContextPrepared:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestDraw:I

    const/4 v2, 0x1

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestDraw:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestDraw:I

    .line 6
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getIsInitItemFinish()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->draw()V

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->isFuGLPrepared()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mIsCacheBuilding:Z

    .line 11
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->isFuIsGLPrepared()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->clearOfflineAll()V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->onFuPrepare()V

    .line 15
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    const-string v1, " onFuPrepare()  1 "

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->draw()V

    goto :goto_1

    .line 17
    :cond_6
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    const-string v1, " onFuPrepare()  2 "

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->onFuPrepare()V

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doInit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getIsInitItemFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->onSurfaceCreated()Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mIsNeedInit:Z

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->draw()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->init()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private doQuit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestRelease:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestRelease:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->release()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method private draw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestRelease:Z

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mEglContextPrepared:Z

    if-nez v1, :cond_2

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_2
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestDraw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mRequestDraw:I

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x10

    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onFuPrepare()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    const-string v1, " mMimojiFuManager == null "

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->clearOfflineAll()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->onFuPrepareListener:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$OnFuPrepareListener;->onFuPrepareListener()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    const-string v1, " onFuPrepareListener == null "

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mIsCacheBuilding:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->quit()V

    return-void
.end method

.method private prepare()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EGLWrapper;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mWidth:I

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EGLWrapper;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mEGLWrapper:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EGLWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EGLWrapper;->makeCurrent()Z

    return-void
.end method

.method private release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mEGLWrapper:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EGLWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EGLWrapper;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mEGLWrapper:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EGLWrapper;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mIsCacheBuilding:Z

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mReady:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "render thread is not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMimojiFuManager()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x20

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public initAvatar(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initAvatar  mMimojiFuManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mIsCacheBuilding:Z

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mMimojiFuManager:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->init()V

    return-void
.end method

.method public isCacheBuilding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mIsCacheBuilding:Z

    return v0
.end method

.method public quit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x40

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$1;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare render thread: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mEglContextPrepared:Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->prepare()V

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mEglContextPrepared:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    const-string v5, "FATAL: failed to prepare render thread"

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->release()V

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 10
    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mReady:Z

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 12
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_2
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mReady:Z

    .line 16
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mHandler:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare render thread: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 19
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 20
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public waitUntilReady()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitUntilReady() interrupted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
