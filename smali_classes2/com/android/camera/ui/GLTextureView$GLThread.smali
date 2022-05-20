.class public Lcom/android/camera/ui/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLThread"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GLThread"


# instance fields
.field public mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

.field public mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mExited:Z

.field public mFinishedCreatingEglSurface:Z

.field public mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field public mHasSurface:Z

.field public mHaveEglContext:Z

.field public mHaveEglSurface:Z

.field public mHeight:I

.field public mPaused:Z

.field public mRenderComplete:Z

.field public mRenderMode:I

.field public mRequestPaused:Z

.field public mRequestRender:Z

.field public mShouldExit:Z

.field public mShouldReleaseEglContext:Z

.field public mSizeChanged:Z

.field public mSurfaceIsBad:Z

.field public mWaitingForSurface:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    .line 5
    iput v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 7
    iput v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    .line 8
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;II)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    .line 12
    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    .line 13
    iput p3, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 15
    iput v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    .line 16
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$1202(Lcom/android/camera/ui/GLTextureView$GLThread;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Lcom/android/camera/ui/GLTextureView$EglHelper;

    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/android/camera/ui/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 3
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v6, 0x0

    :goto_0
    const/4 v14, 0x0

    .line 4
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 5
    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_0

    .line 6
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 7
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 8
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 10
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 11
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    const/4 v0, 0x0

    goto/16 :goto_7

    .line 13
    :cond_1
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_2

    .line 14
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    .line 15
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    iput-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    .line 16
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 17
    :goto_3
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v2, :cond_3

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v2, 0x0

    .line 20
    iput-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 22
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 23
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_5

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v0, :cond_8

    .line 25
    iget-boolean v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_8

    .line 26
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GLTextureView;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    .line 27
    :cond_6
    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->access$1000(Lcom/android/camera/ui/GLTextureView;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_7

    .line 28
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    :cond_8
    if-eqz v0, :cond_9

    .line 30
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    .line 32
    :cond_9
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_b

    .line 33
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_a

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_a
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 37
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 38
    :cond_b
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 40
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v4, :cond_d

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 42
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 43
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 44
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-nez v0, :cond_f

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_5

    .line 45
    :cond_e
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    .line 46
    :try_start_4
    iget-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    .line 47
    :try_start_5
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 48
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v7, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 49
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    .line 50
    throw v0

    .line 51
    :cond_f
    :goto_5
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 53
    :cond_10
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_1e

    .line 54
    iget-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_11

    .line 55
    iget v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    .line 56
    iget v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    const/4 v8, 0x0

    .line 57
    iput-boolean v8, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    move v11, v0

    move v12, v2

    move v0, v8

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    .line 58
    :goto_6
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 59
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 60
    :goto_7
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v14, :cond_12

    .line 61
    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_12
    if-eqz v8, :cond_14

    .line 62
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 63
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v8, 0x1

    .line 64
    :try_start_7
    iput-boolean v8, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 65
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit v2

    move v8, v0

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 67
    :cond_13
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v15, 0x1

    .line 68
    :try_start_9
    iput-boolean v15, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 69
    iput-boolean v15, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 70
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 71
    monitor-exit v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_14
    :goto_8
    if-eqz v9, :cond_15

    .line 72
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljavax/microedition/khronos/opengles/GL10;

    .line 73
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    move v9, v0

    :cond_15
    if-eqz v7, :cond_17

    .line 74
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GLTextureView;

    if-eqz v2, :cond_16

    .line 75
    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->access$1100(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    iget-object v7, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    iget-object v7, v7, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v6, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    move v7, v0

    :cond_17
    if-eqz v10, :cond_19

    .line 76
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GLTextureView;

    if-eqz v2, :cond_18

    .line 77
    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->access$1100(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_18
    move v10, v0

    .line 78
    :cond_19
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GLTextureView;

    if-eqz v2, :cond_1a

    .line 79
    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->access$1100(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 80
    :cond_1a
    iget-object v2, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/android/camera/ui/GLTextureView$EglHelper;->swap()I

    move-result v2

    const/16 v15, 0x3000

    if-eq v2, v15, :cond_1c

    const/16 v15, 0x300e

    if-eq v2, v15, :cond_1b

    const-string v15, "GLThread"

    const-string v0, "eglSwapBuffers"

    .line 81
    invoke-static {v15, v0, v2}, Lcom/android/camera/ui/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v0, 0x1

    .line 83
    :try_start_b
    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 84
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 85
    monitor-exit v2

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_1b
    const/4 v0, 0x1

    move v3, v0

    goto :goto_9

    :cond_1c
    const/4 v0, 0x1

    :goto_9
    if-eqz v13, :cond_1d

    move v4, v0

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 86
    :cond_1e
    :try_start_d
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    .line 87
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    :try_start_f
    const-string v2, "GLThread"

    const-string v3, "got exception"

    .line 88
    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 89
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 90
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 92
    monitor-exit v2

    return-void

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0

    .line 93
    :goto_a
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 94
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 96
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 4
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    .line 3
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 5
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    .line 3
    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 7
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 10
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 12
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestExitAndWait()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    .line 3
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 2
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    .line 3
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catch_0
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    .line 3
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceCreated()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 4
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    .line 3
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->access$900()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
