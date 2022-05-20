.class public Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Lcom/xiaomi/mediaprocess/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/LiveSubVVImpl;->startPlay(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 2

    const-string v0, "OnReceiveFailed:"

    const-string/jumbo v1, "yes"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$902(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$1000(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onResultPreviewFinished(Z)V

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 2

    const-string v0, "OnReceiveFinish:"

    const-string/jumbo v1, "yes"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$902(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$1000(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onResultPreviewFinished(Z)V

    return-void
.end method
