.class public Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;
.super Ljava/lang/Object;
.source "MultiRecorderManager.java"


# static fields
.field public static final SUCCESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MultiRecorderManager"


# instance fields
.field public final mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field public mIsRecording:Z

.field public final mLock:Ljava/lang/Object;

.field public final mRecorderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/recorder/MiRecorder;",
            ">;"
        }
    .end annotation
.end field

.field public mStatPausedTimes:I

.field public mStatResumeTimes:I


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatPausedTimes:I

    .line 5
    iput v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatResumeTimes:I

    .line 6
    iput-object p1, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method public static synthetic OooO00o([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0o;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/util/SparseArray;Lcom/android/camera/dualvideo/recorder/MiRecorder;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic OooO00o(Lio/reactivex/SingleEmitter;JLjava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 12
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p0, p3}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "stopRecorder: time spent(ms): "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiRecorderManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Object;)Z
    .locals 1

    .line 9
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Lio/reactivex/Observable;
    .locals 1

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0oo;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0oo;-><init>(Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;Lcom/android/camera/dualvideo/recorder/MiRecorder;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/recorder/MiRecorder;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopRecorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiRecorderManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->stop()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->save(Lcom/android/camera/storage/ImageSaver;)V

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->release()V

    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecorderSurface()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0oO;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0oO;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mIsRecording:Z

    return v0
.end method

.method public isRecordingPaused()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooOO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooOO0o;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized pauseRecorder()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooOO0O;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MultiRecorderManager"

    .line 2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_0
    iget v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatPausedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatPausedTimes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MultiRecorderManager"

    const-string/jumbo v1, "releaseRecorder"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mIsRecording:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooOO0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0O0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatResumeTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatResumeTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRecorder([ILandroid/location/Location;Lcom/android/camera/CameraSize;Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;JI)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    const-string v2, "MultiRecorderManager"

    const-string/jumbo v3, "startRecorder: "

    .line 1
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v4, v1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v5, v1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    array-length v5, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget v9, v0, v7

    .line 6
    iget-object v15, v1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/camera/dualvideo/recorder/MiRecorder;

    move-object v8, v14

    move-object/from16 v10, p2

    move-wide/from16 v11, p5

    move/from16 v13, p7

    move-object v6, v14

    move-object/from16 v14, p4

    move-object v0, v15

    move-object/from16 v15, p3

    invoke-direct/range {v8 .. v15}, Lcom/android/camera/dualvideo/recorder/MiRecorder;-><init>(ILandroid/location/Location;JILcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;Lcom/android/camera/CameraSize;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 8
    :try_start_2
    iput-boolean v0, v1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mIsRecording:Z

    .line 9
    iget-object v0, v1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    sget-object v4, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO00o;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 10
    iput v0, v1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatPausedTimes:I

    .line 11
    iput v0, v1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatResumeTimes:I

    const-string v0, "MultiRecorderManager"

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecorder: time spent(ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRecorder(Lio/reactivex/SingleEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "MultiRecorderManager"

    const-string/jumbo v1, "stopRecorder: "

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mIsRecording:Z

    .line 6
    iget-object v2, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 7
    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mRecorderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0OO;

    invoke-direct {v3, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0OO;-><init>(Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;)V

    .line 9
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 10
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 11
    sget-object v3, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0Oo;

    invoke-static {v2, v3}, Lio/reactivex/Observable;->zip(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0o0;

    invoke-direct {v3, p1, v0, v1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000/OooO0o0;-><init>(Lio/reactivex/SingleEmitter;J)V

    .line 12
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
