.class public Lcom/android/camera/module/WideSelfieModule$3;
.super Ljava/lang/Object;
.source "WideSelfieModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/WideSelfieModule;->startWideSelfieShooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/WideSelfieModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/WideSelfieModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/WideSelfieModule$3;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTakenFinished(ZJ)V
    .locals 1

    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPictureBurstFinished success = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    invoke-static {p3, p2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/module/WideSelfieModule;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPictureTaken>>image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/WideSelfieModule$3;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {p2}, Lcom/android/camera/module/WideSelfieModule;->access$500(Lcom/android/camera/module/WideSelfieModule;)[B

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/module/WideSelfieModule$3;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {p1, v1}, LOooO0O0/OooO0OO/OooO00o/OooO00o/OooO0OO;->OooO00o(Landroid/media/Image;I)[B

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/module/WideSelfieModule;->access$502(Lcom/android/camera/module/WideSelfieModule;[B)[B

    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/WideSelfieModule$3;->this$0:Lcom/android/camera/module/WideSelfieModule;

    invoke-static {p2}, Lcom/android/camera/module/WideSelfieModule;->access$200(Lcom/android/camera/module/WideSelfieModule;)Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->onBurstCapture(Landroid/media/Image;)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
