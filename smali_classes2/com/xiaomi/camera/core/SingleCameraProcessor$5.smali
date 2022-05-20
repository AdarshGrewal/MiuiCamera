.class public Lcom/xiaomi/camera/core/SingleCameraProcessor$5;
.super Ljava/lang/Object;
.source "SingleCameraProcessor.java"

# interfaces
.implements Lcom/xiaomi/engine/TaskSession$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/SingleCameraProcessor;->processCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Landroid/media/Image;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/core/SingleCameraProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/SingleCameraProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/SingleCameraProcessor$5;->this$0:Lcom/xiaomi/camera/core/SingleCameraProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameProcessed(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/core/SingleCameraProcessor;->access$000()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "onFrameProcessed: [%d]:{%s}"

    .line 3
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p3, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
