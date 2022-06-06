.class public Lcom/android/camera/ui/gl/GLThread;
.super Ljava/lang/Object;
.source "GLThread.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GLThread"


# instance fields
.field public mEglCore:Lcom/android/camera/ui/gl/EglCore;

.field public mEglOffscreenSurface:Lcom/android/camera/ui/gl/EglOffscreenSurface;

.field public mGlHandler:Landroid/os/Handler;

.field public mGlHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/camera/ui/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "new Instance with thread id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GLThread"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooo/OooO0O0;

    invoke-direct {v0, p0, p2, p3, p4}, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooo/OooO0O0;-><init>(Lcom/android/camera/ui/gl/GLThread;ILandroid/opengl/EGLContext;[I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/opengl/EGLContext;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/camera/ui/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    return-void
.end method

.method private waitDone()Z
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/camera/ui/gl/GLThread$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/gl/GLThread$1;-><init>(Lcom/android/camera/ui/gl/GLThread;Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mEglOffscreenSurface:Lcom/android/camera/ui/gl/EglOffscreenSurface;

    invoke-virtual {v0}, Lcom/android/camera/ui/gl/EglSurfaceBase;->release()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mEglOffscreenSurface:Lcom/android/camera/ui/gl/EglOffscreenSurface;

    iget-object v1, p0, Lcom/android/camera/ui/gl/GLThread;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    invoke-virtual {v1}, Lcom/android/camera/ui/gl/EglCore;->release()V

    iput-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    const-string v0, "GLThread"

    const-string v1, "mEglOffscreenSurface and mEglCore release done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO00o(ILandroid/opengl/EGLContext;[I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    const-string/jumbo v1, "new egl Instance"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera/ui/gl/EglCore;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/ui/gl/EglCore;-><init>(ILandroid/opengl/EGLContext;[I)V

    iput-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {p0}, Lcom/android/camera/ui/gl/GLThread;->onGLThreadPrepared()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEglCore()Lcom/android/camera/ui/gl/EglCore;
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mEglCore:Lcom/android/camera/ui/gl/EglCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHandler to do some thing on egl thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onGLThreadPrepared()V
    .locals 3

    new-instance v0, Lcom/android/camera/ui/gl/EglOffscreenSurface;

    iget-object v1, p0, Lcom/android/camera/ui/gl/GLThread;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/ui/gl/EglOffscreenSurface;-><init>(Lcom/android/camera/ui/gl/EglCore;II)V

    iput-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mEglOffscreenSurface:Lcom/android/camera/ui/gl/EglOffscreenSurface;

    invoke-virtual {v0}, Lcom/android/camera/ui/gl/EglSurfaceBase;->makeCurrent()Z

    return-void
.end method

.method public release()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "release with thread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooo/OooO00o;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooo/OooO00o;-><init>(Lcom/android/camera/ui/gl/GLThread;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/camera/ui/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    const-string/jumbo v0, "release done"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
