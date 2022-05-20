.class public Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "DisplayFoldStatusImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sIsDisplayFoldOrUnfold:Z


# instance fields
.field public final mActivity:Lcom/android/camera/ActivityBase;

.field public mFoldStateFlag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->mFoldStateFlag:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private processUltraPixelSelf(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;->isSupportUltraPixelSelf(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/android/camera/display/Display;->reverseDisplayStateWhileUnFold(Z)V

    .line 4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {v1}, Lcom/android/camera/display/Display;->reverseDisplayStateWhileUnFold(Z)V

    .line 7
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    .line 8
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo0OO;

    invoke-direct {v1, p0, v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/Oooo0OO;-><init>(Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;->isShowDisplayTip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;->dismissUltraPixelSelfDisplayTip()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_1

    const/16 v0, 0xaf

    .line 4
    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :cond_1
    return-void
.end method

.method public isDisplayFoldOrUnfold()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is display fold or unfold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->sIsDisplayFoldOrUnfold:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->sIsDisplayFoldOrUnfold:Z

    return v0
.end method

.method public onDisplayFoldChanged(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",folded:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",thread-id:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getShortcutFunction()Lcom/android/camera/ShortcutFunction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getShortcutFunction()Lcom/android/camera/ShortcutFunction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1, v0}, Lcom/android/camera/ShortcutFunction;->initShortcut(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget p1, p0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->mFoldStateFlag:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->setDisplayFoldOrUnfold(Z)V

    .line 6
    :cond_1
    iput p2, p0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->mFoldStateFlag:I

    .line 7
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->processUltraPixelSelf(Z)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3aa

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "register display fold listener"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDisplayFoldOrUnfold(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set display fold or unfold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sput-boolean p1, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->sIsDisplayFoldOrUnfold:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3aa

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/camera/display/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregister display fold listener"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
