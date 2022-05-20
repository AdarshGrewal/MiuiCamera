.class public Lcom/android/camera/module/video/AutoZoomController$3;
.super Ljava/lang/Object;
.source "AutoZoomController.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


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
        "Lio/reactivex/FlowableOnSubscribe<",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/video/AutoZoomController;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/AutoZoomController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/AutoZoomController$3;->this$0:Lcom/android/camera/module/video/AutoZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController$3;->this$0:Lcom/android/camera/module/video/AutoZoomController;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/AutoZoomController;->access$102(Lcom/android/camera/module/video/AutoZoomController;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;

    return-void
.end method
