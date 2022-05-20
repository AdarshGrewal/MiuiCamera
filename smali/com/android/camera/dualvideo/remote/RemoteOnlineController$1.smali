.class public Lcom/android/camera/dualvideo/remote/RemoteOnlineController$1;
.super Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback$Stub;
.source "RemoteOnlineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/RemoteOnlineController;-><init>(Lcom/android/camera/ActivityBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/RemoteOnlineController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/RemoteOnlineController$1;->this$0:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothOff()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth is turned OFF"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/RemoteOnlineController$1;->this$0:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-static {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->access$100(Lcom/android/camera/dualvideo/remote/RemoteOnlineController;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/RemoteOnlineController$1;->this$0:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-static {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->access$100(Lcom/android/camera/dualvideo/remote/RemoteOnlineController;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    move-result-object v0

    const v1, 0xdead

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method
