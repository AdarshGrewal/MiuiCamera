.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->downServiceBundle(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

.field public final synthetic val$dir:Ljava/lang/String;

.field public final synthetic val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->val$dir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailure\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IOException\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->access$102(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->access$100(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->access$100(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;->onDownloadFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x800

    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->val$dir:Ljava/lang/String;

    const-string v3, "head.bundle"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 4
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v2, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;->onDownloadSuccess()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz p2, :cond_3

    .line 10
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 11
    :catch_0
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_2
    move-object v0, p2

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v2, v0

    :goto_3
    move-object v0, p2

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v2, v0

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v2, v0

    .line 12
    :goto_4
    :try_start_5
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->access$102(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFailure "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;

    if-eqz p2, :cond_4

    .line 15
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$4;->val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$OnDownloadListener;->onDownloadFailed(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    if-eqz v0, :cond_5

    .line 16
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_5
    if-eqz v2, :cond_6

    goto :goto_1

    :catch_5
    :cond_6
    :goto_5
    return-void

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_7
    if-eqz v2, :cond_8

    .line 17
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 18
    :catch_7
    :cond_8
    throw p1
.end method
