.class public Lcom/android/camera/dualvideo/render/CameraItem$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "CameraItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/render/CameraItem;->setVisibilityWithAnim(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$3;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$3;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/CameraItem;->access$800(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$3;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/CameraItem;->access$800(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p2

    iget-boolean p2, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$3;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    invoke-static {v0, v2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$402(Lcom/android/camera/dualvideo/render/CameraItem;F)F

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$3;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/CameraItem;->access$500(Lcom/android/camera/dualvideo/render/CameraItem;)V

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem$3;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->access$602(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    :cond_1
    return-void
.end method
