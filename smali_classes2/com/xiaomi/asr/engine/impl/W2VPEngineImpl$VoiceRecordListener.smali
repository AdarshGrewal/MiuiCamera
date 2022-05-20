.class public Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;
.super Ljava/lang/Object;
.source "W2VPEngineImpl.java"

# interfaces
.implements Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceRecordListener"
.end annotation


# instance fields
.field public final STATIC_WAKEUP_BUFFER:J

.field public final synthetic this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    .line 2
    iput-wide v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->STATIC_WAKEUP_BUFFER:J

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
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onStopAudio()V

    :cond_0
    return-void
.end method

.method public onRecording([BI)V
    .locals 11

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v0, p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;[BI)V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2502(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;I)I

    .line 6
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1902(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;I)I

    .line 7
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1702(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    .line 8
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1802(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2602(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;J)J

    .line 10
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 11
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 12
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 13
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "wakeup start time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", wakeup end time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    .line 15
    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", wakeup score:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    .line 16
    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupScore()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", wakeup pcm length:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    .line 17
    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getPcmLength()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", wakeup aec:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    .line 18
    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->isWakeupAec()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 20
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {p2, v2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2502(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;I)I

    .line 22
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v2, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupStartTime()J

    move-result-wide v4

    cmp-long p2, v2, v4

    const/16 v2, 0xa0

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v3, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gtz p2, :cond_2

    .line 23
    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    const/16 v3, 0x140

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 24
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 25
    :goto_0
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v3, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-nez p2, :cond_2

    .line 26
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 27
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    const-string v3, "read wakeup level one end time.\n"

    invoke-interface {p2, v3}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    .line 28
    :cond_1
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2700(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)V

    .line 29
    :cond_2
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v3, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    add-long/2addr v5, v7

    cmp-long p2, v3, v5

    if-gtz p2, :cond_4

    .line 30
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 31
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 32
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 34
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 35
    iput v1, p1, Landroid/os/Message;->arg2:I

    .line 36
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v0, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v2

    add-long/2addr v2, v7

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    .line 37
    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 38
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 39
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p2

    const-string v0, "read wakeup level one end time + 300ms.\n"

    invoke-interface {p2, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    .line 40
    :cond_3
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 41
    :cond_4
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p2

    int-to-long v2, p2

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v4

    add-long/2addr v4, v7

    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getPcmLength()I

    move-result p2

    int-to-long v9, p2

    add-long/2addr v4, v9

    cmp-long p2, v2, v4

    if-lez p2, :cond_5

    return-void

    .line 42
    :cond_5
    :try_start_1
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p1

    int-to-long p1, p1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v2

    add-long/2addr v2, v7

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getPcmLength()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long p1, p1, v2

    if-nez p1, :cond_7

    .line 45
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 46
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    const-string p2, "read pcm data end.\n"

    invoke-interface {p1, p2}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    .line 47
    :cond_6
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->stopRecord()V

    .line 50
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public onRecordingEnd()V
    .locals 0

    return-void
.end method

.method public onRecordingFailed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordingStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onStartAudio()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object v0

    const-string v1, "w2vp"

    invoke-virtual {v0, v1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->createFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
