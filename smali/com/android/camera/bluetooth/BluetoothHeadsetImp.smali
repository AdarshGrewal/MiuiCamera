.class public Lcom/android/camera/bluetooth/BluetoothHeadsetImp;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHeadsetImp.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

.field public mConnectStateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    new-instance v0, Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/bluetooth/BluetoothScoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/module/Module;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/bluetooth/IBluetoothHeadsetConnectionState;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/bluetooth/IBluetoothHeadsetConnectionState;

    invoke-interface {p1, p0}, Lcom/android/camera/bluetooth/IBluetoothHeadsetConnectionState;->onBluetoothHeadsetStateChanged(I)V

    :cond_0
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;

    invoke-direct {v0, p0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private onBluetoothHeadsetStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0o0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0o0/OooO0O0;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0o0/OooO00o;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0o0/OooO00o;-><init>(I)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private registerBluetoothHeadsetReceiver(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->isSupportBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 6
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->TAG:Ljava/lang/String;

    const-string v0, "Bluetooth is not supported"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterBluetoothHeadsetReceiver(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->isSupportBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->TAG:Ljava/lang/String;

    const-string v0, "Bluetooth is not supported"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isAudioSourceCamcorder(I)Z
    .locals 1

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb8

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isBluetoothScoOn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/bluetooth/BluetoothScoManager;->isBluetoothScoOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportBluetooth()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportBluetoothSco(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->supportBluetoothSco(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.bluetooth.profile.extra.STATE"

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->onBluetoothHeadsetStateChanged(I)V

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa

    .line 6
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mConnectStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0x3a5

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->registerBluetoothHeadsetReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public startBluetoothSco(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->startBluetoothSco(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->supportBluetoothSco(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-virtual {p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->isBluetoothScoOn()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackIntoBluetoothSco()V

    :cond_0
    return-void
.end method

.method public stopBluetoothSco(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->mBluetoothScoManager:Lcom/android/camera/bluetooth/BluetoothScoManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/bluetooth/BluetoothScoManager;->stopBluetoothSco(I)V

    :cond_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/bluetooth/BluetoothHeadsetImp;->unregisterBluetoothHeadsetReceiver(Landroid/content/Context;)V

    return-void
.end method
