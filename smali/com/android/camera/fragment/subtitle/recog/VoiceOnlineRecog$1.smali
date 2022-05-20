.class public Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;
.super Ljava/lang/Object;
.source "VoiceOnlineRecog.java"

# interfaces
.implements Lcom/android/camera/fragment/subtitle/recog/record/PcmRecorder$PcmRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    return-void
.end method

.method public onRecordBuffer([BIII)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object p4, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p4}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I

    move-result p4

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getSubtitleAccessAppID()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRecordBuffer accessAppID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "app_id"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aue"

    const-string/jumbo v2, "raw"

    .line 8
    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "language"

    const-string v2, "cn_en"

    .line 9
    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accent"

    const-string v2, "mandarin"

    .line 10
    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "domain"

    const-string/jumbo v2, "xiaomi"

    .line 11
    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "rf"

    const-string v2, "deserted"

    .line 12
    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dwa"

    const-string/jumbo v2, "wpgs"

    .line 13
    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "rate"

    const-string v2, "16000"

    .line 14
    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "vgap"

    const/16 v2, 0xf

    .line 15
    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "common"

    .line 16
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "business"

    .line 17
    invoke-virtual {p2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "status"

    .line 19
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I

    move-result v1

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "audio"

    .line 20
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 21
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onRecordBuffer data was null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onRecordBuffer Exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRecordReleased()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    .line 2
    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRecordReleased "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "status"

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "encoding"

    const-string/jumbo v3, "raw"

    .line 6
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRecordReleased: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-static {v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lokhttp3/WebSocket;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$302(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;I)I

    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$002(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Z)Z

    :cond_0
    return-void
.end method
