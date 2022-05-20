.class public Lcom/android/camera/module/video/AutoZoomController$2;
.super Ljava/lang/Object;
.source "AutoZoomController.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video/AutoZoomController;->initAutoZoom(Lcom/android/camera2/Camera2Proxy;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Lcom/android/camera2/autozoom/AutoZoomCaptureResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/video/AutoZoomController;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/AutoZoomController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/AutoZoomController$2;->this$0:Lcom/android/camera/module/video/AutoZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/autozoom/AutoZoomCaptureResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;

    invoke-direct {v0, p1}, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/AutoZoomController$2;->apply(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/autozoom/AutoZoomCaptureResult;

    move-result-object p1

    return-object p1
.end method
