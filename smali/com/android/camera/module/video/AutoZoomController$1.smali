.class public Lcom/android/camera/module/video/AutoZoomController$1;
.super Ljava/lang/Object;
.source "AutoZoomController.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
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
    iput-object p1, p0, Lcom/android/camera/module/video/AutoZoomController$1;->this$0:Lcom/android/camera/module/video/AutoZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController$1;->this$0:Lcom/android/camera/module/video/AutoZoomController;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/AutoZoomController;->access$000(Lcom/android/camera/module/video/AutoZoomController;Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/AutoZoomController$1;->accept(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    return-void
.end method
