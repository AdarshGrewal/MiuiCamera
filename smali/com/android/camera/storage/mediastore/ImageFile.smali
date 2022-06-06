.class public Lcom/android/camera/storage/mediastore/ImageFile;
.super Ljava/lang/Object;
.source "ImageFile.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageFile"


# instance fields
.field public mContentValues:Landroid/content/ContentValues;

.field public mContext:Landroid/content/Context;

.field public mCurrentFileUri:Landroid/net/Uri;

.field public mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/camera/storage/mediastore/ImageFile;->path:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mimeType:Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p5, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_id"

    invoke-virtual {p5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p2, "_display_name"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p2, "bucket_id"

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p2, "mime_type"

    invoke-virtual {p1, p2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createImage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/storage/mediastore/ImageFile;
    .locals 8

    new-instance v7, Lcom/android/camera/storage/mediastore/ImageFile;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/storage/mediastore/ImageFile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static queryImageStore(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/camera/storage/mediastore/ImageFile;
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_4

    new-instance v0, Lcom/android/camera/storage/mediastore/ImageFile;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/mediastore/ImageFile;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "_data"

    const-string v3, "_id"

    const-string v4, "_display_name"

    const-string v5, "bucket_id"

    const-string v6, "mime_type"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 p0, 0x2

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x3

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 p0, 0x0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 p0, 0x4

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/camera/storage/mediastore/ImageFile;->createImage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/storage/mediastore/ImageFile;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mCurrentFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public insertPath2Store(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/storage/mediastore/ImageFile;->TAG:Ljava/lang/String;

    const-string v1, "NOT init"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "datetaken"

    invoke-virtual {p1, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p4, "mime_type"

    invoke-virtual {p1, p4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string p4, "_display_name"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo p3, "relative_path"

    const-string p4, "DCIM/Camera/"

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo p4, "orientation"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContext:Landroid/content/Context;

    const/4 p4, 0x0

    invoke-static {p3, p4, p2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p4, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mCurrentFileUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/camera/storage/mediastore/ImageFile;->path:Ljava/lang/String;

    return-object p1
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageFile;->mCurrentFileUri:Landroid/net/Uri;

    return-void
.end method
