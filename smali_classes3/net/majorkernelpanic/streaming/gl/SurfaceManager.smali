.class public Lnet/majorkernelpanic/streaming/gl/SurfaceManager;
.super Ljava/lang/Object;
.source "SurfaceManager.java"


# static fields
.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final TAG:Ljava/lang/String; = "TextureManager"


# instance fields
.field public mEGLContext:Landroid/opengl/EGLContext;

.field public mEGLDisplay:Landroid/opengl/EGLDisplay;

.field public mEGLSharedContext:Landroid/opengl/EGLContext;

.field public mEGLSurface:Landroid/opengl/EGLSurface;

.field public mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    .line 11
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    .line 12
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 13
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 14
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mSurface:Landroid/view/Surface;

    .line 15
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->eglSetup()V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Lnet/majorkernelpanic/streaming/gl/SurfaceManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    .line 3
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    .line 4
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 6
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mSurface:Landroid/view/Surface;

    .line 7
    iget-object p1, p2, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    .line 8
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->eglSetup()V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private eglSetup()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 3
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    if-nez v1, :cond_0

    const/16 v1, 0x9

    new-array v1, v1, [I

    .line 5
    fill-array-data v1, :array_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 6
    fill-array-data v1, :array_1

    :goto_0
    move-object v5, v1

    new-array v1, v3, [Landroid/opengl/EGLConfig;

    new-array v10, v3, [I

    .line 7
    iget-object v4, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    move-object v7, v1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    const-string v2, "eglCreateContext RGB888+recordable ES2"

    .line 8
    invoke-direct {p0, v2}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->checkEglError(Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 9
    fill-array-data v2, :array_2

    .line 10
    iget-object v4, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    if-nez v4, :cond_1

    .line 11
    iget-object v4, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v5, v1, v0

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v4, v5, v6, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    goto :goto_1

    .line 12
    :cond_1
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v6, v1, v0

    invoke-static {v5, v6, v4, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    :goto_1
    const-string v2, "eglCreateContext"

    .line 13
    invoke-direct {p0, v2}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->checkEglError(Ljava/lang/String;)V

    new-array v2, v3, [I

    const/16 v3, 0x3038

    aput v3, v2, v0

    .line 14
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v1, v0

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v1, v4, v2, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string v0, "eglCreateWindowSurface"

    .line 15
    invoke-direct {p0, v0}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->checkEglError(Ljava/lang/String;)V

    const/16 v0, 0xb71

    .line 16
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb44

    .line 17
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public makeCurrent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 5
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 6
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 7
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 8
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    .line 9
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 10
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    const-string p1, "eglPresentationTimeANDROID"

    .line 2
    invoke-direct {p0, p1}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public swapBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method
