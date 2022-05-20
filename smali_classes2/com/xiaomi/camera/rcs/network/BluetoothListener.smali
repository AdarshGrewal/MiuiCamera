.class public Lcom/xiaomi/camera/rcs/network/BluetoothListener;
.super Ljava/lang/Object;
.source "BluetoothListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;,
        Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;
    }
.end annotation


# instance fields
.field public mCallback:Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

.field public mContext:Landroid/content/Context;

.field public mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mCallback:Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/rcs/network/BluetoothListener;)Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mCallback:Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;-><init>(Lcom/xiaomi/camera/rcs/network/BluetoothListener;Lcom/xiaomi/camera/rcs/network/BluetoothListener$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    :cond_0
    return-void
.end method
