.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$5;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;->createAvatarRequest(Landroid/content/Context;Ljava/lang/String;Lokhttp3/Callback;)V
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
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$5;->val$callback:Lokhttp3/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$5;->val$callback:Lokhttp3/Callback;

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
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/web/OkHttpUtils$5;->val$callback:Lokhttp3/Callback;

    invoke-interface {v0, p1, p2}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method
