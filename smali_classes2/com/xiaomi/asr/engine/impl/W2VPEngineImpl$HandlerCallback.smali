.class public Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;
.super Ljava/lang/Object;
.source "W2VPEngineImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const-string v3, "W2VPEngineImpl"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_c

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "on release init:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 5
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->stopRecord()V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupDestroy()I

    .line 9
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->release()V

    .line 10
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    .line 11
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 12
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/asr/engine/WVPListener;->onRelease()V

    goto/16 :goto_2

    .line 13
    :pswitch_1
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 14
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->removeAllRegister()V

    goto/16 :goto_2

    .line 15
    :pswitch_2
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 16
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 17
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->stopRecord()V

    .line 18
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    goto/16 :goto_2

    .line 19
    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "wakeup feed handle"

    .line 21
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    invoke-static {v1, v0, v3, v4}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1600(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;[BIZ)V

    goto/16 :goto_2

    .line 25
    :pswitch_4
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 26
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 27
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1400(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->startRecord(I)V

    .line 28
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v4}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    .line 29
    :cond_5
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v2}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1502(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    goto/16 :goto_2

    .line 30
    :pswitch_5
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 31
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 32
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->startEnrollment(I)V

    goto/16 :goto_2

    .line 33
    :pswitch_6
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on init init:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 36
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "path"

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vp_model_path:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", vp_speaker:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupInit(Ljava/lang/String;)I

    move-result v1

    .line 42
    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v5

    invoke-virtual {v5, v0, p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    add-int/2addr v1, p1

    if-nez v1, :cond_8

    .line 43
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v4}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    .line 44
    :cond_8
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "init failed"

    .line 45
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_9
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 47
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onInit(Z)V

    goto/16 :goto_2

    .line 48
    :cond_a
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 49
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 50
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/asr/engine/WVPListener;->onAudioData([B)V

    goto/16 :goto_2

    .line 52
    :cond_b
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 53
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->generateModel()V

    goto/16 :goto_2

    .line 54
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 55
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 56
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/record/AudioSource;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->startEnrollmentFileRecorded(Lcom/xiaomi/asr/engine/record/AudioSource;I)V

    goto/16 :goto_2

    .line 57
    :cond_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "sv-wakeup, res:"

    if-ne v0, v4, :cond_e

    .line 58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 59
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1, v4}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1702(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Z)Z

    goto :goto_1

    .line 60
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1802(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u58f0\u7eb9\u7ed3\u679c\u8fd4\u56de sv-wakeup, res:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 63
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    .line 64
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1902(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;I)I

    .line 65
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_11

    .line 66
    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_10
    new-instance p1, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {p1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    .line 69
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    .line 70
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->isWakeupAec()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setAec(Z)V

    .line 71
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupStartTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setWakeupStartTime(J)V

    .line 72
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupEndTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setWakeupEndTime(J)V

    .line 73
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/DSPWakeupInfoParser;->getWakeupScore()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setScore(F)V

    const-string v0, "\u5c0f\u7231\u540c\u5b66"

    .line 74
    invoke-virtual {p1, v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$1800(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVBPassed(Z)V

    .line 76
    new-instance v0, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2000(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;->setCacheCMVNData([B)V

    .line 78
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;->setCacheSVData([B)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setDebugInfo(Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;)V

    .line 80
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    .line 81
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 82
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    :cond_11
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
