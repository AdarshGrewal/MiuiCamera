.class public Lcom/android/camera/PreviewMetadata;
.super Ljava/lang/Object;
.source "PreviewMetadata.java"

# interfaces
.implements Lcom/android/camera/IPreviewMetadata;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/IPreviewMetadata<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Lcom/android/camera/IFuncPreviewMetadataListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PreviewMetadata"


# instance fields
.field public mDisposables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public mFlowableEmitters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/FlowableEmitter;",
            ">;"
        }
    .end annotation
.end field

.field public mPartialDisposables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public mPartialFlowableEmitters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/FlowableEmitter;",
            ">;"
        }
    .end annotation
.end field

.field public mPartialPreviewMeatadataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/IFuncPreviewMetadataListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewMeatadataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/IFuncPreviewMetadataListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialDisposables:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mDisposables:Ljava/util/List;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMetadataFlowable onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPartialMetadataFlowable onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/PreviewMetadata;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/PreviewMetadata;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    return-object p0
.end method

.method private initMetadataFlowable()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IFuncPreviewMetadataListener;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Lcom/android/camera/PreviewMetadata$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PreviewMetadata$2;-><init>(Lcom/android/camera/PreviewMetadata;)V

    sget-object v3, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v2, v3}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 3
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Lcom/android/camera/IPreviewMetadataListener;->getSamplePeriod()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/android/camera/IPreviewMetadataListener;->getSamplePeriod()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lio/reactivex/Flowable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 6
    :cond_1
    invoke-virtual {v2, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 7
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lio/reactivex/Flowable;->onTerminateDetach()Lio/reactivex/Flowable;

    move-result-object v2

    .line 9
    sget-boolean v3, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0O0:Z

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v2, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_2
    sget-object v3, LOooO00o/OooO0O0/OooO00o/OooOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooOOo;

    invoke-virtual {v2, v1, v3}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 12
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PreviewMetadata;->mPartialDisposables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v1, "<preview metadata> init metadata flowable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initPartialMetadataFlowable()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IFuncPreviewMetadataListener;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Lcom/android/camera/PreviewMetadata$1;

    invoke-direct {v2, p0}, Lcom/android/camera/PreviewMetadata$1;-><init>(Lcom/android/camera/PreviewMetadata;)V

    sget-object v3, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v2, v3}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 3
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Lcom/android/camera/IPreviewMetadataListener;->getSamplePeriod()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/android/camera/IPreviewMetadataListener;->getSamplePeriod()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lio/reactivex/Flowable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Flowable;->onBackpressureDrop()Lio/reactivex/Flowable;

    move-result-object v2

    .line 6
    :cond_1
    invoke-virtual {v2, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 7
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lio/reactivex/Flowable;->onTerminateDetach()Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, LOooO00o/OooO0O0/OooO00o/OooOOoo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooOOoo;

    .line 9
    invoke-virtual {v2, v1, v3}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/camera/PreviewMetadata;->mDisposables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v1, "<preview metadata> init partial metadata flowable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onPartialPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    instance-of v5, v3, Lio/reactivex/FlowableEmitter;

    if-eqz v5, :cond_2

    .line 5
    move-object v4, v3

    check-cast v4, Lio/reactivex/FlowableEmitter;

    :cond_2
    if-nez v4, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-interface {v4, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<preview metadata> update partial preview metadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onPartialPreviewMetadata(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewMetadata;->onPartialPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    instance-of v5, v3, Lio/reactivex/FlowableEmitter;

    if-eqz v5, :cond_2

    .line 5
    move-object v4, v3

    check-cast v4, Lio/reactivex/FlowableEmitter;

    :cond_2
    if-nez v4, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-interface {v4, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<preview metadata> update preview metadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onPreviewMetadata(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewMetadata;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public registerPreviewMeatedata(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/IFuncPreviewMetadataListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v1, "<preview metadata> register metadata listener"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PreviewMetadata;->initMetadataFlowable()V

    return-void
.end method

.method public registerPreviewPartialMetadata(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/IFuncPreviewMetadataListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v1, "<preview metadata> register partial metadata listener"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PreviewMetadata;->initPartialMetadataFlowable()V

    return-void
.end method

.method public unregisterPreviewMetadata()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialDisposables:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialDisposables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mDisposables:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mDisposables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    :cond_5
    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v1, "<preview metadata> unregister all"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
