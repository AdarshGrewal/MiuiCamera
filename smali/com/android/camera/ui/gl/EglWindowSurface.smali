.class public Lcom/android/camera/ui/gl/EglWindowSurface;
.super Lcom/android/camera/ui/gl/EglSurfaceBase;
.source "EglWindowSurface.java"


# instance fields
.field public mAvailability:Z

.field public mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/gl/EglCore;Landroid/graphics/SurfaceTexture;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/gl/EglSurfaceBase;-><init>(Lcom/android/camera/ui/gl/EglCore;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/gl/EglWindowSurface;->init(Ljava/lang/Object;[I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/gl/EglCore;Landroid/view/Surface;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/gl/EglSurfaceBase;-><init>(Lcom/android/camera/ui/gl/EglCore;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/gl/EglWindowSurface;->init(Ljava/lang/Object;[I)V

    return-void
.end method

.method private init(Ljava/lang/Object;[I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    instance-of v1, p1, Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/gl/EglCore;->createWindowSurface(Landroid/view/Surface;[I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/gl/EglCore;->createWindowSurface(Landroid/graphics/SurfaceTexture;[I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public makeCurrent()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/android/camera/ui/gl/EglSurfaceBase;->makeCurrent()Z

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    invoke-super {p0}, Lcom/android/camera/ui/gl/EglSurfaceBase;->release()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public swapBuffers()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/ui/gl/EglWindowSurface;->mAvailability:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/android/camera/ui/gl/EglSurfaceBase;->swapBuffers()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
