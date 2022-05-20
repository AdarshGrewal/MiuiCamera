.class public Lcom/xiaomi/camera/videocast/VideoCastService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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
    iput-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$2;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi connection lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WiFi connection unavailable"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
