.class public Lcom/android/camera/module/impl/component/LiveSubVVImpl$9;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Lcom/xiaomi/mediaprocess/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/LiveSubVVImpl;->combineVideoAudio(Lcom/android/camera/storage/mediastore/VideoFile;)V
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
    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$9;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposeCameraRecord OnReceiveFailed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$9;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$1100(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/data/observeable/VMProcessing;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposeCameraRecord OnReceiveFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$9;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->access$1100(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/data/observeable/VMProcessing;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    return-void
.end method
