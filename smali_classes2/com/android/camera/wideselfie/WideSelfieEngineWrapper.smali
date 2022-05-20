.class public Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;
.super Ljava/lang/Object;
.source "WideSelfieEngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MySensorEventListener;,
        Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MyWideSelfieCallback;,
        Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;
    }
.end annotation


# static fields
.field public static final AWS_STATE_CAPTURING:I = 0x2002

.field public static final AWS_STATE_PREVIEW:I = 0x2001

.field public static final AWS_STATE_STITCHING:I = 0x2003

.field public static final DIRECTION_MOVE_LEFT:I = 0x1

.field public static final DIRECTION_MOVE_RIGHT:I = 0x0

.field public static final DIRECTION_NONE:I = -0x1

.field public static final MSG_PROCESS_DATA:I = 0x1

.field public static final TAG:Ljava/lang/String; = "WideSelfieEngine"


# instance fields
.field public mAngleSize:Landroid/util/SizeF;

.field public volatile mCanStopCapture:Z

.field public mContext:Landroid/content/Context;

.field public volatile mEngineInitialized:Z

.field public mFullImageHeight:I

.field public mFullImageWidth:I

.field public mHandle:Landroid/os/Handler;

.field public mPreviewHeight:I

.field public mPreviewRect:Landroid/graphics/Rect;

.field public mPreviewWidth:I

.field public mSensor:Landroid/hardware/Sensor;

.field public mSensorEventListener:Landroid/hardware/SensorEventListener;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorOrientation:I

.field public mSensorRegisted:Z

.field public mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mStitchResult:I

.field public mThumbBgWidth:I

.field public mWideSelfCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mWideSelfieCallback:Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;

.field public mWideSelfieCurrentCommand:I

.field public mWideSelfieOrientation:I

.field public mWorkHandler:Landroid/os/Handler;

.field public mWorkThread:Landroid/os/HandlerThread;

.field public nThumbnailHeight:I

.field public nThumbnailWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    const/16 v1, 0x5a

    .line 3
    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mStitchResult:I

    .line 5
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x2001

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    .line 7
    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    .line 8
    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewWidth:I

    .line 9
    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewHeight:I

    .line 10
    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    .line 11
    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    .line 12
    iput-boolean v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mEngineInitialized:Z

    .line 13
    iput-boolean v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    .line 14
    iput-boolean v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    .line 15
    new-instance v1, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MyWideSelfieCallback;

    invoke-direct {v1, p0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MyWideSelfieCallback;-><init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)V

    iput-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCallback:Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;

    .line 16
    new-instance v1, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;

    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;-><init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mHandle:Landroid/os/Handler;

    .line 18
    new-instance v1, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MySensorEventListener;

    invoke-direct {v1, v0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MySensorEventListener;-><init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;)V

    iput-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 19
    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    .line 20
    iput p2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorOrientation:I

    .line 21
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfCallbackRef:Ljava/lang/ref/WeakReference;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x4

    .line 23
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 24
    iget-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070827

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mThumbBgWidth:I

    .line 25
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "WideSelfieThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWorkThread:Landroid/os/HandlerThread;

    .line 26
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 27
    new-instance p1, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;

    iget-object p2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;-><init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->onBurstCaptureInternal([B)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;ILcom/arcsoft/camera/wideselfie/ProcessResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->handleProcessCallback(ILcom/arcsoft/camera/wideselfie/ProcessResult;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfCallbackRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mStitchResult:I

    return p0
.end method

.method private getAngleValue(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/SizeF;
    .locals 9

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    .line 2
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    if-eqz p1, :cond_0

    .line 3
    array-length v1, p1

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    const/4 v2, 0x0

    aget v3, p1, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    div-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 5
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    aget p1, p1, v2

    mul-float/2addr p1, v4

    div-float/2addr v0, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 6
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, v1, p1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleProcessCallback(ILcom/arcsoft/camera/wideselfie/ProcessResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iget p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p1, "WideSelfieEngine"

    const-string p2, "handleProcessCallback AWS_COMMAND_STOP"

    .line 5
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mHandle:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onBurstCaptureInternal([B)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mEngineInitialized:Z

    const-string v1, "WideSelfieEngine"

    if-nez v0, :cond_0

    const-string/jumbo p1, "onBurstCapture mEngineInitialized false"

    .line 2
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorOrientation:I

    const/16 v2, 0x5a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    .line 4
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-ne v0, v2, :cond_1

    const/16 v0, 0x3002

    goto :goto_0

    :cond_1
    const/16 v0, 0x3001

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    move v0, v4

    move v2, v0

    .line 5
    :goto_1
    iget-object v5, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/16 v6, 0x2002

    if-ne v5, v6, :cond_3

    const-string/jumbo v5, "onBurstCapture AWS_STATE_CAPTURING"

    .line 6
    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iput v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    .line 8
    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v1

    invoke-virtual {v1, v4, p1, v2, v0}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->process(I[BZI)I

    .line 9
    iget-boolean p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    if-nez p1, :cond_5

    .line 10
    iput-boolean v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x2003

    const/16 v2, 0x2001

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo p1, "onBurstCapture STITCHING E"

    .line 13
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v3, [B

    .line 14
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;->onWideSelfCompleted()V

    .line 16
    :cond_4
    iput v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    .line 17
    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v0

    invoke-virtual {v0, v3, p1, v4, v4}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->process(I[BZI)I

    move-result v0

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mStitchResult:I

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBurstCapture mStitchResult "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mStitchResult:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    .line 20
    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v4, v4}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->process(I[BZI)I

    const-string/jumbo p1, "onBurstCapture STITCHING X"

    .line 21
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->uninit()I

    .line 23
    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->setOnCallback(Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;)V

    .line 24
    iput-boolean v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mEngineInitialized:Z

    new-array p1, v3, [Ljava/lang/Object;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "WideSelfieEngine process duration %s ms"

    .line 26
    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 27
    iput-boolean v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public onBurstCapture(Landroid/media/Image;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_0

    const-string p1, "WideSelfieEngine"

    const-string/jumbo v0, "onBurstCapture ignore when STITCHING"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-static {p1, v0}, LOooO00o/OooO0OO/OooO00o/OooO00o/OooO0OO;->OooO00o(Landroid/media/Image;I)[B

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WideSelfieEngine"

    const-string/jumbo v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mHandle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mHandle:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWorkThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensor:Landroid/hardware/Sensor;

    const/16 v3, 0x2710

    iget-object v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    :cond_0
    return-void
.end method

.method public setCameraParameter(Ljava/lang/String;IIII)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewWidth:I

    .line 3
    iput p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewHeight:I

    .line 4
    iput p4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    .line 5
    iput p5, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    .line 6
    iget-object p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070823

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 7
    iget p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewWidth:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    .line 8
    iget p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewHeight:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mFullImageWidth = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mFullImageHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WideSelfieEngine"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    const-string p3, "camera"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    .line 11
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->getAngleValue(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mAngleSize:Landroid/util/SizeF;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    return-void
.end method

.method public startCapture()I
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCapture orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfieEngine"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    iget v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    const/16 v4, 0x802

    invoke-static {v0, v2, v4, v3}, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->getDefaultInitParams(IIII)Lcom/arcsoft/camera/wideselfie/AwsInitParameter;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getInstance(Landroid/content/Context;)Lcom/android/camera/wideselfie/WideSelfieConfig;

    move-result-object v2

    .line 4
    iget v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    const/16 v4, 0x5a

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v4, :cond_0

    .line 5
    iget v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    invoke-virtual {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgWidth()I

    move-result v7

    sub-int/2addr v7, v6

    mul-int/2addr v3, v7

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getStillPreviewWidth()I

    move-result v2

    div-int/2addr v3, v2

    .line 7
    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mThumbBgWidth:I

    iget v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    sub-int/2addr v2, v7

    div-int/2addr v2, v6

    .line 8
    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    iget v9, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    add-int/2addr v9, v2

    invoke-direct {v7, v5, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 9
    :cond_0
    iget v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    invoke-virtual {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgHeightVertical()I

    move-result v7

    sub-int/2addr v7, v6

    mul-int/2addr v3, v7

    .line 10
    invoke-virtual {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getStillPreviewHeight()I

    move-result v2

    div-int/2addr v3, v2

    .line 11
    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mThumbBgWidth:I

    iget v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    sub-int/2addr v2, v7

    div-int/2addr v2, v6

    .line 12
    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    add-int/2addr v8, v2

    iget v9, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    invoke-direct {v7, v2, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewRect:Landroid/graphics/Rect;

    .line 13
    :goto_0
    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mThumbBgWidth:I

    iget v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    sub-int/2addr v2, v7

    div-int/2addr v2, v6

    .line 14
    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    iget v9, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    add-int/2addr v9, v2

    invoke-direct {v7, v5, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewRect:Landroid/graphics/Rect;

    .line 15
    iput v3, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->maxResultWidth:I

    .line 16
    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    :goto_1
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->progressBarThumbHeight:I

    const/16 v2, 0x1e0

    .line 17
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailWidth:I

    const/16 v2, 0x168

    .line 18
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailHeight:I

    .line 19
    iput v5, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->guideStopBarThumbHeight:I

    .line 20
    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mAngleSize:Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->cameraViewAngleForWidth:F

    .line 21
    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mAngleSize:Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->cameraViewAngleForHeight:F

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->progressBarThumbHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailWidth:I

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget v5, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    iget v5, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->guideStopBarThumbHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string/jumbo v3, "startCapture maxResultWidth = %d, progressBarThumbHeight = %d, thumbnailWidth = %d, thumbnailHeight = %d,  guideStopBarThumbHeight = %d"

    .line 24
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->init(Lcom/arcsoft/camera/wideselfie/AwsInitParameter;)I

    move-result v0

    .line 26
    iput-boolean v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mEngineInitialized:Z

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WideSelfieEngine init, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCallback:Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;

    invoke-virtual {v1, v2}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->setOnCallback(Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;)V

    .line 29
    iget-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x2002

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v0
.end method

.method public stopCapture()Z
    .locals 5

    const-string v0, "WideSelfieEngine"

    const-string/jumbo v1, "stopCapture E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "stopCapture failed, can\'t stop"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x2002

    const/16 v4, 0x2003

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "stopCapture failed, error state"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v1, "stopCapture X"

    .line 6
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
