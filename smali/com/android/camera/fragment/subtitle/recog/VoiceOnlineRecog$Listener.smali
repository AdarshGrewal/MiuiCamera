.class public Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;
.super Lokhttp3/WebSocketListener;
.source "VoiceOnlineRecog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Listener"


# instance fields
.field public final weakRecog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->weakRecog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;-><init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onClosed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Listener"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onClosing: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Listener"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onFailure: throwable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Listener"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->weakRecog:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    if-nez p1, :cond_0

    const-string/jumbo p1, "onFailure: recog is null, returning."

    .line 4
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onFailure()V

    :cond_3
    if-nez p3, :cond_4

    return-void

    .line 10
    :cond_4
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$Listener;->weakRecog:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    const-string v0, "Listener"

    if-nez p1, :cond_0

    const-string/jumbo p1, "onMessage: recog is null, returning."

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$900(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data is empty , original message is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1100(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J

    move-result-wide v3

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 9
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1300(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J

    move-result-wide v5

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 10
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1400(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 11
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 12
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-gtz v3, :cond_3

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p2, v3, v5

    if-gez p2, :cond_4

    :cond_3
    const-string p1, "Subtitles in pause: "

    .line 13
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    const-string v3, "[^a-z^A-Z^0-9]"

    .line 15
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1e

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const-string v4, "\\s+"

    .line 17
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v6, v3

    array-length v3, v4

    add-int/2addr v6, v3

    if-ne v6, v5, :cond_6

    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    :cond_6
    const/16 v5, 0x35

    .line 20
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v5, :cond_7

    .line 21
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_7
    const-string/jumbo v3, "\u3002"

    .line 22
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "."

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 25
    :cond_8
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 27
    :cond_9
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1800(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 28
    invoke-static {p1, p2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1900(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)V

    .line 29
    :cond_a
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackTriggerSubtitle()V

    .line 31
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$2000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$1400(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$2000(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$2200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$2108(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$2200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    aput-object v2, v6, v5

    const-string v1, "%s --> %s\n"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$2200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    const-string p2, "%s\n"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$2200(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$700(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$500(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "final message return, stop recording: "

    .line 38
    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$600(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;)V

    :cond_b
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    return-void
.end method
