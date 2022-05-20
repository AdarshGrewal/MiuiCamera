.class public Lcom/android/camera/module/impl/component/FilmDreamImpl$5;
.super Ljava/lang/Object;
.source "FilmDreamImpl.java"

# interfaces
.implements Lcom/xiaomi/inceptionmediaprocess/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/FilmDreamImpl;->startPlay(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnReceiveFailed:yes"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$602(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$300(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->onResultPreviewFinished(Z)V

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnReceiveFinish:yes"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$602(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$300(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->onResultPreviewFinished(Z)V

    return-void
.end method

.method public OnReceiveFirstFrame()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnReceiveFirstFrame:"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$800(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/impl/component/FilmDreamImpl$5$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$5$1;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
