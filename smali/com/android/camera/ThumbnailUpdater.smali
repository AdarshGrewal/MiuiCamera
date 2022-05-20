.class public Lcom/android/camera/ThumbnailUpdater;
.super Ljava/lang/Object;
.source "ThumbnailUpdater.java"

# interfaces
.implements Lcom/android/camera/UriChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ThumbnailUpdater$VideoObserver;,
        Lcom/android/camera/ThumbnailUpdater$ImageObserver;,
        Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;,
        Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ThumbnailUpdater"


# instance fields
.field public mActivityBase:Lcom/android/camera/ActivityBase;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mImageObserver:Lcom/android/camera/ThumbnailUpdater$ImageObserver;

.field public mLastUri:Landroid/net/Uri;

.field public mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public mThumbnail:Lcom/android/camera/Thumbnail;

.field public mVideoObserver:Lcom/android/camera/ThumbnailUpdater$VideoObserver;

.field public mViewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ThumbnailUpdaterWork"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance p1, Lcom/android/camera/ThumbnailUpdater$ImageObserver;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0, p0}, Lcom/android/camera/ThumbnailUpdater$ImageObserver;-><init>(Landroid/os/Handler;Lcom/android/camera/UriChangedListener;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mImageObserver:Lcom/android/camera/ThumbnailUpdater$ImageObserver;

    .line 7
    new-instance p1, Lcom/android/camera/ThumbnailUpdater$VideoObserver;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0, p0}, Lcom/android/camera/ThumbnailUpdater$VideoObserver;-><init>(Landroid/os/Handler;Lcom/android/camera/UriChangedListener;)V

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mVideoObserver:Lcom/android/camera/ThumbnailUpdater$VideoObserver;

    .line 8
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mImageObserver:Lcom/android/camera/ThumbnailUpdater$ImageObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mVideoObserver:Lcom/android/camera/ThumbnailUpdater$VideoObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static synthetic access$400(Z)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/camera/ThumbnailUpdater;->getBaseUir(Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Landroid/net/Uri;Z)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/ThumbnailUpdater;->queryLastId(Landroid/net/Uri;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getBaseUir(Z)Landroid/net/Uri;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    const-string v0, "external_primary"

    if-eqz p0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPriorityStoragePreference()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MediaStore;->getExternalVolumeNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p0, :cond_2

    .line 9
    invoke-static {v3}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_1
    move-object v1, p0

    :cond_3
    return-object v1

    :cond_4
    if-eqz p0, :cond_5

    .line 11
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_5
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_2
    return-object p0
.end method

.method public static queryLastId(Landroid/net/Uri;Z)J
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id DESC LIMIT 1"

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "_id"

    .line 3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 4
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mImageObserver:Lcom/android/camera/ThumbnailUpdater$ImageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mVideoObserver:Lcom/android/camera/ThumbnailUpdater$VideoObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public getLastThumbnail()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastThumbnail: cancel task "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ThumbnailUpdater"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public getLastThumbnailUncached(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastThumbnailUncached: cancel task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;ZZ)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public getLastUri()Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnail()Lcom/android/camera/Thumbnail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mViewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onUriChanged(Landroid/net/Uri;Landroid/net/Uri;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    array-length v1, p1

    if-lez v1, :cond_1

    .line 6
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    .line 7
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 9
    :cond_1
    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    return-void
.end method

.method public saveThumbnailToFile()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/ThumbnailUpdater$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/Thumbnail;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZZ)V

    return-void
.end method

.method public setThumbnail(Lcom/android/camera/Thumbnail;ZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setThumbnail mLastUri="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/ThumbnailUpdater;->mLastUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThumbnailUpdater"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setViewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mViewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public updatePreviewThumbnailUri(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/Thumbnail;->setUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public updateThumbnailView(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(ZZ)V

    return-void
.end method

.method public updateThumbnailView(ZZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;

    new-instance v1, Lcom/android/camera/ThumbnailUpdater$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ThumbnailUpdater$1;-><init>(Lcom/android/camera/ThumbnailUpdater;ZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
