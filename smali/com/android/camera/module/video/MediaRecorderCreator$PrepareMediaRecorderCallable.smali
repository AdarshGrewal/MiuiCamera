.class public Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;
.super Ljava/lang/Object;
.source "MediaRecorderCreator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video/MediaRecorderCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrepareMediaRecorderCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/camera/module/video/InitRecorderResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final mAiAudioControllerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/video/AiAudioController;",
            ">;"
        }
    .end annotation
.end field

.field public final mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mControllerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/video/RecorderController;",
            ">;"
        }
    .end annotation
.end field

.field public final mModuleIndex:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/RecorderController;Lcom/android/camera/module/video/AiAudioController;Lcom/android/camera/ActivityBase;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;->mControllerReference:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;->mAiAudioControllerReference:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;->mContextReference:Ljava/lang/ref/WeakReference;

    .line 5
    iput p4, p0, Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;->mModuleIndex:I

    return-void
.end method


# virtual methods
.method public call()Lcom/android/camera/module/video/InitRecorderResult;
    .locals 5

    .line 2
    invoke-static {}, Lcom/android/camera/module/video/MediaRecorderCreator;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "prepare media recorder: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;->mControllerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/video/RecorderController;

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;->mAiAudioControllerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/video/AiAudioController;

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 6
    iget v4, p0, Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;->mModuleIndex:I

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/camera/module/video/RecorderController;->initializeRecorder(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;I)Lcom/android/camera/module/video/InitRecorderResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/camera/module/video/MediaRecorderCreator;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare media recorder: X. result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v3, "null"

    goto :goto_1

    :cond_1
    iget-boolean v3, v0, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    .line 8
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/video/MediaRecorderCreator$PrepareMediaRecorderCallable;->call()Lcom/android/camera/module/video/InitRecorderResult;

    move-result-object v0

    return-object v0
.end method
