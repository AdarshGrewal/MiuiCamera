.class public Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;
.super Ljava/lang/Object;
.source "WakeupEngineImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    const-string v1, "WakeupEngineImpl"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start msg.what:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_10

    const/4 v4, 0x2

    if-eq v0, v4, :cond_f

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    .line 7
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$502(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    goto/16 :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->stopRecord()V

    .line 11
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$502(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupDestroy()I

    .line 13
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$302(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    .line 14
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 15
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onRelease()V

    goto/16 :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    .line 17
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "data"

    .line 18
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 19
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 20
    div-int/lit8 v6, v5, 0x2

    new-array v7, v6, [B

    move v8, v3

    move v9, v8

    :goto_0
    if-ge v8, v5, :cond_6

    .line 21
    aget-byte v10, v0, v8

    aput-byte v10, v7, v9

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v8, 0x1

    .line 22
    aget-byte v11, v0, v11

    aput-byte v11, v7, v10

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v9, v4

    goto :goto_0

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    .line 24
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$900(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->writeFile([B)V

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v3}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupFeedData([BII)I

    move-result v0

    .line 27
    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wakeup feed return:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-ne v0, v2, :cond_9

    const-string v5, "Voice wakeup: r == FEED_RESULT_DETECTED_LEVEL_ONE"

    .line 29
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v5, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    :cond_9
    if-ne v0, v4, :cond_a

    const-string v0, "Voice wakeup: r == FEED_RESULT_DETECTED_END"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1002(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    .line 33
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1102(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;[B)[B

    .line 34
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    .line 35
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    .line 36
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 37
    new-instance v0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    .line 38
    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    const-string v2, "\u5c0f\u7231\u540c\u5b66"

    .line 39
    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setScore(F)V

    .line 41
    invoke-virtual {v0, v3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setAec(Z)V

    const-string v2, "Voice wakeup has been successful"

    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    .line 44
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->writeBuffer([B)V

    .line 46
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 47
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 48
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 49
    new-instance v0, Lcom/xiaomi/asr/engine/PhraseWakeupResult;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;-><init>()V

    .line 50
    invoke-virtual {v0, v3}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconWakeupPassed(Z)V

    const-string v2, ""

    .line 51
    invoke-virtual {v0, v2}, Lcom/xiaomi/asr/engine/PhraseWakeupResult;->setVoconPhrase(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/xiaomi/asr/engine/WVPListener;->onPhraseSpotted(Lcom/xiaomi/asr/engine/PhraseWakeupResult;)V

    .line 53
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupReset()I

    .line 54
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->readBuffer()[B

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 56
    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)[B

    move-result-object v2

    array-length v2, v2

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 57
    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)[B

    move-result-object v4

    array-length v4, v4

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onAudioData([B)V

    .line 60
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/CircleBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->reset()V

    .line 61
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1102(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;[B)[B

    .line 62
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v3}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$1202(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    goto/16 :goto_1

    .line 63
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 64
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$500(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 65
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$600(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/record/VoiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->startRecord()V

    .line 66
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$502(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    .line 67
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupReset()I

    goto :goto_1

    .line 68
    :cond_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$100(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ModelPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$200(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/asr/engine/jni/WakeupEngineInterface;->wakeupInit(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 71
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$302(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;Z)Z

    .line 72
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "init failed"

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 75
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$400(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onInit(Z)V

    .line 76
    :cond_13
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl$HandlerCallback;->this$0:Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;->access$000(Lcom/xiaomi/asr/engine/impl/WakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end msg.what:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v3
.end method
