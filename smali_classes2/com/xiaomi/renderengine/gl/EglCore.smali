.class public Lcom/xiaomi/renderengine/gl/EglCore;
.super Ljava/lang/Object;
.source "EglCore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EglCore"


# instance fields
.field public mEGLConfig:Landroid/opengl/EGLConfig;

.field public mEGLContext:Landroid/opengl/EGLContext;

.field public mEGLDisplay:Landroid/opengl/EGLDisplay;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/renderengine/gl/EglCore;-><init>(ILandroid/opengl/EGLContext;[I)V

    return-void
.end method

.method public constructor <init>(ILandroid/opengl/EGLContext;[I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "EglCore"

    const-string v3, "new Instance"

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 5
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const/4 v4, 0x0

    .line 6
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 7
    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    const/16 v7, 0x3000

    if-eq v5, v6, :cond_1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v5

    if-eq v5, v7, :cond_2

    :cond_1
    const-string v5, "Failed to get EGLDisplay."

    .line 8
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v5, 0x1

    new-array v6, v5, [I

    new-array v8, v5, [I

    .line 9
    iget-object v9, v0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v9, v6, v4, v8, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Failed to initialize EGL."

    .line 10
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x4

    const/4 v8, 0x3

    if-lt v1, v8, :cond_4

    const/16 v9, 0x44

    goto :goto_1

    :cond_4
    move v9, v6

    :goto_1
    const/16 v10, 0x3038

    const/4 v11, 0x2

    if-eqz p3, :cond_5

    move-object/from16 v14, p3

    goto :goto_2

    :cond_5
    const/16 v12, 0xb

    new-array v12, v12, [I

    const/16 v13, 0x3024

    aput v13, v12, v4

    const/16 v13, 0x8

    aput v13, v12, v5

    const/16 v14, 0x3023

    aput v14, v12, v11

    aput v13, v12, v8

    const/16 v14, 0x3022

    aput v14, v12, v6

    const/4 v6, 0x5

    aput v13, v12, v6

    const/4 v6, 0x6

    const/16 v14, 0x3021

    aput v14, v12, v6

    const/4 v6, 0x7

    aput v13, v12, v6

    const/16 v6, 0x3040

    aput v6, v12, v13

    const/16 v6, 0x9

    aput v9, v12, v6

    const/16 v6, 0xa

    aput v10, v12, v6

    move-object v14, v12

    :goto_2
    new-array v6, v5, [Landroid/opengl/EGLConfig;

    new-array v9, v5, [I

    .line 11
    iget-object v13, v0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object/from16 v16, v6

    move-object/from16 v19, v9

    invoke-static/range {v13 .. v20}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "Failed to choose EGLConfig."

    .line 12
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_6
    aget-object v6, v6, v4

    iput-object v6, v0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    new-array v8, v8, [I

    const/16 v9, 0x3098

    aput v9, v8, v4

    aput v1, v8, v5

    aput v10, v8, v11

    .line 14
    iget-object v1, v0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v6, v3, v8, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 15
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    if-ne v1, v7, :cond_7

    iget-object v1, v0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v1, v3, :cond_8

    :cond_7
    const-string v1, "Failed to create EGLContext."

    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/renderengine/gl/EglCore;-><init>(ILandroid/opengl/EGLContext;[I)V

    return-void
.end method

.method private checkEglSurface(Landroid/opengl/EGLSurface;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 2
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p1, v1, :cond_0

    const/16 p1, 0x3000

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create window surface. error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createWindowSurfaceInner(Ljava/lang/Object;[I)Landroid/opengl/EGLSurface;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [I

    const/16 v1, 0x3038

    aput v1, p2, v0

    .line 1
    :goto_0
    instance-of v1, p1, Landroid/view/Surface;

    const-string v2, "EglCore"

    if-eqz v1, :cond_1

    .line 2
    move-object v1, p1

    check-cast v1, Landroid/view/Surface;

    .line 3
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWindowSurfaceInner surface isValid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, p2, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/gl/EglCore;->checkEglSurface(Landroid/opengl/EGLSurface;)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createWindowSurfaceInner "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0}, Landroid/opengl/EGLDisplay;->getNativeHandle()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method


# virtual methods
.method public clearCurrent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to release current."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    const/16 v1, 0x3056

    aput v1, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v0, p1

    .line 1
    iget-object p1, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/gl/EglCore;->checkEglSurface(Landroid/opengl/EGLSurface;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOffscreenSurface "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0}, Landroid/opengl/EGLDisplay;->getNativeHandle()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EglCore"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public createWindowSurface(Landroid/graphics/SurfaceTexture;[I)Landroid/opengl/EGLSurface;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/renderengine/gl/EglCore;->createWindowSurfaceInner(Ljava/lang/Object;[I)Landroid/opengl/EGLSurface;

    move-result-object p1

    return-object p1
.end method

.method public createWindowSurface(Landroid/view/Surface;[I)Landroid/opengl/EGLSurface;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/renderengine/gl/EglCore;->createWindowSurfaceInner(Ljava/lang/Object;[I)Landroid/opengl/EGLSurface;

    move-result-object p1

    return-object p1
.end method

.method public destroySurface(Landroid/opengl/EGLSurface;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy Surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1}, Landroid/opengl/EGLDisplay;->getNativeHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglCore"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method

.method public getEGLConfig()Landroid/opengl/EGLConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    return-object v0
.end method

.method public getEGLContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getEGLDisplay()Landroid/opengl/EGLDisplay;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    return-object v0
.end method

.method public isCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/xiaomi/renderengine/gl/EglCore;->isCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method

.method public isCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3059

    .line 3
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x305a

    .line 4
    invoke-static {p1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const-string v1, "EglCore"

    const/16 v2, 0x3000

    if-eq v0, v2, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before makeCurrent warning. gl error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to make current. gl error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 2
    aget p1, v0, v2

    return p1
.end method

.method public release()V
    .locals 3

    const-string v0, "EglCore"

    const-string v1, "release"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 4
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 7
    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 8
    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    return-void
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    const/16 v2, 0x3059

    .line 3
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current EGL: display = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; context = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; surface = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
