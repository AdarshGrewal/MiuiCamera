.class public Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;
.super Ljava/lang/Object;
.source "WVPEngineImpl.java"

# interfaces
.implements Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceRecordListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public onRecordCreateError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onStopAudio()V

    :cond_0
    return-void
.end method

.method public onRecording([BI)V
    .locals 3

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 8
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->writeFile([B)V

    :cond_0
    return-void
.end method

.method public onRecordingEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->closeFile()V

    :cond_0
    return-void
.end method

.method public onRecordingFailed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordingStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onStartAudio()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object v0

    const-string v1, "record"

    invoke-virtual {v0, v1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->createFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
