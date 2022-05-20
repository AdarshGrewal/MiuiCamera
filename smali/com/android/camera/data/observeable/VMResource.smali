.class public Lcom/android/camera/data/observeable/VMResource;
.super Lcom/android/camera/data/observeable/VMBase;
.source "VMResource.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VMResource"


# instance fields
.field public mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field public mRxDownloadState:Lcom/android/camera/data/observeable/RxData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/data/observeable/RxData<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/observeable/VMBase;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Lcom/android/camera/data/observeable/RxData;

    invoke-direct {v1, v0}, Lcom/android/camera/data/observeable/RxData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/data/observeable/VMResource;->mRxDownloadState:Lcom/android/camera/data/observeable/RxData;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/resource/BaseResourceItem;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;

    iget-object v1, p0, Lcom/android/camera/resource/BaseResourceItem;->mZipPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/resource/SimpleNativeDecompressRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/multi/PluginInfo;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-virtual {p1}, Lcom/android/camera/multi/PluginInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p1, Lcom/android/camera/multi/PluginInfo;->resourceItem:Lcom/android/camera/resource/BaseResourceItem;

    invoke-virtual {v0, p0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private removeItem(Lcom/android/camera/resource/BaseResourceItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/VMResource;->mRxDownloadState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/RxData;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2
    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    iget-object v0, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackResourceDownloadResult(Ljava/lang/String;I)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VMResource"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/observeable/VMResource;->updateItemState(Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/observeable/VMResource;->updateItemState(Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic OooO00o(Lio/reactivex/ObservableEmitter;ZLjava/lang/String;Lcom/android/camera/resource/BaseResourceItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object v0, p4, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackResourceDownloadResult(Ljava/lang/String;I)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download ok: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p4, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VMResource"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/camera/data/observeable/VMResource;->updateItemState(Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/Integer;)V

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1, p4}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 9
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/camera/data/observeable/VMResource;->removeItem(Lcom/android/camera/resource/BaseResourceItem;)V

    if-eqz p2, :cond_1

    .line 10
    invoke-static {p3}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public achieveEndOfCycle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/VMResource;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    :cond_0
    return-void
.end method

.method public rollbackData()V
    .locals 0

    return-void
.end method

.method public startAndGetDownloadDisposable(Lcom/android/camera/resource/BaseResourceItem;Landroidx/fragment/app/FragmentActivity;Lio/reactivex/ObservableEmitter;Z)Lio/reactivex/disposables/Disposable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/resource/BaseResourceItem;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/android/camera/resource/BaseResourceItem;",
            ">;Z)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VMResource"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v0, v2, v3}, Lcom/android/camera/fragment/CtaNoticeFragment;->checkCta(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "check cta"

    .line 3
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "check network"

    .line 5
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f120480

    const/16 p3, 0x50

    .line 6
    invoke-static {p2, p1, p3}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-object v2

    .line 7
    :cond_1
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackResourceDownloadStart(Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/observeable/VMResource;->updateItemState(Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/Integer;)V

    .line 9
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->mZipPath:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    iget-object v1, p1, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Lcom/android/camera/multi/PluginInfoRequest;

    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/multi/PluginInfoRequest;-><init>(Ljava/lang/String;Lcom/android/camera/resource/BaseResourceItem;)V

    .line 14
    const-class v1, Lcom/android/camera/multi/PluginInfo;

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO0o0;

    invoke-direct {v1, p2}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO0o0;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    :goto_0
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO0OO;

    .line 17
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 18
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO0Oo;

    invoke-direct {v1, p0, p3, p4, p2}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO0Oo;-><init>(Lcom/android/camera/data/observeable/VMResource;Lio/reactivex/ObservableEmitter;ZLjava/lang/String;)V

    new-instance p2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO0O0;

    invoke-direct {p2, p0, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO0O0;-><init>(Lcom/android/camera/data/observeable/VMResource;Lcom/android/camera/resource/BaseResourceItem;)V

    .line 19
    invoke-virtual {v0, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/android/camera/data/observeable/VMResource;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-nez p2, :cond_3

    .line 21
    new-instance p2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p2, p0, Lcom/android/camera/data/observeable/VMResource;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 22
    :cond_3
    iget-object p2, p0, Lcom/android/camera/data/observeable/VMResource;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object p1
.end method

.method public startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/android/camera/data/observeable/RxData$DataWrap<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/VMResource;->mRxDownloadState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/observeable/RxData;->observable(Landroidx/lifecycle/LifecycleOwner;)Lcom/android/camera/data/observeable/RxData$DataObservable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public updateItemState(Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/observeable/VMResource;->mRxDownloadState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/RxData;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 3
    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/android/camera/data/observeable/VMResource;->mRxDownloadState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/RxData;->set(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/data/observeable/VMBase;->judge()V

    return-void
.end method
