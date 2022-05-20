.class public Lcom/android/camera/effect/renders/SnapshotRender;
.super Ljava/lang/Object;
.source "SnapshotRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/renders/SnapshotRender$RenderHolder;,
        Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;
    }
.end annotation


# static fields
.field public static final DUMP_TEXTURE:Z = false

.field public static final QUEUE_LIMIT:I = 0x7

.field public static final TAG:Ljava/lang/String; = "SnapshotRender"


# instance fields
.field public mAdjHeight:I

.field public mAdjWidth:I

.field public mBlockHeight:I

.field public mBlockWidth:I

.field public mDeviceWaterMark:Lcom/android/camera/effect/renders/WaterMark;

.field public mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

.field public mEglHandler:Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

.field public mEglThread:Landroid/os/HandlerThread;

.field public mFrameCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

.field public volatile mImageQueueSize:I

.field public mLastEffectId:I

.field public final mLock:Ljava/lang/Object;

.field public mMemImage:Lcom/android/camera/effect/framework/image/MemYuvImage;

.field public mQuality:I

.field public mRelease:Z

.field public mReleasePending:Z

.field public mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

.field public mSplitter:Lcom/android/camera/effect/framework/graphics/Splitter;

.field public mTimeWaterMark:Lcom/android/camera/effect/renders/WaterMark;

.field public mTotalCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x61

    .line 3
    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mQuality:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mImageQueueSize:I

    .line 5
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mLastEffectId:I

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mLock:Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/android/camera/effect/renders/SnapshotRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnapshotRender created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SnapshotRender"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglThread:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 10
    new-instance v1, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;-><init>(Lcom/android/camera/effect/renders/SnapshotRender;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    .line 11
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mMemImage:Lcom/android/camera/effect/framework/image/MemYuvImage;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/android/camera/effect/framework/image/MemYuvImage;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/image/MemYuvImage;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mMemImage:Lcom/android/camera/effect/framework/image/MemYuvImage;

    .line 13
    :cond_0
    new-instance v1, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mFrameCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    .line 14
    new-instance v1, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mTotalCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    .line 15
    new-instance v1, Lcom/android/camera/effect/framework/graphics/Splitter;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/graphics/Splitter;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mSplitter:Lcom/android/camera/effect/framework/graphics/Splitter;

    .line 16
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mRelease:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/effect/renders/SnapshotRender$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotRender;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/effect/renders/SnapshotRender;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mReleasePending:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/EglCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/framework/gles/EglCore;)Lcom/android/camera/effect/framework/gles/EglCore;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    return-object p0
.end method

.method public static synthetic access$1102(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mTotalCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/image/MemYuvImage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mMemImage:Lcom/android/camera/effect/framework/image/MemYuvImage;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/graphics/Splitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mSplitter:Lcom/android/camera/effect/framework/graphics/Splitter;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mDeviceWaterMark:Lcom/android/camera/effect/renders/WaterMark;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mDeviceWaterMark:Lcom/android/camera/effect/renders/WaterMark;

    return-object p1
.end method

.method public static synthetic access$1600(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/effect/renders/SnapshotRender;->getDeviceWaterMark(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mTimeWaterMark:Lcom/android/camera/effect/renders/WaterMark;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mTimeWaterMark:Lcom/android/camera/effect/renders/WaterMark;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/effect/renders/SnapshotRender;->getTimeWaterMark(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mFrameCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/effect/renders/SnapshotRender;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/effect/renders/SnapshotRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mQuality:I

    return p0
.end method

.method public static synthetic access$2100(Lcom/android/camera/effect/renders/SnapshotRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mLastEffectId:I

    return p0
.end method

.method public static synthetic access$2102(Lcom/android/camera/effect/renders/SnapshotRender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mLastEffectId:I

    return p1
.end method

.method public static synthetic access$2200(Lcom/android/camera/effect/renders/SnapshotRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotRender;->destroy()V

    return-void
.end method

.method public static synthetic access$310(Lcom/android/camera/effect/renders/SnapshotRender;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mImageQueueSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mImageQueueSize:I

    return v0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/android/camera/effect/renders/SnapshotRender;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotRender;->calEachBlockHeight(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mBlockWidth:I

    return p0
.end method

.method public static synthetic access$602(Lcom/android/camera/effect/renders/SnapshotRender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mBlockWidth:I

    return p1
.end method

.method public static synthetic access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mBlockHeight:I

    return p0
.end method

.method public static synthetic access$702(Lcom/android/camera/effect/renders/SnapshotRender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mBlockHeight:I

    return p1
.end method

.method public static synthetic access$800(Lcom/android/camera/effect/renders/SnapshotRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mAdjWidth:I

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/effect/renders/SnapshotRender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mAdjWidth:I

    return p1
.end method

.method public static synthetic access$900(Lcom/android/camera/effect/renders/SnapshotRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mAdjHeight:I

    return p0
.end method

.method public static synthetic access$902(Lcom/android/camera/effect/renders/SnapshotRender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mAdjHeight:I

    return p1
.end method

.method private calEachBlockHeight(II)I
    .locals 3

    const/4 v0, 0x1

    :goto_0
    mul-int v1, p1, p2

    const v2, 0x5b8d80

    if-le v1, v2, :cond_0

    shr-int/lit8 p2, p2, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private destroy()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mRelease:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mReleasePending:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/PbufferSurface;->release()V

    .line 5
    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/EglCore;->release()V

    .line 8
    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 10
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 11
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapshotRender released "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getDeviceWaterMark(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 13

    .line 1
    iget-boolean v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasDualWaterMark:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasFrontWaterMark:Z

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    .line 3
    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 4
    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->isOutputSquare()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v11, v2

    goto :goto_0

    :cond_1
    move v11, v3

    .line 7
    :goto_0
    new-instance v12, Lcom/android/camera/effect/renders/CacheKey;

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getCustomText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v8

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v9

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->isOutputSquare()Z

    move-result v10

    move-object v3, v12

    move v4, v2

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/effect/renders/CacheKey;-><init>(IIILjava/lang/String;ZZZ)V

    const-string v3, ", mHasDualWaterMark="

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getCacheKey()Lcom/android/camera/effect/renders/CacheKey;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/camera/effect/renders/CacheKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceWaterMark: from cache, mHasFrontWaterMark="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasFrontWaterMark:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasDualWaterMark:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 12
    :cond_2
    sget-object p0, Lcom/android/camera/effect/renders/SnapshotRender;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceWaterMark: create new, mHasFrontWaterMark="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasFrontWaterMark:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasDualWaterMark:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0oOOo()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 14
    iget-boolean p0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasDualWaterMark:Z

    if-eqz p0, :cond_3

    .line 15
    new-instance v1, Lcom/android/camera/effect/renders/DeviceWaterMark;

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getCustomText()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v8

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v9

    move-object v3, v1

    move v4, v2

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/effect/renders/DeviceWaterMark;-><init>(IIILjava/lang/String;ZZ)V

    goto :goto_1

    .line 19
    :cond_3
    iget-boolean p0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasFrontWaterMark:Z

    if-eqz p0, :cond_6

    .line 20
    new-instance v1, Lcom/android/camera/effect/renders/DeviceWaterMark;

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v8

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v9

    const-string v7, ""

    move-object v3, v1

    move v4, v2

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/effect/renders/DeviceWaterMark;-><init>(IIILjava/lang/String;ZZ)V

    goto :goto_1

    .line 23
    :cond_4
    iget-boolean p0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasDualWaterMark:Z

    if-eqz p0, :cond_5

    .line 24
    iget p0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    invoke-static {v2, v11, p0, v0}, Lcom/android/camera/Util;->getDeviceWatermark(IIILcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    goto :goto_1

    .line 25
    :cond_5
    iget-boolean p0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasFrontWaterMark:Z

    if-eqz p0, :cond_6

    .line 26
    iget p0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    invoke-static {v2, v11, p0, v0}, Lcom/android/camera/Util;->getDeviceFrontWatermark(IIILcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 27
    invoke-virtual {v1, v12}, Lcom/android/camera/effect/renders/WaterMark;->setCacheKey(Lcom/android/camera/effect/renders/CacheKey;)V

    :cond_7
    return-object v1
.end method

.method public static getRender()Lcom/android/camera/effect/renders/SnapshotRender;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender$RenderHolder;->access$000()Lcom/android/camera/effect/renders/SnapshotRender;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeWaterMark(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 13

    .line 1
    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    .line 4
    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 5
    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->isOutputSquare()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v11, v2

    goto :goto_0

    :cond_1
    move v11, v3

    .line 8
    :goto_0
    new-instance v12, Lcom/android/camera/effect/renders/CacheKey;

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    iget-object v7, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v8

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v9

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->isOutputSquare()Z

    move-result v10

    move-object v3, v12

    move v4, v2

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/effect/renders/CacheKey;-><init>(IIILjava/lang/String;ZZZ)V

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getCacheKey()Lcom/android/camera/effect/renders/CacheKey;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/camera/effect/renders/CacheKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    sget-object p1, Lcom/android/camera/effect/renders/SnapshotRender;->TAG:Ljava/lang/String;

    const-string v0, "getTimeWaterMark: from cache..."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 13
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0oOOo()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 14
    new-instance p0, Lcom/android/camera/effect/renders/TimeWaterMark;

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v5

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v6

    move-object v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/renders/TimeWaterMark;-><init>(Ljava/lang/String;IIIZZ)V

    goto :goto_1

    .line 17
    :cond_3
    new-instance p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v5

    move-object v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;-><init>(Ljava/lang/String;IIIZ)V

    .line 19
    :goto_1
    invoke-virtual {p0, v12}, Lcom/android/camera/effect/renders/WaterMark;->setCacheKey(Lcom/android/camera/effect/renders/CacheKey;)V

    return-object p0
.end method


# virtual methods
.method public isRelease()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mReleasePending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mRelease:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public prepareEffectRender(I)V
    .locals 3

    .line 1
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public processImageAsync(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queueSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mImageQueueSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mImageQueueSize:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/effect/renders/SnapshotRender;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "queueSize is full"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mImageQueueSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mImageQueueSize:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return v2

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public processImageSync(Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotRender;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release: try to release but message is not null, so pending it"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mReleasePending:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
