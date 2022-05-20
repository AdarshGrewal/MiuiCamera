.class public Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;
.super Landroid/content/ContentProvider;
.source "ParallelProcessProvider.java"


# static fields
.field public static final DELETE_BY_ID:I = 0x6

.field public static final MATCH_PATH_DELETE_BY_ID:Ljava/lang/String; = "delete/#"

.field public static final MATCH_PROCESSING_BY_ID:Ljava/lang/String; = "processing/#"

.field public static final MATCH_PROCESSING_METADATA:Ljava/lang/String; = "processing"

.field public static final QUERY_PROCESSING_METADATA:I = 0x7

.field public static final QUERY_PROCESSING_METADATA_BY_ID:I = 0x8

.field public static final TAG:Ljava/lang/String; = "ParallelProcessProvider"

.field public static final VERSION:I = 0x1


# instance fields
.field public dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

.field public mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private deleteProcessingMetadata(Landroid/net/Uri;)I
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByMediaId(Ljava/lang/Long;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteProcessingMetadata: mediaStoreId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParallelProcessProvider"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    invoke-virtual {v0, v2}, Lcom/android/camera/db/item/DbItemBase;->removeItem(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->notifyChange(Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "deleteProcessingMetadata: no match task found"

    .line 6
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private insertProcessingMetadata(Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algo db: insert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParallelProcessProvider"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    invoke-virtual {v0, p3}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object p3

    .line 4
    invoke-virtual {p3, p2}, Lcom/android/camera/db/element/SaveTask;->setMediaStoreId(Ljava/lang/Long;)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    invoke-virtual {v0, p3}, Lcom/android/camera/db/item/DbItemBase;->updateItem(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->notifyChange(Landroid/net/Uri;)V

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error insert values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private loadProcessingImage(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByMediaId(Ljava/lang/Long;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil$DEBUG;->doAssert(Z)V

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 9

    .line 1
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "media_store_id"

    const-string v2, "media_path"

    const-string v3, "progress_status"

    const-string v4, "progress_percentage"

    const-string v5, "start_time"

    const-string v6, "no_gaussian"

    const-string v7, "progress_anim_type"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2
    :goto_0
    iget-object v4, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    invoke-virtual {v4}, Lcom/android/camera/db/item/DbItemBase;->getAllItems()Ljava/util/List;

    move-result-object v4

    .line 3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/db/element/SaveTask;

    if-nez v3, :cond_2

    .line 4
    invoke-virtual {v5}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v5}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    .line 6
    invoke-virtual {v5}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    sget-object v8, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    .line 7
    invoke-virtual {v8}, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->getIdentifier()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 8
    invoke-virtual {v5}, Lcom/android/camera/db/element/SaveTask;->getPercentage()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v5}, Lcom/android/camera/db/element/SaveTask;->getStartTime()Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 10
    invoke-virtual {v5}, Lcom/android/camera/db/element/SaveTask;->getNoGaussian()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v5, 0x6

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 12
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    .line 13
    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    return-object v0
.end method

.method private querySpecialTypesVersion()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "version"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private updateProcessingMetadata(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProcessingMetadata: mediaStoreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParallelProcessProvider"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByMediaId(Ljava/lang/Long;)Lcom/android/camera/db/element/SaveTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p3}, Lcom/android/camera/db/element/SaveTask;->setPercentage(I)V

    .line 4
    iget-object p2, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    invoke-virtual {p2, p1}, Lcom/android/camera/db/item/DbItemBase;->updateItem(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "updateProcessingMetadata: no match task found"

    .line 5
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 2
    new-instance p1, Landroid/content/UriMatcher;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 3
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, "delete/#"

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, "processing"

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v0, "processing/#"

    const/16 v1, 0x8

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "version"

    .line 1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->querySpecialTypesVersion()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete uri: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ParallelProcessProvider"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil$ParallelService;->start(Landroid/content/Context;)V

    .line 3
    iget-object p2, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->deleteProcessingMetadata(Landroid/net/Uri;)I

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized uri: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParallelProcessProvider"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil$ParallelService;->start(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "media_store_id"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "media_path"

    .line 5
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->insertProcessingMetadata(Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "contentValues is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCreate()Z
    .locals 2

    const-string v0, "ParallelProcessProvider"

    const-string v1, "onCreate"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/db/DbContainer;->init(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "r"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p2, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loading processing thumb: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ParallelProcessProvider"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->loadProcessingImage(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "query uri: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ParallelProcessProvider"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil$ParallelService;->start(Landroid/content/Context;)V

    .line 3
    iget-object p2, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x7

    if-eq p2, p3, :cond_1

    const/16 p3, 0x8

    if-ne p2, p3, :cond_0

    .line 4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unrecognized uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ParallelProcessProvider"

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/16 p4, 0x8

    if-ne p3, p4, :cond_1

    if-eqz p2, :cond_0

    const-string p3, "progress_percentage"

    .line 3
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p3

    invoke-direct {p0, p3, p4, p2}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->updateProcessingMetadata(JI)V

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/parallelservice/provider/ParallelProcessProvider;->notifyChange(Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "contentValues is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unrecognized uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
