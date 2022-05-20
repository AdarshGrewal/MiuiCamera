.class public Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;
.super Ljava/lang/Object;
.source "WVPEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;,
        Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;
    }
.end annotation


# static fields
.field public static final FEED_RESULT_DETECTED_END:I = 0x2

.field public static final FEED_RESULT_DETECTED_LEVEL_ONE:I = 0x1

.field public static final SDK_VERSION:Ljava/lang/String; = "wvp_sdk_202006011636"

.field public static final TAG:Ljava/lang/String; = "WVPEngineImpl"

.field public static final WAKEUP_BUFFER_SIZE:I = 0x280

.field public static mInstance:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;


# instance fields
.field public init:Z

.field public isPrintLog:Z

.field public isWakeup:Z

.field public isWriteBackward:Z

.field public mBackwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

.field public mCacheData:[B

.field public mDebugPath:Ljava/lang/String;

.field public mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

.field public mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

.field public mReturnIndex:I

.field public mSoundVerifyStr:Ljava/lang/String;

.field public mSplitDataHandleTime:J

.field public mVoiceDataSize:J

.field public mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

.field public mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

.field public mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

.field public mWakeupLevelOneEndTime:J

.field public mWakeupLevelOneHandleTime:J

.field public mWorkHandler:Landroid/os/Handler;

.field public mWorkHandlerThread:Landroid/os/HandlerThread;

.field public openVoicePrint:Z

.field public pause:Z

.field public running:Z

.field public saveRecord:Z

.field public saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->init:Z

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->running:Z

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->pause:Z

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->isPrintLog:Z

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->saveRecord:Z

    .line 7
    iput v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mReturnIndex:I

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mSoundVerifyStr:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->isWakeup:Z

    .line 10
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->openVoicePrint:Z

    .line 11
    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mDebugPath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupLevelOneHandleTime:J

    .line 13
    iput-wide v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoiceDataSize:J

    .line 14
    iput-wide v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupLevelOneEndTime:J

    .line 15
    iput-wide v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mSplitDataHandleTime:J

    const-string v1, "wakeup-engine"

    .line 16
    invoke-static {v1}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->loadLibrary(Ljava/lang/String;)V

    .line 17
    new-instance v1, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    invoke-direct {v1}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    .line 18
    new-instance v1, Lcom/xiaomi/asr/engine/record/VoiceRecord;

    new-instance v2, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;

    invoke-direct {v2, p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;-><init>(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)V

    invoke-direct {v1, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;-><init>(Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;)V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->setParam(II)V

    .line 20
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    const/4 v2, 0x2

    const/16 v3, 0x280

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->setParam(II)V

    .line 21
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->setParam(II)V

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wvp-engine-impl-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandlerThread:Landroid/os/HandlerThread;

    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;

    invoke-direct {v2, p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;-><init>(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    const v1, 0xfa00

    invoke-direct {v0, v1}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    .line 26
    new-instance v0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    const/16 v1, 0x4b00

    invoke-direct {v0, v1}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mBackwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    .line 27
    new-instance v0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    const-string v1, "voiceprint-engine-lab"

    invoke-direct {v0, v1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    .line 28
    new-instance v0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->openVoicePrint:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mSplitDataHandleTime:J

    return-wide v0
.end method

.method public static synthetic access$1002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mSplitDataHandleTime:J

    return-wide p1
.end method

.method public static synthetic access$1100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupLevelOneHandleTime:J

    return-wide v0
.end method

.method public static synthetic access$1202(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupLevelOneHandleTime:J

    return-wide p1
.end method

.method public static synthetic access$1300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoiceDataSize:J

    return-wide v0
.end method

.method public static synthetic access$1302(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoiceDataSize:J

    return-wide p1
.end method

.method public static synthetic access$1400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupLevelOneEndTime:J

    return-wide v0
.end method

.method public static synthetic access$1402(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupLevelOneEndTime:J

    return-wide p1
.end method

.method public static synthetic access$1500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mReturnIndex:I

    return p0
.end method

.method public static synthetic access$1502(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mReturnIndex:I

    return p1
.end method

.method public static synthetic access$1600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->isWakeup:Z

    return p0
.end method

.method public static synthetic access$1602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->isWakeup:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mSoundVerifyStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mSoundVerifyStr:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->voicePrintReco()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mCacheData:[B

    return-object p0
.end method

.method public static synthetic access$1902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mCacheData:[B

    return-object p1
.end method

.method public static synthetic access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->isPrintLog:Z

    return p0
.end method

.method public static synthetic access$2000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->isWriteBackward:Z

    return p0
.end method

.method public static synthetic access$2002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->isWriteBackward:Z

    return p1
.end method

.method public static synthetic access$2100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mBackwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->saveRecord:Z

    return p0
.end method

.method public static synthetic access$2300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->init:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->init:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->running:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->running:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoiceRecord:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->pause:Z

    return p0
.end method

.method public static synthetic access$902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->pause:Z

    return p1
.end method

.method public static getInstance()Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-direct {v1}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;-><init>()V

    sput-object v1, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mInstance:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    return-object v0
.end method

.method private voicePrintReco()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupGetFrameSize()I

    move-result v0

    mul-int/lit16 v0, v0, 0x140

    .line 2
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mForwardData:Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v1

    .line 3
    new-array v2, v0, [B

    .line 4
    array-length v3, v1

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$1;-><init>(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public abortEnrollment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->abortEnrollment()V

    return-void
.end method

.method public cancelEnrollment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->cancelEnrollment()V

    return-void
.end method

.method public commitEnrollment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->commitEnrollment()V

    return-void
.end method

.method public generateModel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getAllRegister()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->getAllRegister()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "path"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "name"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public openLog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->isPrintLog:Z

    return-void
.end method

.method public openVoicePrint(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->openVoicePrint:Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeAllRegister()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public restart()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->stop(J)V

    const/16 v0, 0x64

    .line 2
    invoke-virtual {p0, v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->start(I)V

    return-void
.end method

.method public saveRecord(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->saveRecord:Z

    return-void
.end method

.method public setDebugPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mDebugPath:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->saveVoiceUtil:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-virtual {v0, p1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->setSaveDir(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/xiaomi/asr/engine/WVPListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mOutListener:Lcom/xiaomi/asr/engine/WVPListener;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    return-void
.end method

.method public start(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startEnrollment(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stop(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call stop, stopRecordMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVPEngineImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public version()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->init:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wvp_sdk_202006011636 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mWakeupEngineInterface:Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    invoke-virtual {v1}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->mVoicePrintManager:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-virtual {v1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
