.class public Lcom/xiaomi/renderengine/RenderEngine;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;,
        Lcom/xiaomi/renderengine/RenderEngine$RenderParams;,
        Lcom/xiaomi/renderengine/RenderEngine$StateCallback;
    }
.end annotation


# static fields
.field public static final EGL_CONFIG_ATTRS:[I

.field public static final TAG:Ljava/lang/String; = "RenderEngine"

.field public static sFrameListener:Landroid/os/HandlerThread;


# instance fields
.field public mAppContext:Landroid/content/Context;

.field public mCameraSurface:Landroid/view/Surface;

.field public mDisplayRect:Landroid/graphics/Rect;

.field public mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEGLContext14:Landroid/opengl/EGLContext;

.field public mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

.field public mExtendGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

.field public mFirstFrameArrived:Z

.field public mGLHandler:Landroid/os/Handler;

.field public mGLState:Lcom/xiaomi/renderengine/GLState;

.field public mGlobalRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mHasSurface:Z

.field public mLocalRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public mOesTextures:[I

.field public mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

.field public mPreviewSurface:Landroid/view/Surface;

.field public mPreviewSurfaceHeight:I

.field public mPreviewSurfaceWidth:I

.field public mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

.field public mSurfaceCreatedTimestamp:J

.field public mSurfaceSize:Landroid/util/Size;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mSurfaceTextureRenderer:Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;

.field public volatile mSurfaceUpdated:Z

.field public mTextureTransformMatrix:[F

.field public mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/renderengine/RenderEngine;->EGL_CONFIG_ATTRS:[I

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreviewFrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x0
        0x3021
        0x0
        0x3040
        0x4
        0x3026
        0x8
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 3
    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDisplayRect:Landroid/graphics/Rect;

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mHasSurface:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    const-string v0, "RenderEngine"

    const-string v1, "New RenderEngine instance"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAppContext:Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->init()V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/renderengine/RenderEngine;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/renderengine/RenderEngine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/xiaomi/renderengine/RenderEngine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$StateCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    return-void
.end method

.method private getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mHasSurface:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWindowSurface start, updated="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceUpdated:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " surface="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "RenderEngine"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceUpdated:Z

    .line 6
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->release()Z

    .line 8
    :cond_1
    new-instance v0, Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    iget-object v5, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    iget-object v6, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v0, v5, v6, v1}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;Landroid/view/Surface;[I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWindowSurface end, cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mWindowSurface:Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    return-object v0
.end method

.method private init()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/renderengine/gl/GLThread;

    sget-object v1, Lcom/xiaomi/renderengine/RenderEngine;->EGL_CONFIG_ATTRS:[I

    const-string v2, "RenderEngine"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLThread;->getEglCore()Lcom/xiaomi/renderengine/gl/EglCore;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    .line 4
    new-instance v0, Lcom/xiaomi/renderengine/GLState;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/GLState;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0o/OooO0O0/OooO0oO;

    invoke-direct {v1, p0}, LOooO00o/OooO0o/OooO0O0/OooO0oO;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initializePreviewTexture()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createExternalOESTextures([I)V

    .line 5
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    new-instance v1, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/RenderEngine$1;)V

    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 12
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create camera surface texture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDrawFrame()V
    .locals 18

    move-object/from16 v14, p0

    const-string v0, "RenderEngine"

    const-string v1, "onDrawFrame"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/renderengine/RenderEngine;->getWindowSurface()Lcom/xiaomi/renderengine/gl/EglWindowSurface;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 3
    invoke-virtual {v15}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->makeCurrent()Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 6
    iget-object v0, v14, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTextureRenderer:Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;-><init>()V

    iput-object v0, v14, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTextureRenderer:Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;

    .line 8
    invoke-virtual {v0, v14}, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 9
    :cond_0
    iget-object v0, v14, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v11

    .line 10
    iget-object v0, v14, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-eqz v11, :cond_1

    .line 11
    iget v0, v14, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurfaceHeight:I

    goto :goto_0

    :cond_1
    iget-object v0, v14, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    :goto_0
    move v8, v0

    const/4 v0, 0x0

    if-eqz v11, :cond_2

    .line 12
    iget-object v1, v14, Lcom/xiaomi/renderengine/RenderEngine;->mDisplayRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, v14, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    move-object v10, v1

    .line 13
    iget-object v1, v14, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, v14, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 14
    iget-object v13, v14, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTextureRenderer:Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;

    new-instance v12, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;

    iget-object v1, v14, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    aget v2, v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v9, v14, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    iget-object v1, v14, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    move-object v0, v12

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object v14, v13

    move-object/from16 v13, p0

    invoke-direct/range {v0 .. v13}, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;-><init>(Lcom/xiaomi/renderengine/RenderEngine;IIIIIII[FLandroid/graphics/Rect;ZLcom/xiaomi/renderengine/GLState;Lcom/xiaomi/renderengine/RenderEngine;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    .line 15
    invoke-virtual {v15}, Lcom/xiaomi/renderengine/gl/EglWindowSurface;->swapBuffers()Z

    :cond_3
    return-void
.end method

.method private setPreviewSurface(Landroid/view/Surface;II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurfaceWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurfaceHeight:I

    if-eq v0, p3, :cond_1

    .line 2
    :cond_0
    iput p2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurfaceWidth:I

    .line 3
    iput p3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurfaceHeight:I

    .line 4
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceUpdated:Z

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPreviewSurface surface="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RenderEngine"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateGLState(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {p1}, Lcom/xiaomi/renderengine/GLState;->identityAllM()V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/GLState;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v1}, Lcom/xiaomi/renderengine/GLState;->translate(FFF)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, p2, v0}, Lcom/xiaomi/renderengine/GLState;->scale(FFF)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    return-void
.end method

.method public synthetic OooO00o(II)V
    .locals 4

    .line 18
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->initializePreviewTexture()V

    .line 19
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 20
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    if-eqz v1, :cond_0

    .line 21
    iget v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurfaceWidth:I

    iget v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurfaceHeight:I

    invoke-interface {v1, v0, v2, v3}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onCameraSurfaceChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/renderengine/RenderEngine;->updateGLState(II)V

    return-void
.end method

.method public synthetic OooO00o(ILcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 1

    .line 14
    iget v0, p2, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    if-ne v0, p1, :cond_0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove global renderer "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenderEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p2, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/util/Size;)V
    .locals 3

    const-string v0, "RenderEngine"

    const-string v1, "setCameraSurfaceSize() called on gl thread"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    if-eq v0, p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 10
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceSize:Landroid/util/Size;

    :cond_2
    return-void
.end method

.method public synthetic OooO00o(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add global renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 4

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->initializePreviewTexture()V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    if-eqz v1, :cond_0

    .line 11
    iget v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurfaceWidth:I

    iget v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSurfaceHeight:I

    invoke-interface {v1, v0, v2, v3}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onCameraSurfaceChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0(ILcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 1

    .line 4
    iget v0, p2, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    if-ne v0, p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove local renderer "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenderEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p2, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add local renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public addGlobalRenderer(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    .line 2
    iput p1, v0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 3
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0o/OooO0O0/OooO0Oo;

    invoke-direct {v1, p0, v0}, LOooO00o/OooO0o/OooO0O0/OooO0Oo;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addLocalRenderer(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    .line 2
    iput p1, v0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 3
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0o/OooO0O0/OooO0o;

    invoke-direct {v1, p0, v0}, LOooO00o/OooO0o/OooO0O0/OooO0o;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addPreviewSurface(Landroid/view/Surface;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPreviewSurface displayRect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RenderEngine"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getEGLContext14()Landroid/opengl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getExtendGLThread()Lcom/xiaomi/renderengine/gl/GLThread;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mExtendGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xiaomi/renderengine/gl/GLThread;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    const-string v2, "ExtendGLThread"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;Landroid/opengl/EGLContext;)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mExtendGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mExtendGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    return-object v0
.end method

.method public getFrameAvailableFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return v0
.end method

.method public getGLHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    return-wide v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get surface texture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;II)V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceChanged"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mHasSurface:Z

    .line 3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/renderengine/RenderEngine;->setPreviewSurface(Landroid/view/Surface;II)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v0, LOooO00o/OooO0o/OooO0O0/OooO00o;

    invoke-direct {v0, p0, p2, p3}, LOooO00o/OooO0o/OooO0O0/OooO00o;-><init>(Lcom/xiaomi/renderengine/RenderEngine;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceCreated"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0o/OooO0O0/OooO0oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0o/OooO0O0/OooO0oo;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceDestroyed"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mHasSurface:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public removeGlobalRenderer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    new-instance v1, LOooO00o/OooO0o/OooO0O0/OooO;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0o/OooO0O0/OooO;-><init>(Lcom/xiaomi/renderengine/RenderEngine;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeLocalRenderer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    new-instance v1, LOooO00o/OooO0o/OooO0O0/OooO0O0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0o/OooO0O0/OooO0O0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetFrameAvailableFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return-void
.end method

.method public setCameraSurfaceSize(Landroid/util/Size;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set camera surface size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0o/OooO0O0/OooO0OO;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0o/OooO0O0/OooO0OO;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setStateChangeListener(Lcom/xiaomi/renderengine/RenderEngine$StateCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    return-void
.end method
