.class public Lcom/android/camera/ui/RenderEngineAdapter;
.super Ljava/lang/Object;
.source "RenderEngineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;,
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;,
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;,
        Lcom/android/camera/ui/RenderEngineAdapter$ArrivedType;,
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineVersion;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RenderEngineAdapter"


# instance fields
.field public mActivity:Lcom/android/camera/Camera;

.field public mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field public mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

.field public mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

.field public mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

.field public mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

.field public mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

.field public mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    .line 5
    new-instance v0, Lcom/xiaomi/renderengine/RenderEngine;

    invoke-direct {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    .line 7
    new-instance p1, Lcom/android/camera/ui/CameraRenderEngine;

    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {p1, v0}, Lcom/android/camera/ui/CameraRenderEngine;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    .line 8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RenderEngineAdapter version:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenderEngineAdapter"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/CameraScreenNail;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/ui/CameraRenderEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    return-object p0
.end method


# virtual methods
.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getEGLContext14()Landroid/opengl/EGLContext;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getFilterGLThread()Lcom/android/camera/ui/gl/GLThread;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getFilterGLThread()Lcom/android/camera/ui/gl/GLThread;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrameAvailableFlag()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getFrameAvailableFlag()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getFrameAvailableFlag()Z

    move-result v0

    return v0
.end method

.method public getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getGLHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public initCameraScreenNail()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/android/camera/CameraScreenNail;

    iget-object v2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    iget-object v3, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    invoke-direct {v0, v2, v3}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$NailListener;Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    if-eqz v0, :cond_4

    .line 10
    iget-object v1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->setStateChangeListener(Lcom/xiaomi/renderengine/RenderEngine$StateCallback;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 13
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    :cond_5
    const-string v0, "RenderEngineAdapter"

    const-string v1, "initCameraScreenNail"

    .line 16
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->onDestroy()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->release()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->onResume()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/CameraRenderEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/renderengine/RenderEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;II)V

    :goto_0
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->onSurfaceCreated()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->onSurfaceCreated()V

    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->onSurfaceDestroyed()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->onSurfaceDestroyed()V

    :goto_0
    return-void
.end method

.method public releaseCameraScreenNail()V
    .locals 2

    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "releaseCameraScreenNail"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ICameraMgr;->setFrameAvailable(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    .line 7
    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    .line 8
    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    return-void
.end method

.method public requestChangeWCGConfig(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraRenderEngine;->requestChangeWCGConfig(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetFrameAvailableFlag()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->resetFrameAvailableFlag()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->resetFrameAvailableFlag()V

    :goto_0
    return-void
.end method

.method public setCameraPreviewRect(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/SurfaceTextureScreenNail;->setDisplayArea(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->addPreviewSurface(Landroid/view/Surface;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->setCameraSurfaceSize(Landroid/util/Size;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRendererListener(Lcom/android/camera/ui/CameraRenderEngine$RendererListener;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraRenderEngine;->setRendererListener(Lcom/android/camera/ui/CameraRenderEngine$RendererListener;)V

    :cond_0
    return-void
.end method

.method public setStateChangeListener(Lcom/xiaomi/renderengine/RenderEngine$StateCallback;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setStateChangeListener(Lcom/xiaomi/renderengine/RenderEngine$StateCallback;)V

    :cond_0
    return-void
.end method
