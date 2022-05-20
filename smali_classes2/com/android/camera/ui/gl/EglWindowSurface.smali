.class public Lcom/android/camera/ui/gl/EglWindowSurface;
.super Lcom/android/camera/ui/gl/EglSurfaceBase;
.source "EglWindowSurface.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EglWindowSurface"


# instance fields
.field public mAvailability:Z

.field public mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/gl/EglCore;Landroid/graphics/SurfaceTexture;[I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/gl/EglSurfaceBase;-><init>(Lcom/android/camera/ui/gl/EglCore;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/gl/EglWindowSurface;->init(Ljava/lang/Object;[I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/gl/EglCore;Landroid/view/Surface;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/gl/EglSurfaceBase;-><init>(Lcom/android/camera/ui/gl/EglCore;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/gl/EglWindowSurface;->init(Ljava/lang/Object;[I)V

    return-void
.end method

.method private init(Ljava/lang/Object;[I)V
    .locals 2

    const-string v0, "EglWindowSurface"

    const-string v1, "EglWindowSurface init start"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    instance-of v1, p1, Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/gl/EglCore;->createWindowSurface(Landroid/view/Surface;[I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/gl/EglCore;->createWindowSurface(Landroid/graphics/SurfaceTexture;[I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    :goto_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "EglWindowSurface"

    const-string p2, "EglWindowSurface init end"

    .line 8
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public makeCurrent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0}, Lcom/android/camera/ui/gl/EglSurfaceBase;->makeCurrent()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()Z
    .locals 3

    const-string v0, "EglWindowSurface"

    const-string v1, "EglWindowSurface release start"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    .line 5
    invoke-super {p0}, Lcom/android/camera/ui/gl/EglSurfaceBase;->release()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "EglWindowSurface"

    const-string v1, "EglWindowSurface release end"

    .line 7
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public swapBuffers()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-super {p0}, Lcom/android/camera/ui/gl/EglSurfaceBase;->swapBuffers()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
