.class public Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;
.super Lcom/android/camera/SensorStateManager$SensorStateAdapter;
.source "MimojiModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/module/MimojiModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$SensorStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1800(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDeviceBecomeStable()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDeviceBecomeStable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1900(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 2
    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2000(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2100(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2200(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2300(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2400(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onDeviceKeepMoving(D)V

    :cond_0
    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2600(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)I

    move-result p1

    int-to-float p1, p1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2502(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;F)F

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2700(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 4
    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2800(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$2900(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result v0

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    :cond_1
    return-void
.end method
