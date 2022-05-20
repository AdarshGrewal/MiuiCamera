.class public Lcom/xiaomi/renderengine/gl/GLThread;
.super Ljava/lang/Object;
.source "GLThread.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GLThread"


# instance fields
.field public mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

.field public mEglOffscreenSurface:Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

.field public mGlHandler:Landroid/os/Handler;

.field public mGlHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new Instance with thread id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GLThread"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance v0, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;

    invoke-direct {v0, p0, p2, p3, p4}, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO0O0;-><init>(Lcom/xiaomi/renderengine/gl/GLThread;ILandroid/opengl/EGLContext;[I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/opengl/EGLContext;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    return-void
.end method

.method private waitDone()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lcom/xiaomi/renderengine/gl/GLThread$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/renderengine/gl/GLThread$1;-><init>(Lcom/xiaomi/renderengine/gl/GLThread;Ljava/lang/Object;)V

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v1, 0x0

    .line 7
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglOffscreenSurface:Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->release()Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglOffscreenSurface:Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

    .line 9
    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/gl/EglCore;->release()V

    .line 10
    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    const-string v0, "GLThread"

    const-string v1, "mEglOffscreenSurface and mEglCore release done"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO00o(ILandroid/opengl/EGLContext;[I)V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    const-string v1, "new egl Instance"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/xiaomi/renderengine/gl/EglCore;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/renderengine/gl/EglCore;-><init>(ILandroid/opengl/EGLContext;[I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/GLThread;->onGLThreadPrepared()V

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEglCore()Lcom/xiaomi/renderengine/gl/EglCore;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHandler to do some thing on egl thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onGLThreadPrepared()V
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;II)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglOffscreenSurface:Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->makeCurrent()Z

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release with thread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance v2, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO00o;

    invoke-direct {v2, p0}, LOooO00o/OooO0o/OooO0O0/OooOO0/OooO00o;-><init>(Lcom/xiaomi/renderengine/gl/GLThread;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    .line 5
    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    const-string v0, "release done"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
