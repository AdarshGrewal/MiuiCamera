.class public Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;
.super Ljava/lang/Object;
.source "CompletablePreFixCamera2Setup.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/CompletableOnSubscribe;",
        "Lio/reactivex/Observer<",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PreFixCamera2Setup"


# instance fields
.field public isFromVoiceControl:Z

.field public mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field public mCurrentActivityHashCode:I

.field public mEmitter:Lio/reactivex/CompletableEmitter;

.field public mFromScreenSlide:Z

.field public mIntent:Landroid/content/Intent;

.field public mLastMode:Lcom/android/camera/module/Module;

.field public mModuleChanged:Z

.field public mNeedBlur:Z

.field public mStartFromKeyguard:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/CameraScreenNail;Landroid/content/Intent;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    .line 3
    iput p5, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mCurrentActivityHashCode:I

    if-eqz p2, :cond_0

    .line 4
    iget-boolean p5, p2, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    iput-boolean p5, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mNeedBlur:Z

    .line 5
    iget-boolean p5, p2, Lcom/android/camera/module/loader/StartControl;->mFromScreenSlide:Z

    iput-boolean p5, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mFromScreenSlide:Z

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 6
    iget p2, p2, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 7
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mModuleChanged:Z

    .line 8
    iput-object p3, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 9
    iput-object p4, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mIntent:Landroid/content/Intent;

    .line 10
    iput-boolean p6, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mStartFromKeyguard:Z

    .line 11
    iput-boolean p7, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->isFromVoiceControl:Z

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/data/cloud/DataCloudItemFeature;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/data/cloud/DataCloudItemFeature;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "loadSettings:"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "loadSettings:"

    const-string v0, "error"

    .line 2
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeLastModule()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/module/Module;->release(Z)V

    return-void
.end method

.method private isLastModuleAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadSettings()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemCloud()Lcom/android/camera/data/cloud/DataCloudItemFeature;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/resource/conf/ConfCacheRequest;

    invoke-direct {v1}, Lcom/android/camera/resource/conf/ConfCacheRequest;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/android/camera/resource/conf/ConfSettingRequest;

    invoke-direct {v2}, Lcom/android/camera/resource/conf/ConfSettingRequest;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0OO/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0OO/OooO0o;

    sget-object v2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0OO/OooO0oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0OO/OooO0oO;

    .line 6
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->onNext(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mEmitter:Lio/reactivex/CompletableEmitter;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mModuleChanged "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mModuleChanged:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " LastMode is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "PreFixCamera2Setup"

    invoke-static {v8, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mNeedBlur:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget-boolean v1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mFromScreenSlide:Z

    invoke-virtual {p1, v1}, Lcom/android/camera/CameraScreenNail;->animateModuleCopyTexture(Z)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mModuleChanged:Z

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->requestChangeWCGConfig()V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mLastMode:Lcom/android/camera/module/Module;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Lcom/android/camera/module/Module;->unRegisterModulePersistProtocol()V

    .line 11
    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mStartFromKeyguard:Z

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 13
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->isLastModuleAlive()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->closeLastModule()V

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subscribe: mIntent = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_7

    .line 18
    iget-boolean p1, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->isFromVoiceControl:Z

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->mStartFromKeyguard:Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZZZZ)Landroidx/core/util/Pair;

    move-result-object p1

    .line 20
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 21
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 22
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;->loadSettings()V

    .line 23
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000O()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 24
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/db/item/DbItemSaveTask;->markAllDepartedTask(I)V

    goto :goto_1

    .line 25
    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    .line 26
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    move v9, v0

    move v0, p1

    move p1, v9

    .line 27
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/external/NotifyExternalManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/external/NotifyExternalManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/external/NotifyExternalManager;->notifyModeAndFacing(II)V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe: request to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v1

    .line 30
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OOo0()Z

    move-result v2

    .line 31
    invoke-virtual {v1, v0, p1, p0, v2}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->openCamera(IILio/reactivex/Observer;Z)V

    return-void
.end method
