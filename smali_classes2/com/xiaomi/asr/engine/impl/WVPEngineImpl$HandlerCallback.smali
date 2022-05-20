.class public Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;
.super Ljava/lang/Object;
.source "WVPEngineImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    const-string v3, "WVPEngineImpl"

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start msg.what:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eq v2, v4, :cond_18

    const-string v4, ""

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->removeAllRegister()V

    goto/16 :goto_3

    .line 6
    :pswitch_1
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 7
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 8
    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->startEnrollment(I)V

    goto/16 :goto_3

    .line 9
    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_1

    .line 10
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "wakeup level two"

    .line 11
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto :goto_0

    :cond_1
    const-string v2, "end cal sv"

    .line 13
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1502(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;I)I

    .line 16
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)I

    move-result v2

    if-lt v2, v6, :cond_19

    .line 17
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 18
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "stranger"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "error:empty"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "recognition failed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sv-wakeup, res:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_3
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 22
    new-instance v2, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    .line 23
    invoke-virtual {v2, v7}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    const-string v4, "\u5c0f\u7231\u540c\u5b66"

    .line 24
    invoke-virtual {v2, v4}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 25
    invoke-virtual {v2, v4}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setScore(F)V

    .line 26
    invoke-virtual {v2, v5}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setAec(Z)V

    .line 27
    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    goto/16 :goto_3

    .line 28
    :cond_4
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sv wakeup fail, sv res:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 30
    :pswitch_3
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 31
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    .line 32
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto/16 :goto_3

    .line 33
    :pswitch_4
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 34
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    .line 36
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    .line 37
    :cond_5
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupDestroy()I

    .line 38
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->release()V

    .line 39
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    .line 40
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    .line 41
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 42
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/asr/engine/WVPListener;->onRelease()V

    goto/16 :goto_3

    .line 43
    :pswitch_5
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 44
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto/16 :goto_3

    .line 45
    :pswitch_6
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_3

    .line 46
    :cond_6
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_3

    .line 47
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v8, "data"

    .line 48
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 49
    iget v8, v1, Landroid/os/Message;->arg1:I

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 51
    div-int/lit8 v11, v8, 0x2

    new-array v12, v11, [B

    move v13, v5

    move v14, v13

    :goto_1
    if-ge v13, v8, :cond_8

    .line 52
    aget-byte v15, v2, v13

    aput-byte v15, v12, v14

    add-int/lit8 v15, v14, 0x1

    add-int/lit8 v16, v13, 0x1

    .line 53
    aget-byte v16, v2, v16

    aput-byte v16, v12, v15

    add-int/lit8 v13, v13, 0x4

    add-int/2addr v14, v6

    goto :goto_1

    .line 54
    :cond_8
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 55
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    add-long/2addr v13, v15

    invoke-static {v2, v13, v14}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    .line 56
    :cond_9
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 58
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v2

    invoke-virtual {v2, v12, v11, v5}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupFeedData([BII)I

    move-result v2

    .line 59
    iget-object v10, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 60
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wakeup feed return:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v10, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v8

    add-long/2addr v13, v15

    invoke-static {v10, v13, v14}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    .line 62
    iget-object v8, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v8}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v9

    int-to-long v13, v11

    add-long/2addr v9, v13

    invoke-static {v8, v9, v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1302(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    :cond_a
    const-string v8, "\n"

    if-ne v2, v7, :cond_d

    .line 63
    iget-object v9, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v9}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wakeup-voice-level-one, voice data size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", voice handle time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", rtf:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v11}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v11, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v11}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v17, 0x4040000000000000L    # 32.0

    div-double v6, v6, v17

    div-double/2addr v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v10, v5

    const-string v6, "%.3f"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", split data handle time:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", split rtf:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v7, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    move-object/from16 v19, v6

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v5

    long-to-double v5, v5

    div-double v5, v5, v17

    div-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v10, v6

    move-object/from16 v5, v19

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 66
    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    .line 67
    :cond_b
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1402(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    .line 68
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    .line 69
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5, v6, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    .line 70
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5, v6, v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1302(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;J)J

    .line 71
    :cond_c
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1502(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;I)I

    .line 72
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5, v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    .line 73
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)V

    .line 75
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;[B)[B

    .line 76
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    .line 77
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    const/4 v5, 0x2

    goto :goto_2

    :cond_d
    move v5, v6

    :goto_2
    if-ne v2, v5, :cond_f

    .line 78
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wakeup-voice-level-two, handle time:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v7}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)J

    move-result-wide v9

    sub-long/2addr v5, v9

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 81
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onDebug(Ljava/lang/String;)V

    .line 82
    :cond_e
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    .line 83
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 84
    iput v5, v2, Landroid/os/Message;->arg1:I

    const-string v5, "keyword detected"

    .line 85
    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    :cond_f
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2000(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 88
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    .line 89
    :cond_10
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 90
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 91
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 92
    new-instance v2, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    const/4 v5, 0x0

    .line 93
    invoke-virtual {v2, v5}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    .line 94
    invoke-virtual {v2, v4}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    .line 95
    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    .line 96
    :cond_11
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupReset()I

    .line 97
    :cond_12
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v2

    .line 98
    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 99
    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)[B

    move-result-object v4

    array-length v4, v4

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 100
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)[B

    move-result-object v5

    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)[B

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v5, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1900(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)[B

    move-result-object v5

    array-length v5, v5

    array-length v6, v2

    invoke-static {v2, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/xiaomi/asr/engine/WVPListener;->onAudioData([B)V

    .line 103
    :cond_13
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    .line 104
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$1902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;[B)[B

    .line 105
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$2002(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto/16 :goto_3

    .line 106
    :pswitch_7
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 107
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 109
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->startRecord()V

    .line 110
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$702(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    .line 111
    :cond_14
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$902(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    goto/16 :goto_3

    .line 112
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "path"

    .line 113
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    .line 114
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vp_model_path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", vp_speaker:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_15
    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupInit(Ljava/lang/String;)I

    move-result v4

    .line 118
    iget-object v6, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->init(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v4, v2

    if-nez v4, :cond_16

    .line 119
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$602(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;Z)Z

    .line 120
    :cond_16
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "init failed"

    .line 121
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_17
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 123
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    iget-object v4, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/xiaomi/asr/engine/WVPListener;->onInit(Z)V

    goto :goto_3

    .line 124
    :cond_18
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 125
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->generateModel()V

    .line 126
    :cond_19
    :goto_3
    iget-object v2, v0, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WVPEngineImpl;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end msg.what:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
