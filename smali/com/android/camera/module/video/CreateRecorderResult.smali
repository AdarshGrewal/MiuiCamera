.class public Lcom/android/camera/module/video/CreateRecorderResult;
.super Ljava/lang/Object;
.source "CreateRecorderResult.java"


# instance fields
.field public final mAiAudioController:Lcom/android/camera/module/video/AiAudioController;

.field public final mFutureRecorder:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/android/camera/module/video/InitRecorderResult;",
            ">;"
        }
    .end annotation
.end field

.field public final mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

.field public final mRecorderController:Lcom/android/camera/module/video/RecorderController;

.field public final mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

.field public final mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lcom/android/camera/module/video/RecorderController;Lcom/android/camera/module/video/UserRecordSetting;Lcom/android/camera/module/video/RecordRuntimeInfo;Lcom/android/camera/module/video/VideoTrackInfo$Builder;Lcom/android/camera/module/video/AiAudioController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/android/camera/module/video/InitRecorderResult;",
            ">;",
            "Lcom/android/camera/module/video/RecorderController;",
            "Lcom/android/camera/module/video/UserRecordSetting;",
            "Lcom/android/camera/module/video/RecordRuntimeInfo;",
            "Lcom/android/camera/module/video/VideoTrackInfo$Builder;",
            "Lcom/android/camera/module/video/AiAudioController;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mFutureRecorder:Ljava/util/concurrent/Future;

    .line 3
    iput-object p3, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 4
    iput-object p4, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    .line 5
    iput-object p5, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 6
    iput-object p6, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mAiAudioController:Lcom/android/camera/module/video/AiAudioController;

    .line 7
    iput-object p2, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    return-void
.end method


# virtual methods
.method public getAiAudioController()Lcom/android/camera/module/video/AiAudioController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mAiAudioController:Lcom/android/camera/module/video/AiAudioController;

    return-object v0
.end method

.method public getFutureMediaRecorder()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/android/camera/module/video/InitRecorderResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mFutureRecorder:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getRecorderController()Lcom/android/camera/module/video/RecorderController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    return-object v0
.end method

.method public getRecorderRuntimeInfo()Lcom/android/camera/module/video/RecordRuntimeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    return-object v0
.end method

.method public getRecorderTrackInfoBuilder()Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    return-object v0
.end method

.method public getRecorderUserSetting()Lcom/android/camera/module/video/UserRecordSetting;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/CreateRecorderResult;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    return-object v0
.end method
