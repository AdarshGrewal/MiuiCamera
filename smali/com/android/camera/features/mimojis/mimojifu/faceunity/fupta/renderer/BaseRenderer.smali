.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseRenderer"


# instance fields
.field public countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public flipX:I

.field public flipY:I

.field public isChangeCamera:Z

.field public volatile isDrawIng:Z

.field public isModeChange:Z

.field public isNeedStopDrawFrame:Z

.field public limFps30:Z

.field public mFPSUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;

.field public mFuTexIconId:I

.field public mFuTextureId:I

.field public mGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

.field public mIsNeedTakePic:Z

.field public mIsNeedTakePicIcon:Z

.field public mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

.field public mTakePhotoCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

.field public mTakePicIconIng:Z

.field public mTakePicing:Z

.field public mTexId:I

.field public mViewHeight:I

.field public mViewWidth:I

.field public mtx:[F

.field public mvp:[F

.field public programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

.field public programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

.field public renderH:I

.field public renderW:I

.field public rotateMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a0

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mViewWidth:I

    const/16 v0, 0x438

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mViewHeight:I

    .line 4
    sget v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_WIDTH:I

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderW:I

    sget v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_HEIGHT:I

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderH:I

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mtx:[F

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mvp:[F

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isNeedStopDrawFrame:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isChangeCamera:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isDrawIng:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePicing:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mIsNeedTakePic:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePicIconIng:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mIsNeedTakePicIcon:Z

    .line 15
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->onSurfaceDestroy()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePhotoCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePicing:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePicIconIng:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    return-object p0
.end method

.method private checkPic(I[FII)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mIsNeedTakePic:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mIsNeedTakePic:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->setNeedStopDrawFrame(Z)V

    .line 4
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    new-instance v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$2;

    invoke-direct {v6, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$2;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)V

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/faceunity/pta_helper/pic/PictureEncoder;->encoderPicture(I[F[FIILcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;)V

    return-void
.end method

.method private checkPicIcon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;->queueIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$3;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$3;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onSurfaceDestroy()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->surfaceDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 5
    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTexId:I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 6
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 7
    iput v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTexId:I

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->release()V

    .line 10
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->release()V

    .line 13
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;->onSurfaceDestroy()V

    return-void
.end method


# virtual methods
.method public abstract drawToScreen()V
.end method

.method public getRenderH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderH:I

    return v0
.end method

.method public getRenderW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderW:I

    return v0
.end method

.method public isNeedStopDrawFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isNeedStopDrawFrame:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1

    .line 3
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->onPause()V

    return-void
.end method

.method public abstract onDraw()V
.end method

.method public abstract onDrawEnd()V
.end method

.method public onDrawFrame()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isChangeCamera:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isDrawIng:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->onDraw()V

    .line 4
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFuTextureId:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mtx:[F

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderW:I

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderH:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->checkPic(I[FII)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;->getFuIconTexId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFuTexIconId:I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->checkPicIcon()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isDrawIng:Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 10
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isNeedStopDrawFrame:Z

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->requestRender()V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->onDrawEnd()V

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFPSUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->limit30()V

    return-void

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->drawToScreen()V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mViewWidth:I

    .line 2
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mViewHeight:I

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->surfaceChanged(II)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFPSUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->resetLimit()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;->onSurfaceChange()V

    return-void
.end method

.method public onSurfaceCreated(Landroid/opengl/EGLConfig;)V
    .locals 2

    const v0, 0x8d65

    .line 1
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->createTextureObject(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTexId:I

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    .line 3
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mtx:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->surfaceCreated()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;->onSurfaceCreated(Landroid/opengl/EGLConfig;)V

    .line 7
    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFPSUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;

    return-void
.end method

.method public rotateCameraImage(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 1
    :goto_0
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->rotateMode:I

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->flipX:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->flipY:I

    .line 4
    invoke-static {p1, v1, v0}, Lcom/faceunity/wrapper/faceunity;->fuSetInputCameraMatrix(III)V

    .line 5
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderW:I

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderH:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->setOutputResolution(II)V

    return-void
.end method

.method public setModeChange(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->waitIfDraw()V

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    return-void
.end method

.method public setModeChangeEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    return-void
.end method

.method public setNeedStopDrawFrame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isNeedStopDrawFrame:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public setNeedTakePic()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mIsNeedTakePicIcon:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePicIconIng:Z

    return-void
.end method

.method public setOnRendererStatusListener(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

    return-void
.end method

.method public setOutputResolution(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    return-void
.end method

.method public setViewPort(III)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mViewHeight:I

    sub-int/2addr v1, p3

    sub-int/2addr v1, p1

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mViewWidth:I

    .line 3
    iget p3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mViewHeight:I

    move v1, v0

    .line 4
    :goto_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x4100

    .line 5
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 6
    invoke-static {v0, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->surfaceChanged(II)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFPSUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->resetLimit()V

    :cond_2
    return-void
.end method

.method public abstract surfaceChanged(II)V
.end method

.method public abstract surfaceCreated()V
.end method

.method public abstract surfaceDestroy()V
.end method

.method public takePic(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePicing:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePhotoCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mIsNeedTakePic:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePicing:Z

    return-void
.end method

.method public takePicIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePicIconIng:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakeIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mIsNeedTakePicIcon:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTakePicIconIng:Z

    return-void
.end method

.method public waitIfDraw()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isDrawIng:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method
