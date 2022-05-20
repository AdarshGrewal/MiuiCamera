.class public Lcom/android/camera/module/AmbilightModule$3;
.super Ljava/lang/Object;
.source "AmbilightModule.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/AmbilightModule;->startCount(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/AmbilightModule;

.field public final synthetic val$time:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/AmbilightModule;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    iput p2, p0, Lcom/android/camera/module/AmbilightModule$3;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$200(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonFocus(ZI)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x68

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonFocus(ZI)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {v0}, Lcom/android/camera/module/AmbilightModule;->tryRemoveCountDownMessage()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/camera/module/AmbilightModule$3;->val$time:I

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$200(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule$3;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {v0, p1}, Lcom/android/camera/module/AmbilightModule;->access$102(Lcom/android/camera/module/AmbilightModule;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$200(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO00o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO00o;-><init>(Lcom/android/camera/module/AmbilightModule$3;)V

    const-wide/16 v1, 0x78

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$3;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$200(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/AmbilightModule$3;->val$time:I

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    :cond_0
    return-void
.end method
