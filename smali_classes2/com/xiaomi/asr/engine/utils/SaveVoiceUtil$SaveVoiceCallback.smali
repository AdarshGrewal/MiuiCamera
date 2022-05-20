.class public Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;
.super Ljava/lang/Object;
.source "SaveVoiceUtil.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveVoiceCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;->this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "SaveVoiceUtil"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;->this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$200(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;)Ljava/io/FileOutputStream;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;->this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$200(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;)Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;->this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$202(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;->this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$200(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;->this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$200(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;->this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-static {}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$100(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;->this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;->this$0:Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$300(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cmvn"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->access$202(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
