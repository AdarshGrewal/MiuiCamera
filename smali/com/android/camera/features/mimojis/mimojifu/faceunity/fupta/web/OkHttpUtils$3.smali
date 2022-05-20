.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$3;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->downloadAvatarRequest(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

.field public final synthetic val$callback:Lokhttp3/Callback;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;Lokhttp3/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$3;->val$callback:Lokhttp3/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->access$102(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$3;->val$callback:Lokhttp3/Callback;

    invoke-interface {v0, p1, p2}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$3;->val$callback:Lokhttp3/Callback;

    invoke-interface {v0, p1, p2}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method
