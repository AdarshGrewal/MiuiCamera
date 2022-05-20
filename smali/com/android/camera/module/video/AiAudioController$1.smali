.class public Lcom/android/camera/module/video/AiAudioController$1;
.super Landroid/os/Handler;
.source "AiAudioController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video/AiAudioController;->initAudioZoomHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/video/AiAudioController;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/AiAudioController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/AiAudioController$1;->this$0:Lcom/android/camera/module/video/AiAudioController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAudioZoomLevel = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AiAudioController"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/video/AiAudioController$1;->this$0:Lcom/android/camera/module/video/AiAudioController;

    invoke-static {p1}, Lcom/android/camera/module/video/AiAudioController;->access$000(Lcom/android/camera/module/video/AiAudioController;)Lcom/android/camera/aiaudio/AiAudioParameterManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/video/AiAudioController$1;->this$0:Lcom/android/camera/module/video/AiAudioController;

    invoke-static {p1}, Lcom/android/camera/module/video/AiAudioController;->access$000(Lcom/android/camera/module/video/AiAudioController;)Lcom/android/camera/aiaudio/AiAudioParameterManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioZoomLevel(D)V

    :cond_0
    return-void
.end method
