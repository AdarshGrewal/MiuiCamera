.class public Lcom/android/camera/snap/SnapService;
.super Landroid/app/Service;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapService$InnerHandler;
    }
.end annotation


# static fields
.field public static final END:I = 0x65

.field public static final MAX_DELAY:I = 0x1388

.field public static final TAG:Ljava/lang/String;

.field public static mScreenOn:Z


# instance fields
.field public final mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mRegistered:Z

.field public mThermalNotificationListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/snap/SnapService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapService$InnerHandler;-><init>(Lcom/android/camera/snap/SnapService;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    .line 3
    new-instance v0, Lcom/android/camera/snap/SnapService$1;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapService$1;-><init>(Lcom/android/camera/snap/SnapService;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    sget-object v0, LOooO00o/OooO0O0/OooO00o/OooooO0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooooO0/OooO00o;

    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mThermalNotificationListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

    return-void
.end method

.method public static synthetic OooO00o(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->onThermalConstrained()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/snap/SnapService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->destroy()V

    return-void
.end method

.method private destroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->unregisterPowerKeyReceiver()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->destroy()V

    return-void
.end method

.method private registerPowerKeyReceiver()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.KEYCODE_POWER_UP"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/snap/SnapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    sget-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release wakelock"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setScreenOn(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/android/camera/snap/SnapService;->mScreenOn:Z

    return-void
.end method

.method private triggerWatchdog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private unregisterPowerKeyReceiver()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapService;->mRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public aquireWakeLock()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string/jumbo v0, "power"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5
    sget-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    const-string v1, "acquire wakelock"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapService;->aquireWakeLock()V

    .line 3
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ThermalDetector;->onCreate(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    const-string v3, "MiuiCamera"

    invoke-direct {v1, v3, v0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const-string v0, "notification"

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 10
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "camera snap service"

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->unregisterReceiver()V

    .line 4
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->onDestroy()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->destroy()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->releaseWakeLock()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start service"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->triggerWatchdog()V

    .line 4
    sget-boolean v0, Lcom/android/camera/snap/SnapService;->mScreenOn:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/snap/SnapTrigger;->init(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_code"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "key_action"

    .line 7
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-wide/16 v3, 0x0

    const-string v5, "key_event_time"

    .line 8
    invoke-virtual {p1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 9
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/camera/snap/SnapTrigger;->handleKeyEvent(IIJ)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->registerPowerKeyReceiver()V

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/snap/SnapService;->mThermalNotificationListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ThermalDetector;->registerReceiver(Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;)V

    .line 12
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 13
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
