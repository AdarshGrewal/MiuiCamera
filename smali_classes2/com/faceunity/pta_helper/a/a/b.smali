.class public final Lcom/faceunity/pta_helper/a/a/b;
.super Ljava/lang/Object;
.source "EglCore.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Landroid/opengl/EGLDisplay;

.field public c:Landroid/opengl/EGLContext;

.field public d:Landroid/opengl/EGLConfig;

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/faceunity/pta_helper/a/a/d;->a:Ljava/lang/String;

    sput-object v0, Lcom/faceunity/pta_helper/a/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_helper/a/a/b;-><init>(Landroid/opengl/EGLContext;I)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/faceunity/pta_helper/a/a/b;->c:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/faceunity/pta_helper/a/a/b;->d:Landroid/opengl/EGLConfig;

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lcom/faceunity/pta_helper/a/a/b;->e:I

    .line 7
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_6

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    .line 10
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    .line 11
    invoke-static {v2, v4, v0, v4, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x3

    .line 12
    invoke-direct {p0, p2, v1}, Lcom/faceunity/pta_helper/a/a/b;->a(II)Landroid/opengl/EGLConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v4, v1, [I

    .line 13
    fill-array-data v4, :array_0

    .line 14
    iget-object v6, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    invoke-static {v6, v2, p1, v4, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v4

    .line 15
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v6

    const/16 v7, 0x3000

    if-ne v6, v7, :cond_1

    .line 16
    iput-object v2, p0, Lcom/faceunity/pta_helper/a/a/b;->d:Landroid/opengl/EGLConfig;

    .line 17
    iput-object v4, p0, Lcom/faceunity/pta_helper/a/a/b;->c:Landroid/opengl/EGLContext;

    .line 18
    iput v1, p0, Lcom/faceunity/pta_helper/a/a/b;->e:I

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/faceunity/pta_helper/a/a/b;->c:Landroid/opengl/EGLContext;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v4, :cond_3

    .line 20
    invoke-direct {p0, p2, v3}, Lcom/faceunity/pta_helper/a/a/b;->a(II)Landroid/opengl/EGLConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    new-array v1, v1, [I

    .line 21
    fill-array-data v1, :array_1

    .line 22
    iget-object v2, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    invoke-static {v2, p2, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    const-string v1, "eglCreateContext"

    .line 23
    invoke-static {v1}, Lcom/faceunity/pta_helper/a/a/b;->a(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/faceunity/pta_helper/a/a/b;->d:Landroid/opengl/EGLConfig;

    .line 25
    iput-object p1, p0, Lcom/faceunity/pta_helper/a/a/b;->c:Landroid/opengl/EGLContext;

    .line 26
    iput v3, p0, Lcom/faceunity/pta_helper/a/a/b;->e:I

    goto :goto_0

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    new-array p1, v5, [I

    .line 28
    iget-object p2, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/faceunity/pta_helper/a/a/b;->c:Landroid/opengl/EGLContext;

    const/16 v2, 0x3098

    invoke-static {p2, v1, v2, p1, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 29
    sget-object p2, Lcom/faceunity/pta_helper/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGLContext created, client version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 30
    :cond_4
    iput-object v1, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    .line 31
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EGL already set up"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private a(II)Landroid/opengl/EGLConfig;
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-lt p2, v0, :cond_0

    const/16 v2, 0x44

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v3, 0xd

    new-array v5, v3, [I

    const/16 v3, 0x3024

    const/4 v12, 0x0

    aput v3, v5, v12

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput v3, v5, v4

    const/4 v6, 0x2

    const/16 v7, 0x3023

    aput v7, v5, v6

    aput v3, v5, v0

    const/16 v0, 0x3022

    aput v0, v5, v1

    const/4 v0, 0x5

    aput v3, v5, v0

    const/4 v0, 0x6

    const/16 v1, 0x3021

    aput v1, v5, v0

    const/4 v0, 0x7

    aput v3, v5, v0

    const/16 v0, 0x3040

    aput v0, v5, v3

    const/16 v0, 0x9

    aput v2, v5, v0

    const/16 v0, 0x3038

    const/16 v1, 0xa

    aput v0, v5, v1

    const/16 v2, 0xb

    aput v12, v5, v2

    const/16 v3, 0xc

    aput v0, v5, v3

    and-int/2addr p1, v4

    if-eqz p1, :cond_1

    const/16 p1, 0x3142

    aput p1, v5, v1

    aput v4, v5, v2

    :cond_1
    new-array p1, v4, [Landroid/opengl/EGLConfig;

    new-array v10, v4, [I

    .line 1
    iget-object v4, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, p1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget-object p1, Lcom/faceunity/pta_helper/a/a/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to find RGB8888 / "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " EGLConfig"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_2
    aget-object p1, p1, v12

    return-object p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 18
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": EGL error: 0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 13
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "invalid surface: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 15
    iget-object v1, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/faceunity/pta_helper/a/a/b;->d:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string v0, "eglCreateWindowSurface"

    .line 16
    invoke-static {v0}, Lcom/faceunity/pta_helper/a/a/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-object p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 5
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 6
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/faceunity/pta_helper/a/a/b;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 7
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 8
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 9
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    .line 10
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->c:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->d:Landroid/opengl/EGLConfig;

    return-void
.end method

.method public final a(Landroid/opengl/EGLSurface;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public final b(Landroid/opengl/EGLSurface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/faceunity/pta_helper/a/a/b;->a:Ljava/lang/String;

    const-string v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/faceunity/pta_helper/a/a/b;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroid/opengl/EGLSurface;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/b;->b:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method
