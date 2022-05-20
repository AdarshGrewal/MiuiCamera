.class public Lcom/xiaomi/camera/videocast/VideoCastService$1;
.super Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback$Stub;
.source "VideoCastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/videocast/VideoCastService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/videocast/VideoCastService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/videocast/VideoCastService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$1;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothOff()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth is turned OFF"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
