.class public Lcom/android/camera/module/VideoSkyModule$3;
.super Ljava/lang/Object;
.source "VideoSkyModule.java"

# interfaces
.implements Lcom/xiaomi/magicvideosky/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoSkyModule;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoSkyModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoSkyModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoSkyModule$3;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/VideoSkyModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposeCameraRecord OnReceiveFailed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/VideoSkyModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposeCameraRecord OnReceiveFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$3;->this$0:Lcom/android/camera/module/VideoSkyModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o000OOo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o000OOo;-><init>(Lcom/android/camera/module/VideoSkyModule$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic OooO00o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule$3;->this$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoSkyModule;->access$900(Lcom/android/camera/module/VideoSkyModule;)V

    return-void
.end method
