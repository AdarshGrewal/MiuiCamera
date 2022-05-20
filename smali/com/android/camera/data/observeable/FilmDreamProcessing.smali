.class public Lcom/android/camera/data/observeable/FilmDreamProcessing;
.super Lcom/android/camera/data/observeable/VMBase;
.source "FilmDreamProcessing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/observeable/FilmDreamProcessing$VmpState;
    }
.end annotation


# static fields
.field public static final EXECUTE_COMBINE:I = 0x6

.field public static final EXECUTE_CONCAT:I = 0x2

.field public static final FORCE_EXIT_WHEN_RECORDING:I = 0xa

.field public static final PREVIEW_ERROR:I = 0x3

.field public static final PREVIEW_PAUSE:I = 0x4

.field public static final PREVIEW_PLAYING:I = 0x5

.field public static final RECORDING_DONE:I = 0x9

.field public static final RECORDING_INCHOATE:I = 0x1

.field public static final SAVE_COMPLETE:I = 0x7

.field public static final SAVE_ERROR:I = 0x8

.field public static final STATE_IDLE:I


# instance fields
.field public mRxProcessingState:Lcom/android/camera/data/observeable/RxData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/data/observeable/RxData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRxRecordingState:Lcom/android/camera/data/observeable/RxData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/data/observeable/RxData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTempVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/observeable/VMBase;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/data/observeable/RxData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/data/observeable/RxData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mRxProcessingState:Lcom/android/camera/data/observeable/RxData;

    return-void
.end method


# virtual methods
.method public achieveEndOfCycle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mRxProcessingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/RxData;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTempVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mTempVideoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mTempVideoList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mTempVideoList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mTotalTime:J

    return-wide v0
.end method

.method public postState(I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mTempVideoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mTotalTime:J

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->rollbackData()V

    return-void
.end method

.method public rollbackData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mRxProcessingState:Lcom/android/camera/data/observeable/RxData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/RxData;->setSilently(Ljava/lang/Object;)V

    return-void
.end method

.method public setTotalTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mTotalTime:J

    return-void
.end method

.method public startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/android/camera/data/observeable/RxData$DataWrap<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mRxProcessingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/observeable/RxData;->observable(Landroidx/lifecycle/LifecycleOwner;)Lcom/android/camera/data/observeable/RxData$DataObservable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public updateState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/FilmDreamProcessing;->mRxProcessingState:Lcom/android/camera/data/observeable/RxData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/data/observeable/RxData;->set(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/observeable/VMBase;->judge()V

    return-void
.end method
