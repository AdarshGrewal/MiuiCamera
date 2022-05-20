.class public Lcom/android/camera/snap/SnapKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SnapKeyReceiver.java"


# static fields
.field public static final KEY_ACTION:Ljava/lang/String; = "key_action"

.field public static final KEY_CODE:Ljava/lang/String; = "key_code"

.field public static final KEY_EVENT_TIME:Ljava/lang/String; = "key_event_time"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/snap/SnapKeyReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapKeyReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.CAMERA_KEY_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/android/camera/snap/SnapCamera;->isSnapEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "power"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    const-string v1, "key_code"

    const/4 v2, 0x0

    if-nez v0, :cond_4

    const/16 v0, 0x1a

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 8
    :cond_4
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Lcom/android/camera/snap/SnapService;->setScreenOn(Z)V

    return-void

    .line 10
    :cond_5
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result v0

    const-wide/16 v3, 0x0

    const-string v5, "key_event_time"

    const-string v6, "key_action"

    if-eqz v0, :cond_6

    .line 11
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object p1

    .line 12
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 13
    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 14
    invoke-virtual {p2, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 15
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/snap/SnapTrigger;->handleKeyEvent(IIJ)V

    goto :goto_0

    .line 16
    :cond_6
    invoke-static {v2}, Lcom/android/camera/snap/SnapService;->setScreenOn(Z)V

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/android/camera/snap/SnapService;

    invoke-direct {v0, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p2, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_7
    :goto_0
    return-void
.end method
