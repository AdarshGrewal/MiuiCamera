.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO00o/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

.field private final synthetic OooO0O0:Lcom/xiaomi/camera/core/CaptureData;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO;->OooO00o:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO;->OooO0O0:Lcom/xiaomi/camera/core/CaptureData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO;->OooO00o:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    iget-object v1, p0, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO;->OooO0O0:Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->OooO00o(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method
