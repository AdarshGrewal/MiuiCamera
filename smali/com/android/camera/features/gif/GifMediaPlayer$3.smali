.class public Lcom/android/camera/features/gif/GifMediaPlayer$3;
.super Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;
.source "GifMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/GifMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/gif/GifMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$3;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Lcom/android/camera/features/gif/GifMediaPlayer$1;)V

    return-void
.end method


# virtual methods
.method public OnConvertProgress(I)V
    .locals 5

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$3;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->getImageFile()Lcom/android/camera/storage/mediastore/ImageFile;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$400(Lcom/android/camera/features/gif/GifMediaPlayer;Lcom/android/camera/storage/mediastore/ImageFile;)V

    .line 2
    invoke-static {}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnConvertProgress[progressValue] time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer$3;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-static {v3}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$500(Lcom/android/camera/features/gif/GifMediaPlayer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnConvertProgress[progressValue]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
