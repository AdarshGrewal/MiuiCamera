.class public final synthetic LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

.field private final synthetic OooO0O0:Lcom/xiaomi/camera/core/CaptureData;

.field private final synthetic OooO0OO:Lcom/xiaomi/camera/core/ParallelTaskData;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oo;->OooO00o:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    iput-object p2, p0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oo;->OooO0O0:Lcom/xiaomi/camera/core/CaptureData;

    iput-object p3, p0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oo;->OooO0OO:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oo;->OooO00o:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    iget-object v1, p0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oo;->OooO0O0:Lcom/xiaomi/camera/core/CaptureData;

    iget-object v2, p0, LOooO00o/OooO0o/OooO00o/OooO00o/OooO0oo;->OooO0OO:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->OooO00o(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method
