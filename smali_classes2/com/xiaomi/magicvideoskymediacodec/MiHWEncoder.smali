.class public Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;
.super Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;
.source "MiHWEncoder.java"

# interfaces
.implements Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder$MsgHandler;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "MiHWEncoder"


# instance fields
.field public af_Position:I

.field public av_Position:I

.field public encoded_end:Z

.field public indexframe:J

.field public mAudioEncoder:Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;

.field public mBitrate:I

.field public mCaptureOne:I

.field public mCodecName:Ljava/lang/String;

.field public mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

.field public volatile mEncodeExit:Z

.field public mError:Z

.field public mFps:I

.field public mJniContext:J

.field public mMsgHandler:Landroid/os/Handler;

.field public mPath:Ljava/lang/String;

.field public mRotate:I

.field public mSharedContext:Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;

.field public mTextureId:I

.field public mThread:Landroid/os/HandlerThread;

.field public volatile mThreadHandlerExit:Z

.field public volatile mThreadHandlerStart:Z

.field public mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

.field public final mWaitEvent:Ljava/lang/Object;

.field public volatile misStarted:Z

.field public num:J

.field public s_Texture:I

.field public sample_rate:I

.field public final semp:Ljava/util/concurrent/Semaphore;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mError:Z

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->encoded_end:Z

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mJniContext:J

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->misStarted:Z

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEncodeExit:Z

    .line 7
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThreadHandlerExit:Z

    .line 8
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThreadHandlerStart:Z

    const v3, 0xac44

    .line 9
    iput v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->sample_rate:I

    .line 10
    new-instance v3, Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->semp:Ljava/util/concurrent/Semaphore;

    .line 11
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mWaitEvent:Ljava/lang/Object;

    .line 12
    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mRotate:I

    .line 13
    iput-wide v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->num:J

    .line 14
    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mCaptureOne:I

    .line 15
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mError:Z

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetCurrentContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->getCurrentContext()Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->getCurrentContext()Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mSharedContext:Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "encoder thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThread:Landroid/os/HandlerThread;

    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder$MsgHandler;

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder$MsgHandler;-><init>(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->prepareVideoEncoder(Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;II)V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->stopVideoEncoder()V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->updateEglContext(Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->updateChangedSize(II)V

    return-void
.end method

.method public static synthetic access$400(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->drawFrame(JI)V

    return-void
.end method

.method public static synthetic access$500(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->quitLooper()V

    return-void
.end method

.method public static synthetic access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->handleEncoderEOF()V

    return-void
.end method

.method public static synthetic access$700(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->handleAudioFormat(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->handleAudioFrame(Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;)V

    return-void
.end method

.method private drawFrame(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawFrame timetamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " texture id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->setInputTextureId(I)V

    .line 3
    iget-object p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    invoke-virtual {p3}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->makeCurrent()V

    .line 4
    iget-object p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p3, v0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->drainEncoder(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->onDraw()V

    .line 7
    iget-object p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->setPresentTime(J)V

    .line 8
    iget-object p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    invoke-virtual {p3}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->swapBuffers()V

    .line 9
    iget-wide v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mJniContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->OnVideoFrameCompeletedJni(JJ)V

    return-void
.end method

.method private handleAudioFormat(Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->addMediaTrack(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private handleAudioFrame(Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->writeAudioSample(Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;)V

    :cond_0
    return-void
.end method

.method private handleEncoderEOF()V
    .locals 1

    const-string v0, "handleEncoderEOF "

    .line 1
    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method private prepareVideoEncoder(Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;II)V
    .locals 10

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThreadHandlerStart:Z

    .line 2
    new-instance v0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    iget v4, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mFps:I

    iget v5, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mBitrate:I

    iget v6, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mRotate:I

    iget-object v7, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mCodecName:Ljava/lang/String;

    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;)V

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    .line 3
    iget-boolean p2, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mError:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->create(Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    invoke-virtual {p2}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->makeCurrent()V

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->onCreated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private quitLooper()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "to quitLooper encoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mEgl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v3}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->drainEncoder(Z)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->release()V

    .line 5
    iput-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "to quitLooper encoder222:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mAudioEncoder:Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;->releaseMedicacodec()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->destroy()V

    .line 10
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->release()V

    .line 12
    iput-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    .line 13
    :cond_2
    iput-boolean v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThreadHandlerExit:Z

    return-void
.end method

.method private stopVideoEncoder()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "to signal stop encoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->stopEncoder()V

    :cond_0
    return-void
.end method

.method private updateChangedSize(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->onChanged(II)V

    return-void
.end method

.method private updateEglContext(Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->release()V

    .line 2
    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->create(Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mVideoEncoder:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEgl:Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->makeCurrent()V

    return-void
.end method


# virtual methods
.method public CreateEncoder(IIIIILjava/lang/String;Ljava/lang/String;J)Z
    .locals 11

    move-object v8, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateEncoder: width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " codec name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    move-wide/from16 v9, p8

    .line 2
    iput-wide v9, v8, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mJniContext:J

    move-object v0, p0

    move/from16 v6, p5

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->setParams(Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 4
    new-instance v0, Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;

    invoke-direct {v0}, Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;-><init>()V

    iput-object v0, v8, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mAudioEncoder:Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;

    .line 5
    invoke-virtual {v0, p0}, Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;->SetEncoderDataCallback(Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;)V

    .line 6
    iget-object v0, v8, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mAudioEncoder:Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;

    iget v1, v8, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->sample_rate:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;->initMediacodec(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public EncodeAudioData([BIIID)Z
    .locals 0

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "jni EncodeAudioData() size: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "timeStamp:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mAudioEncoder:Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;

    invoke-virtual {p3, p2, p1, p5, p6}, Lcom/xiaomi/magicvideoskymediacodec/AudioEncoder;->encodecPcmToAAc(I[BD)Z

    move-result p1

    return p1
.end method

.method public EncodeVideoData(IJ)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java EncodeVideoData: texture_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->drawTexture(J[FI)V

    const/4 p1, 0x1

    return p1
.end method

.method public Flush()V
    .locals 1

    const-string v0, "java Flush():"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->stopRecord()V

    .line 3
    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEncodeExit:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->quit()V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEncodeExit:Z

    return-void
.end method

.method public native OnVideoEncoderEOFJni(J)V
.end method

.method public native OnVideoEncoderErrorJni(J)V
.end method

.method public native OnVideoFrameCompeletedJni(JJ)V
.end method

.method public Release()V
    .locals 6

    const-string v0, "java Release()"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEncodeExit:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->quit()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThreadHandlerStart:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    :cond_1
    iget-boolean v2, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mThreadHandlerExit:Z

    if-nez v2, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_2
    return-void
.end method

.method public addAudioFormat(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addAudioFrame(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public create()V
    .locals 0

    return-void
.end method

.method public draw(J[F)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    long-to-int p1, p1

    iget p2, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mTextureId:I

    const/4 v0, 0x5

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public drawTexture(J[FI)V
    .locals 6

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "drawTexture timestamp :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " drawTexture indexframe:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->indexframe:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->indexframe:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 3
    iget-object p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    long-to-int v1, p1

    invoke-virtual {p3, v0, v1, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p3

    .line 4
    iget-object p4, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {p4, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5
    iget-wide p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->indexframe:J

    add-long/2addr p3, v2

    iput-wide p3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->indexframe:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "drawTexture timestamp faild:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getFragmentSource()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float;\nvarying vec2 v_texPo;\nuniform sampler2D s_Texture;\nvoid main() {\n   vec4 tc = texture2D(s_Texture, v_texPo);\n   gl_FragColor = texture2D(s_Texture, v_texPo);\n}"

    return-object v0
.end method

.method public getOutputTextureId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mTextureId:I

    return v0
.end method

.method public getVertexSource()Ljava/lang/String;
    .locals 1

    const-string v0, "attribute vec4 av_Position; attribute vec2 af_Position; varying vec2 v_texPo; void main() {     v_texPo = af_Position;     gl_Position = av_Position; }"

    return-object v0
.end method

.method public onChanged(II)V
    .locals 0

    return-void
.end method

.method public onCreated()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->getVertexSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->getFragmentSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->mProgram:I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->initVertexBufferObjects()V

    .line 3
    iget v0, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->mProgram:I

    const-string v1, "av_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->av_Position:I

    .line 4
    iget v0, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->mProgram:I

    const-string v1, "af_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->af_Position:I

    .line 5
    iget v0, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->mProgram:I

    const-string v1, "s_Texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->s_Texture:I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreated: av_Position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->av_Position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreated: af_Position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->af_Position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreated: s_Texture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->s_Texture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreated: error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public onCroped(IIIIII)V
    .locals 0

    return-void
.end method

.method public onDraw()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->useProgram()V

    .line 3
    iget v0, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->width:I

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->height:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->viewPort(IIII)V

    .line 4
    iget v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->av_Position:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 5
    iget v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->af_Position:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 6
    iget v0, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->mVertexBufferId:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 7
    iget v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->av_Position:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 8
    iget v0, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->mDisplayTextureBufferId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 9
    iget v3, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->af_Position:I

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 10
    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/16 v0, 0xde1

    .line 11
    invoke-static {v0}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    const v1, 0x84c0

    .line 12
    invoke-static {v1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 13
    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 14
    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->s_Texture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 15
    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->VertexCount:I

    const/4 v3, 0x5

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    .line 16
    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    .line 17
    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->av_Position:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 18
    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->af_Position:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 19
    invoke-static {v0, v2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    return-void
.end method

.method public onVideoEncodedFrame(Z)V
    .locals 0

    const-string p1, "video encoded one frame "

    .line 1
    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onVideoEncoderEOF()V
    .locals 2

    const-string v0, "on recv encoder eof"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->encoded_end:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->encoded_end:Z

    return-void

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mJniContext:J

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->OnVideoEncoderEOFJni(J)V

    return-void
.end method

.method public onVideoEncoderError(I)V
    .locals 2

    const-string p1, "video encoder setup failed "

    .line 1
    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogE(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mError:Z

    .line 3
    iget-wide v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mJniContext:J

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->OnVideoEncoderErrorJni(J)V

    return-void
.end method

.method public quit()V
    .locals 2

    const-string v0, " to quit Recoder thread "

    .line 1
    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setInputTextureId(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mTextureId:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInputTextureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public setParams(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p7, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mPath:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->width:I

    .line 3
    iput p3, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->height:I

    .line 4
    iput p4, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mFps:I

    .line 5
    iput p5, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mBitrate:I

    .line 6
    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mCodecName:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mRotate:I

    return-void
.end method

.method public setReserverResolution(Z)V
    .locals 0

    return-void
.end method

.method public startRecord()V
    .locals 5

    const-string v0, "java startRecord context : "

    .line 1
    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mEncodeExit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->misStarted:Z

    .line 4
    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->width:I

    iget v3, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->height:I

    iget-object v4, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mSharedContext:Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopRecord()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->misStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "stopRecord"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    :goto_0
    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->encoded_end:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mWaitEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "wait encoder end callback"

    .line 6
    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->mWaitEvent:Ljava/lang/Object;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " found InterruptedException exception at doExtract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 9
    :goto_1
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWEncoder;->misStarted:Z

    return-void
.end method

.method public surfaceChangedSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->width:I

    .line 2
    iput p2, p0, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->height:I

    return-void
.end method
