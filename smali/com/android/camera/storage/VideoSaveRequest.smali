.class public Lcom/android/camera/storage/VideoSaveRequest;
.super Lcom/android/camera/storage/BaseSaveRequest;
.source "VideoSaveRequest.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoSaveRequest"


# instance fields
.field public mContentValues:Landroid/content/ContentValues;

.field public mIsFinal:Z

.field public mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;"
        }
    .end annotation
.end field

.field public mUri:Landroid/net/Uri;

.field public mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/storage/BaseSaveRequest;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    .line 6
    iput-boolean p4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mIsFinal:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/camera/storage/VideoSaveRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)V

    return-void
.end method

.method private addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    const-string v0, "Current video URI: "

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "VideoSaveRequest"

    if-eqz v1, :cond_0

    const-string p1, "empty videoPath"

    .line 2
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera/Util;->getVideoDuration(Ljava/lang/String;)J

    move-result-wide v3

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {p2, v5, v6, v3, v4}, Lcom/android/camera/storage/VideoSaveRequest;->updateContentValue(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object p2

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    const/4 v7, 0x1

    if-lt v5, v6, :cond_2

    const-string/jumbo v5, "relative_path"

    const-string v6, "DCIM/Camera/"

    .line 8
    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 10
    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    const-string v6, "_data"

    .line 11
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 12
    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_1

    const-string p1, "is_pending"

    const/4 p2, 0x0

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v5, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 15
    iget-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert before, save path == record path, result uri = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 17
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, p1}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :try_start_3
    iput-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "save path != record path, insert it, result uri = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 20
    :cond_2
    :try_start_4
    iget-object v5, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {v6, v7, p1}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    :goto_0
    :try_start_5
    iget-object p2, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVideoToMediaStore: insert video cost: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    :goto_1
    :try_start_6
    const-string p1, "failed to add video to media store"

    .line 27
    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :goto_2
    return-object p1

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p2
.end method

.method private checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->isSecondPhoneStorage(Ljava/lang/String;)Z

    move-result p1

    .line 2
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const-string p1, "VideoSaveRequest"

    const-string/jumbo v0, "save video: sd card was ejected"

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static getVideoDuration(Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 6
    invoke-static {p0}, Lcom/android/camera/FileCompat;->removeDocumentFileForPath(Ljava/lang/String;)V

    move-wide v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 8
    invoke-static {p0}, Lcom/android/camera/FileCompat;->removeDocumentFileForPath(Ljava/lang/String;)V

    throw v1

    .line 9
    :catch_0
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    .line 10
    invoke-static {p0}, Lcom/android/camera/FileCompat;->removeDocumentFileForPath(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static updateContentValue(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method private updateVideoToMediaStore(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 8

    const-string v0, "Current video URI: "

    .line 1
    invoke-static {p2}, Lcom/android/camera/Util;->getVideoDuration(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "VideoSaveRequest"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete invalid video: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", deleted : "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 4
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v1, v2}, Lcom/android/camera/storage/VideoSaveRequest;->updateContentValue(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object p2

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-object p3, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v3, 0x0

    invoke-virtual {p3, p1, p2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 7
    iget-object p2, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateVideoToMediaStore: insert video cost: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string p3, "failed to add video to media store"

    .line 12
    invoke-static {v4, p3, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p2
.end method


# virtual methods
.method public getSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mIsFinal:Z

    return v0
.end method

.method public onFinish()V
    .locals 2

    const-string v0, "VideoSaveRequest"

    const-string/jumbo v1, "onFinish: runnable process finished"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->getSize()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/android/camera/storage/mediastore/VideoFile;->queryFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iput-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "_data"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iput-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save video: start, path -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uri -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoSaveRequest"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->isFinal()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v0

    .line 13
    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v4, "custom_video_cover"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 14
    iget-object v5, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "save_cover"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x0

    if-nez v5, :cond_3

    .line 15
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 16
    :cond_3
    iget-object v8, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 17
    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 18
    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {p0, v4, v6}, Lcom/android/camera/storage/VideoSaveRequest;->addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    .line 19
    iget-object v4, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v4, v6}, Lcom/android/camera/storage/mediastore/VideoFile;->queryFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 21
    iput-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save video: query update, path -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_5

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    const-string v1, "insert MediaProvider failed, need update mContentValues by Uri"

    .line 26
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {p0, v1, v4, v6}, Lcom/android/camera/storage/VideoSaveRequest;->updateVideoToMediaStore(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)I

    :cond_5
    const/4 v1, 0x4

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "save video: media has been stored, Uri: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", has thumbnail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/storage/VideoSaveRequest;->checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 30
    iget-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    if-nez v0, :cond_6

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    :cond_6
    const/4 v0, 0x0

    if-eqz v3, :cond_7

    .line 32
    array-length v4, v3

    if-eqz v4, :cond_7

    const-string v4, "has preview video cover."

    .line 33
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 35
    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    new-instance v5, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v3, v6}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-array v4, v1, [Landroid/graphics/Bitmap;

    .line 36
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 37
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    const-string/jumbo v9, "rw"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    goto :goto_1

    .line 38
    :cond_8
    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 39
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " failed to get fd uri: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    .line 40
    :goto_1
    iget-object v8, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v9}, Lcom/android/camera/Util;->getResolution(Landroid/content/ContentValues;)Lcom/android/camera/CameraSize;

    move-result-object v9

    invoke-static {v6, v8, v9, v4}, Lcom/android/camera/jcodec/MP4UtilEx;->getCover(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lcom/android/camera/CameraSize;[Landroid/graphics/Bitmap;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 41
    aget-object v8, v4, v7

    if-eqz v8, :cond_9

    const-string v3, "get video cover form video file."

    .line 42
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    aget-object v3, v4, v7

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v3

    .line 44
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 45
    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    new-instance v5, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v0, v3, v8}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_9
    invoke-static {v6}, Lorg/jcodec/common/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/android/camera/jcodec/MP4UtilEx;->writeTags(Ljava/lang/String;Ljava/util/List;)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/camera/storage/VideoSaveRequest;->updateVideoToMediaStore(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)I

    if-eqz v3, :cond_b

    .line 49
    array-length v0, v3

    if-eqz v0, :cond_b

    .line 50
    iget-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    array-length v4, v3

    .line 51
    invoke-static {v3, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 52
    invoke-static {v0, v3, v7, v7}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v0

    .line 53
    iget-object v3, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v3, v0, v1}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_3

    .line 54
    :cond_b
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    .line 55
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v3, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-interface {v3, v4, v0, v1}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v8, "latitude"

    .line 58
    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v8, "longitude"

    .line 59
    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_d

    move v7, v1

    .line 60
    :cond_d
    invoke-static {v0, v3, v4, v5, v7}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto :goto_4

    :cond_e
    if-eqz v0, :cond_f

    .line 61
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_f
    :goto_4
    const-string/jumbo v0, "save video: end"

    .line 62
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/storage/BaseSaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    return-void
.end method
