.class public Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field public mLookAtCache:Z

.field public needUpdateViewIfNull:Z

.field public noNeedUpdateThumbnail:Z

.field public final synthetic this$0:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method public constructor <init>(Lcom/android/camera/ThumbnailUpdater;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ThumbnailUpdater;ZZ)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 10

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LoadThumbnailTask: execute task: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". lookAtCache = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThumbnailUpdater"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Thumbnail;->getLastThumbnailUri(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$000(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$000(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadThumbnailTask: thumbnailUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v4}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$000(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    .line 13
    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    :cond_4
    if-eqz p1, :cond_6

    .line 14
    iget-boolean p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadThumbnailTask: cached thumbnail = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_0

    .line 18
    :cond_6
    iput-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    const-string p1, "LoadThumbnailTask: no image/video was found"

    .line 19
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object p1, v1

    move-object v2, p1

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_8

    return-object v1

    :cond_8
    new-array v4, v3, [Lcom/android/camera/Thumbnail;

    .line 21
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v5

    const-string v6, ", thumbnail = "

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v5

    if-nez v5, :cond_a

    .line 22
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    .line 23
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    .line 24
    invoke-static {v5, v4, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I

    move-result v2

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoadThumbnailTask: get last thumbnail from provider. code = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v8, v2, :cond_9

    move-object v6, p1

    goto :goto_1

    :cond_9
    aget-object v6, v4, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 26
    :cond_a
    iput-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    .line 27
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    .line 28
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    iget-object v9, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v9}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v9

    .line 29
    invoke-static {v5, v4, v9, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromUriList(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I

    move-result v2

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoadThumbnailTask: get last thumbnail from uri list. code = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v8, v2, :cond_b

    move-object v6, p1

    goto :goto_2

    :cond_b
    aget-object v6, v4, v7

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eq v2, v8, :cond_e

    if-eq v2, v3, :cond_d

    const/4 p1, 0x2

    if-eq v2, p1, :cond_c

    return-object v1

    .line 31
    :cond_c
    iput-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noNeedUpdateThumbnail:Z

    return-object v1

    .line 32
    :cond_d
    aget-object p1, v4, v7

    :cond_e
    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnailTask onPostExecute, thumbnail is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", canceled"

    goto :goto_0

    :cond_0
    const-string v1, ", not canceled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noNeedUpdateThumbnail is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noNeedUpdateThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noNeedUpdateThumbnail:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
