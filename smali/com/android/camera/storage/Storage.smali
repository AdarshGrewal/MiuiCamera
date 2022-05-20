.class public Lcom/android/camera/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/Storage$StorageListener;
    }
.end annotation


# static fields
.field public static final ATTR_DOC_PHOTO_CROP_POINTS:Ljava/lang/String; = "cropPoints"

.field public static final ATTR_DOC_PHOTO_ENHANCE_TYPE:Ljava/lang/String; = "enhanceType"

.field public static final ATTR_DOC_PHOTO_LENGTH:Ljava/lang/String; = "rawLength"

.field public static final ATTR_DOC_PHOTO_VERSION:Ljava/lang/String; = "version"

.field public static final AVOID_SCAN_FILE_NAME:Ljava/lang/String; = ".nomedia"

.field public static BUCKET_ID:I = 0x0

.field public static final CAMERA_STORAGE_PATH_SUFFIX:Ljava/lang/String; = "/DCIM/Camera"

.field public static final CAMERA_STORAGE_PATH_TEMP:Ljava/lang/String; = "/DCIM/Camera/.temp"

.field public static CAMERA_TEMP_DIRECTORY:Ljava/lang/String; = null

.field public static DIRECTORY:Ljava/lang/String; = null

.field public static final DOCUMENT_PICTURE:Ljava/lang/String; = "DOCUMENT_PICTURE"

.field public static FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String; = null

.field public static final GIF_SUFFIX:Ljava/lang/String; = ".gif"

.field public static final HEIC_SUFFIX:Ljava/lang/String; = ".HEIC"

.field public static HIDEDIRECTORY:Ljava/lang/String; = null

.field public static final HIDE_CAMERA_STORAGE_PATH_SUFFIX:Ljava/lang/String; = "/DCIM/Camera/.ubifocus"

.field public static final HSR_120_SUFFIX:Ljava/lang/String; = "_HSR_120"

.field public static final HSR_240_SUFFIX:Ljava/lang/String; = "_HSR_240"

.field public static final HSR_480_SUFFIX:Ljava/lang/String; = "_HSR_480"

.field public static final ID_CARD_PICTURE_1:Ljava/lang/String; = "ID_CARD_PICTURE_1"

.field public static final ID_CARD_PICTURE_2:Ljava/lang/String; = "ID_CARD_PICTURE_2"

.field public static final IMAGE_READY_ACTION:Ljava/lang/String; = "com.android.camera.IMAGE_READY"

.field public static final IMAGE_READY_TARGET_PACKAGES:[Ljava/lang/String;

.field public static final JPEG_SUFFIX:Ljava/lang/String; = ".jpg"

.field public static final LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final LIVE_SHOT_PREFIX:Ljava/lang/String; = "MV"

.field public static final LOW_STORAGE_THRESHOLD:J = 0xc800000L

.field public static final MAX_WRITE_RETRY:I

.field public static final MIME_DNG:Ljava/lang/String; = "image/x-adobe-dng"

.field public static final MIME_GIF:Ljava/lang/String; = "image/gif"

.field public static final MIME_HEIC:Ljava/lang/String; = "image/heic"

.field public static final MIME_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final PARALLEL_PROCESS_EXIF_PROCESS_TAG:Ljava/lang/String; = "processing"

.field public static final PREPARING:J = -0x2L

.field public static PRIMARY_BUCKET_ID:I = 0x0

.field public static PRIMARY_RAW_BUCKET_ID:I = 0x0

.field public static final PRIMARY_STORAGE_PATH:Ljava/lang/String;

.field public static final QUOTA_RATIO:F = 0.9f

.field public static RAW_DIRECTORY:Ljava/lang/String; = null

.field public static final RAW_PATH_SUFFIX:Ljava/lang/String; = "/Raw"

.field public static final RAW_SUFFIX:Ljava/lang/String; = ".dng"

.field public static final SAVE_TO_CLOUD_ALBUM_ACTION:Ljava/lang/String; = "com.miui.gallery.SAVE_TO_CLOUD"

.field public static final SAVE_TO_CLOUD_ALBUM_CACHE_LOCATION_LATITUDE_KEY:Ljava/lang/String; = "extra_cache_location_latitude"

.field public static final SAVE_TO_CLOUD_ALBUM_CACHE_LOCATION_LONGITUDE_KEY:Ljava/lang/String; = "extra_cache_location_longitude"

.field public static final SAVE_TO_CLOUD_ALBUM_CACHE_LOCATION_REALTIMENANOS_KEY:Ljava/lang/String; = "extra_cache_location_elapsedrealtimenanos"

.field public static final SAVE_TO_CLOUD_ALBUM_FILE_LENGTH:Ljava/lang/String; = "extra_file_length"

.field public static final SAVE_TO_CLOUD_ALBUM_NOGAUSSIAN:Ljava/lang/String; = "extra_no_gaussian"

.field public static final SAVE_TO_CLOUD_ALBUM_PACKAGE:Ljava/lang/String; = "com.miui.gallery"

.field public static final SAVE_TO_CLOUD_ALBUM_PATH_KAY:Ljava/lang/String; = "extra_file_path"

.field public static final SAVE_TO_CLOUD_ALBUM_STORE_ID_KAY:Ljava/lang/String; = "extra_media_store_id"

.field public static final SAVE_TO_CLOUD_ALBUM_TEMP_FILE_KAY:Ljava/lang/String; = "extra_is_temp_file"

.field public static SECONDARY_BUCKET_ID:I = 0x0

.field public static SECONDARY_RAW_BUCKET_ID:I = 0x0

.field public static SECONDARY_STORAGE_PATH:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "Storage"

.field public static final TAG_DOC_PHOTO:Ljava/lang/String; = "docPhoto"

.field public static final TIMER_BURST_SUFFIX:Ljava/lang/String; = "_TIMEBURST"

.field public static final UBIFOCUS_SUFFIX:Ljava/lang/String; = "_UBIFOCUS_"

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field public static final VERSION:I = 0x1

.field public static final VIDEO_8K_SUFFIX:Ljava/lang/String; = "_8K"

.field public static final VIDEO_HDR10PLUS_SUFFIX:Ljava/lang/String; = "_HDR10PLUS"

.field public static final VIDEO_HDR10PRO_SUFFIX:Ljava/lang/String; = "_HLG"

.field public static final VIDEO_HDR10_SUFFIX:Ljava/lang/String; = "_HDR10"

.field public static sCurrentStoragePath:Ljava/lang/String;

.field public static sStorageListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/storage/Storage$StorageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    const-string v0, "SECONDARY_STORAGE"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Raw"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/DCIM/Camera/.ubifocus"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/DCIM/Camera/.temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/camera/storage/Storage;->PRIMARY_RAW_BUCKET_ID:I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/camera/storage/Storage;->SECONDARY_RAW_BUCKET_ID:I

    .line 18
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOO0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    sput v0, Lcom/android/camera/storage/Storage;->MAX_WRITE_RETRY:I

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/camera/storage/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "com.android.fileexplorer"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->IMAGE_READY_TARGET_PACKAGES:[Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDNGToDataBase(Landroid/content/Context;Ljava/lang/String;JIIIJ)Landroid/net/Uri;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v5, "title"

    .line 4
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    .line 5
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "datetaken"

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "mime_type"

    const-string p3, "image/x-adobe-dng"

    .line 8
    invoke-virtual {v4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_data"

    .line 9
    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "width"

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "orientation"

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "_size"

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p0, v3, p1}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p3, p4, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 16
    sget-object p3, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to write MediaStore, path "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method public static addGifToDataBase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JII)Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v2, "title"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_display_name"

    .line 4
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "datetaken"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "mime_type"

    const-string p3, "image/gif"

    .line 6
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_data"

    .line 7
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "width"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p0, p4, p1}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p3, p4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 12
    sget-object p3, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to write MediaStore, path "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method public static addGifToMediaStore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JII)Landroid/net/Uri;
    .locals 4

    const-string v0, "Current gif URI: "

    .line 1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v3, "title"

    .line 3
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_display_name"

    .line 4
    invoke-virtual {v2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "datetaken"

    invoke-virtual {v2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "mime_type"

    const-string p4, "image/gif"

    .line 6
    invoke-virtual {v2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_data"

    .line 7
    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo p5, "width"

    invoke-virtual {v2, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "height"

    invoke-virtual {v2, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p4, 0x0

    .line 10
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    .line 11
    sget p7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v3, 0x0

    if-lt p7, v1, :cond_1

    const-string/jumbo p7, "relative_path"

    const-string v1, "DCIM/Camera/"

    .line 12
    invoke-virtual {v2, p7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p2, "is_pending"

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2, p4, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    sget-object p2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "insert before, save path == record path, result uri = "

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 17
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p0, v3, p2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    sget-object p2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p7, "save path != record path, insert it, result uri = "

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 19
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 20
    invoke-static {p0, v3, p2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    :goto_0
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 22
    sget-object p0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addGifToMediaStore: insert gif cost: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p5

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 25
    sget-object p0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, p4

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p1, p4

    .line 26
    :goto_1
    :try_start_6
    sget-object p2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string p3, "failed to add gif to media store"

    invoke-static {p2, p3, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 27
    sget-object p0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catchall_1
    move-exception p0

    :goto_3
    sget-object p2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method public static addHeifInfo(Landroid/content/Context;Ljava/lang/String;Landroid/location/Location;JIIIZ)Landroid/net/Uri;
    .locals 17

    move-object/from16 v14, p1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v15

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".HEIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "image/heic"

    move-object/from16 v0, p0

    move-wide/from16 v3, p3

    move/from16 v6, p5

    move-object/from16 v7, p1

    move-wide v8, v15

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p2

    move/from16 v13, p8

    invoke-static/range {v0 .. v13}, Lcom/android/camera/storage/Storage;->insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;Z)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_0

    .line 5
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHeifInfo: failed to insert to DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v15

    move/from16 v4, p8

    .line 7
    invoke-static/range {v0 .. v8}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZJZZ)V

    return-object v9
.end method

.method public static addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZ)Landroid/net/Uri;
    .locals 14

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 1
    invoke-static/range {v0 .. v13}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZ)Landroid/net/Uri;
    .locals 31

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p6

    move/from16 v0, p7

    move/from16 v12, p10

    move/from16 v11, p11

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addImage: parallel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p12

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | orientation > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {v14, v12, v11, v0}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_0

    const-string v1, ".HEIC"

    goto :goto_0

    :cond_0
    const-string v1, ".jpg"

    :goto_0
    move-object v7, v1

    if-eqz v0, :cond_1

    const-string v0, "image/heic"

    goto :goto_1

    :cond_1
    const-string v0, "image/jpeg"

    :goto_1
    move-object/from16 v18, v0

    .line 5
    invoke-static {v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move/from16 v19, v6

    goto :goto_2

    :cond_2
    const/16 v19, 0x0

    :goto_2
    const-string v5, " path = "

    const-string v3, "date_taken = "

    const-string v2, "datetaken"

    const-string v1, "_data"

    const/4 v15, 0x0

    if-eqz v19, :cond_6

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v20

    const/16 v22, 0x1

    move-object v4, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v2, p1

    move-object/from16 v24, v3

    move-object v3, v0

    move-object/from16 v26, v4

    move-object/from16 v25, v5

    move-wide/from16 v4, p2

    move-object/from16 v6, v18

    move-object/from16 v27, v7

    move/from16 v7, p5

    move-object/from16 v28, v8

    move-wide/from16 v9, v20

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p4

    move/from16 v14, p12

    move/from16 v15, v22

    .line 8
    invoke-static/range {v1 .. v15}, Lcom/android/camera/storage/Storage;->insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;ZZ)Landroid/net/Uri;

    move-result-object v15

    .line 9
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v14, v23

    move-object/from16 v13, v26

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v0, v15, v1, v12, v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    .line 10
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v11, 0x0

    .line 11
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v24

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v8, v25

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    move-object/from16 v9, v24

    move-object/from16 v8, v25

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 13
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string v2, "insert preview image failed on R"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, v28

    :goto_3
    if-eqz v1, :cond_4

    .line 14
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v1, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v15, v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v12, 0x0

    :goto_4
    move-object v15, v12

    :goto_5
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    move-object v13, v1

    move-object v14, v2

    move-object v9, v3

    move v10, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object v12, v15

    const/4 v11, 0x0

    move-object v8, v5

    move-object/from16 v1, v28

    .line 15
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 16
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addimage insert_first cost_ms ```| "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v2, v16

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v11

    .line 17
    :goto_7
    :try_start_3
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-static {v1, v10}, Lcom/android/camera/FileCompat;->getFileOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_8

    :cond_7
    if-eqz v15, :cond_8

    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_8

    :cond_8
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_8
    move-object v5, v0

    .line 19
    :try_start_4
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    move-object/from16 v7, p6

    :try_start_5
    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    .line 20
    :try_start_6
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    const/16 v0, 0x1000

    :try_start_7
    new-array v0, v0, [B

    .line 21
    :goto_9
    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v25, v8

    const/4 v8, -0x1

    if-eq v10, v8, :cond_9

    .line 22
    :try_start_8
    invoke-virtual {v12, v0, v11, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v8, v25

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_a

    .line 23
    :cond_9
    :try_start_9
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/4 v10, 0x1

    move-object/from16 v12, p0

    move v6, v11

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    move-object/from16 v25, v8

    :goto_a
    move-object v8, v0

    .line 24
    :try_start_c
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    move-object v10, v0

    .line 25
    :try_start_d
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v12, v0

    :try_start_e
    invoke-virtual {v8, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object/from16 v25, v8

    :goto_c
    move-object v8, v0

    .line 26
    :try_start_f
    throw v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception v0

    move-object v10, v0

    .line 27
    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object v6, v0

    :try_start_11
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_f

    :catchall_c
    move-exception v0

    goto :goto_e

    :catchall_d
    move-exception v0

    move-object/from16 v7, p6

    :goto_e
    move-object/from16 v25, v8

    :goto_f
    move-object v6, v0

    .line 28
    :try_start_12
    throw v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    :catchall_e
    move-exception v0

    move-object v8, v0

    .line 29
    :try_start_13
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    goto :goto_10

    :catchall_f
    move-exception v0

    move-object v5, v0

    :try_start_14
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v8
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    move-object/from16 v7, p6

    move-object/from16 v25, v8

    .line 30
    :goto_11
    invoke-static {v0, v1}, Lcom/android/camera/storage/Storage;->dumpExceptionEnv(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 31
    sget-object v5, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string v6, "Failed to write image"

    invoke-static {v5, v6, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x1

    add-int/2addr v4, v10

    .line 32
    invoke-static {v0}, Lcom/android/camera/Util;->isQuotaExceeded(Ljava/lang/Exception;)Z

    move-result v0

    move-object/from16 v12, p0

    if-eqz v0, :cond_b

    instance-of v0, v12, Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_b

    .line 33
    move-object v0, v12

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v4

    if-nez v4, :cond_a

    .line 34
    new-instance v4, Lcom/android/camera/storage/Storage$1;

    invoke-direct {v4, v12}, Lcom/android/camera/storage/Storage$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 35
    :cond_a
    sget v0, Lcom/android/camera/storage/Storage;->MAX_WRITE_RETRY:I

    move v4, v0

    goto :goto_12

    .line 36
    :cond_b
    sget v0, Lcom/android/camera/storage/Storage;->MAX_WRITE_RETRY:I

    if-ge v4, v0, :cond_c

    .line 37
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v5, 0x32

    .line 38
    :try_start_15
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_2

    .line 39
    :catch_2
    :cond_c
    :goto_12
    sget v0, Lcom/android/camera/storage/Storage;->MAX_WRITE_RETRY:I

    if-lt v4, v0, :cond_1d

    move v6, v10

    :goto_13
    if-eqz v6, :cond_e

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-gtz v0, :cond_e

    :cond_d
    const/4 v1, 0x0

    return-object v1

    .line 42
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 43
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addimage writeFile cost_ms   |"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v16, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p11, :cond_15

    .line 44
    invoke-static/range {p6 .. p6}, Lcom/android/camera/Util;->isProduceFocusInfoSuccess([B)Z

    move-result v0

    move/from16 v8, p8

    move/from16 v6, p9

    .line 45
    invoke-static {v7, v8, v6}, Lcom/android/camera/Util;->getCenterFocusDepthIndex([BII)I

    move-result v1

    const-string v2, "_"

    const-string v3, "_UBIFOCUS_"

    move-object/from16 v5, p1

    if-eqz v0, :cond_f

    .line 46
    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    goto :goto_14

    :cond_f
    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    :goto_14
    invoke-virtual {v5, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-static {v4, v11, v11, v11}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v5

    .line 48
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_10

    goto :goto_15

    :cond_10
    move-object v2, v3

    :goto_15
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v10, p10

    invoke-static {v1, v10, v11, v11}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_11

    if-eqz v1, :cond_11

    .line 49
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_17

    .line 50
    :cond_11
    sget-object v2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oldPath: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "null"

    if-nez v1, :cond_12

    move-object v1, v11

    :cond_12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newPath: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_13

    goto :goto_16

    :cond_13
    move-object v11, v5

    :goto_16
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    if-nez v0, :cond_14

    .line 51
    invoke-static {v4}, Lcom/android/camera/storage/Storage;->deleteImage(Ljava/lang/String;)V

    :cond_14
    move-object v2, v4

    move-object v0, v5

    goto :goto_18

    :cond_15
    move-object/from16 v5, p1

    move/from16 v8, p8

    move/from16 v6, p9

    move/from16 v10, p10

    move-object v0, v1

    move-object v2, v5

    :goto_18
    if-eqz v10, :cond_16

    if-nez p11, :cond_16

    const/4 v11, 0x0

    return-object v11

    :cond_16
    const/4 v11, 0x0

    if-eqz v19, :cond_18

    .line 52
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v19, 0x0

    .line 53
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_pending"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v15, v1, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v15, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 56
    invoke-static {v2}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-object v15

    :cond_17
    move-object/from16 v24, v9

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move-object v1, v15

    move-object v15, v11

    goto :goto_19

    :cond_18
    const/16 v19, 0x0

    .line 57
    invoke-static {v2}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-object v11

    .line 58
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    move-object/from16 v6, v18

    move-object v15, v7

    move/from16 v7, p5

    move-object/from16 v10, v25

    move-object v8, v0

    move-object v15, v9

    move-wide/from16 v9, v20

    move-object/from16 v18, v11

    move/from16 v11, p8

    move-object/from16 v24, v15

    move-object/from16 v15, v18

    move/from16 v12, p9

    move-object/from16 v29, v13

    move-object/from16 v13, p4

    move-object/from16 v30, v14

    move/from16 v14, p12

    .line 60
    invoke-static/range {v1 .. v14}, Lcom/android/camera/storage/Storage;->insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;Z)Landroid/net/Uri;

    move-result-object v1

    .line 61
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 62
    sget-object v4, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addimage updateFirst cost_ms   |"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v2, v16

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1a

    .line 63
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to insert to DB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    .line 64
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v7, v29

    move-object/from16 v6, v30

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v15, v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 66
    sget-object v2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v24

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_1b
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 67
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string v2, " insert preview failed on R"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    move-object/from16 v2, p6

    .line 68
    array-length v0, v2

    int-to-long v2, v0

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    if-nez p4, :cond_1c

    goto :goto_1b

    :cond_1c
    move v9, v11

    :goto_1b
    move-object/from16 p1, v28

    move-wide/from16 p2, v2

    move/from16 p4, p12

    move-wide/from16 p5, v4

    move/from16 p7, v9

    move/from16 p8, p13

    invoke-static/range {p0 .. p8}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZJZZ)V

    return-object v1

    :cond_1d
    move-object/from16 v5, p1

    move-object v8, v9

    move v9, v10

    move-object v7, v13

    move-object v13, v15

    move/from16 v10, p10

    move v10, v9

    const/4 v12, 0x0

    move-object v13, v7

    move-object v9, v8

    move-object/from16 v8, v25

    goto/16 :goto_7
.end method

.method public static addImageForEffect(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZ)Landroid/net/Uri;
    .locals 14

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v13, p10

    .line 1
    invoke-static/range {v0 .. v13}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addImageForGroupOrPanorama(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const/4 v1, 0x0

    if-eqz v15, :cond_3

    if-nez v14, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open panorama file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    const/4 v0, 0x0

    const-string v6, "image/jpeg"

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide/from16 v4, p3

    move/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p5

    move-object v15, v14

    move v14, v0

    .line 6
    invoke-static/range {v1 .. v14}, Lcom/android/camera/storage/Storage;->insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;Z)Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez p5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v4, p0

    move-object v5, v15

    .line 7
    invoke-static {v4, v5, v1, v2, v3}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZ)V

    return-object v0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public static addImageForSnapCamera(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZ)Landroid/net/Uri;
    .locals 14

    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 1
    invoke-static/range {v0 .. v13}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addRawImage(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;[BJIII)Landroid/net/Uri;
    .locals 16

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/android/camera/storage/Storage;->generateRawFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v11, Landroid/hardware/camera2/DngCreator;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v11, v1, v2}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 4
    :try_start_1
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object/from16 v2, p4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 5
    :try_start_2
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v10, v13}, Lcom/android/camera/FileCompat;->getFileOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :goto_0
    move-object v14, v1

    .line 7
    :try_start_3
    new-instance v15, Ljava/io/BufferedOutputStream;

    invoke-direct {v15, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 8
    :try_start_4
    invoke-static/range {p9 .. p9}, Lcom/android/gallery3d/exif/ExifInterface;->getExifOrientationValue(I)S

    move-result v1

    invoke-virtual {v11, v1}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 9
    new-instance v3, Landroid/util/Size;

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct {v3, v7, v8}, Landroid/util/Size;-><init>(II)V

    const-wide/16 v5, 0x0

    move-object v1, v11

    move-object v2, v15

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/DngCreator;->writeInputStream(Ljava/io/OutputStream;Landroid/util/Size;Ljava/io/InputStream;J)V

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide/from16 v3, p5

    move-wide/from16 p1, v5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v8, p1

    .line 11
    invoke-static/range {v1 .. v9}, Lcom/android/camera/storage/Storage;->addDNGToDataBase(Landroid/content/Context;Ljava/lang/String;JIIIJ)Landroid/net/Uri;

    move-result-object v1

    .line 12
    sget-object v2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRawImage path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    .line 13
    invoke-static {v0, v10, v2, v3, v13}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v14, :cond_2

    :try_start_6
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :cond_2
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    :try_start_8
    invoke-virtual {v11}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 15
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 16
    :try_start_a
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 17
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v14, :cond_3

    .line 18
    :try_start_d
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_e
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 19
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 20
    :try_start_10
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 21
    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 22
    :try_start_13
    invoke-virtual {v11}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    goto :goto_5

    :catchall_b
    move-exception v0

    move-object v3, v0

    :try_start_14
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    :catchall_c
    move-exception v0

    .line 23
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRawImage failed, path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static addXmpData([BJ[FLjava/lang/String;)[B
    .locals 7

    const-string v0, "docPhoto"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 3
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    .line 4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    .line 6
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "enhanceType"

    .line 7
    invoke-interface {v3, v1, v4, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p4, "cropPoints"

    .line 8
    invoke-static {p3}, Lcom/android/camera/storage/Storage;->convertToString([F)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v3, v1, p4, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "rawLength"

    .line 9
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v1, p3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 11
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 12
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 15
    :try_start_4
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p2

    move-object p1, v1

    .line 16
    :goto_1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    sget-object p2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string p3, "build xmp string error"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 19
    :cond_0
    :try_start_6
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 20
    :try_start_7
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 21
    :try_start_8
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object p0

    const-string p4, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v0, "XMPMeta"

    .line 22
    invoke-interface {p0, p4, v0, p1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-static {p3, p2, p0}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    .line 24
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 25
    sget-object p0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string p1, " built xmp data complete"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 26
    :try_start_9
    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    :catchall_3
    move-exception p0

    .line 27
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p1

    .line 28
    :try_start_c
    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p3

    :try_start_d
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception p0

    .line 29
    :try_start_e
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception p1

    .line 30
    :try_start_f
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception p2

    :try_start_10
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    :catch_2
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    sget-object p0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string p1, "build xmp bytes error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v1
.end method

.method public static convertToString([F)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createHideFile()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/Util;->createFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteImage(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static deleteSdcardFile(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1
    invoke-static {p0}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    :goto_0
    return v1
.end method

.method public static dumpExceptionEnv(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 12

    .line 1
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    .line 5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/android/camera/Util;->getFilesState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 7
    :try_start_0
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ex"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result p1

    .line 9
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v8

    .line 10
    :goto_0
    sget-object v9, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v8

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "exists"

    goto :goto_1

    :cond_0
    const-string v1, "not exists"

    :goto_1
    aput-object v1, v11, v0

    const/4 v0, 0x4

    .line 12
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isDirectory"

    goto :goto_2

    :cond_1
    const-string v1, "isNotDirectory"

    :goto_2
    aput-object v1, v11, v0

    const/4 v0, 0x5

    .line 13
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "canWrite"

    goto :goto_3

    :cond_2
    const-string v1, "canNotWrite"

    :goto_3
    aput-object v1, v11, v0

    const/4 v0, 0x6

    if-eqz p1, :cond_3

    const-string/jumbo p1, "testFileCanWrite"

    goto :goto_4

    :cond_3
    const-string/jumbo p1, "testFileCannotWrite"

    :goto_4
    aput-object p1, v11, v0

    const/4 p1, 0x7

    aput-object v7, v11, p1

    const-string p1, "Failed to write image, memory state(max:%d, total:%d, free:%d), file state(%s;%s;%s;%s,%s)"

    .line 14
    invoke-static {v10, p1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method

.method public static extractDateTaken(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "datetaken"

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    sget-object p0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractDateTaken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static flipJpeg([BZZ)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v2, 0x0

    .line 3
    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p2, v2

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 7
    invoke-virtual {v9, p1, v1, p2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, p0

    .line 9
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p2, :cond_4

    goto :goto_2

    :cond_4
    return-object p1

    :cond_5
    :goto_2
    return-object v0

    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string p2, "Failed to rotate thumbnail"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static generateFileTempPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->isDocumentPicture(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".tmp"

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->isIdCardPicture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFileTemppath4Image(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/android/camera/storage/Storage;->HEIC_SUFFIX:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/storage/Storage;->JPEG_SUFFIX:Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera/storage/Storage;->generateFileTempPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->isDocumentPicture(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2f

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->isIdCardPicture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/android/camera/storage/Storage;->HEIC_SUFFIX:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/storage/Storage;->JPEG_SUFFIX:Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilepath4Image(Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, ".y"

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, ".HEIC"

    goto :goto_0

    :cond_1
    const-string p2, ".jpg"

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    sget-object p3, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_3
    invoke-static {p0, p2}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateImageReadyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZJ)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.IMAGE_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    new-instance v2, Landroid/content/ComponentName;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, p1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    const-string p0, "extra_file_path"

    .line 7
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_file_length"

    .line 8
    invoke-virtual {v0, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "extra_is_temp_file"

    if-eqz p5, :cond_1

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "extra_media_store_id"

    .line 10
    invoke-virtual {v0, p0, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public static generatePrimaryDirectoryPath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->generatePrimaryDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generatePrimaryTempFile()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/.temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateRawFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dng"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateTempFilepath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableSpace()J
    .locals 2

    .line 19
    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAvailableSpace(Ljava/lang/String;)J
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string v0, "getAvailableSpace path is empty"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {p0}, Lcom/android/camera/FileCompat;->mkdirs(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    .line 6
    invoke-static {v0, v3, v4, v4}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    move-result v3

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v3, :cond_5

    const-string v0, "/DCIM/Camera"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/camera/storage/MediaProviderUtil;->insertCameraDirectory(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 10
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertDirectory success, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 11
    :cond_4
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertDirectory fail, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_5
    :goto_2
    :try_start_0
    sget-object v0, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/Util;->createFile(Ljava/io/File;)Z

    .line 14
    :cond_6
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->getQuotaInfo(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 15
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string v1, "Fail to access external storage"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x3

    return-wide v0

    .line 16
    :cond_7
    :goto_3
    sget-object v3, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableSpace path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exists = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isDirectory = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", canWrite = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public static getLeftSpace()J
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLeftSpace() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/DCIM/Camera"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPriorityStoragePreference()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :cond_2
    :goto_0
    invoke-static {p0, p1, v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getMediaUri(Landroid/content/Context;ZZ)Landroid/net/Uri;

    move-result-object p0

    .line 7
    sget-object p1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMediaUri isSecondaryStorage="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", uri="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getPrimaryStoragePath()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getQuotaInfo(Ljava/lang/String;)J
    .locals 3

    .line 1
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 3
    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/storage/Storage;->setLeftSpace(J)V

    :cond_0
    return-wide v0
.end method

.method public static getSaveToCloudIntent(Landroid/content/Context;Ljava/lang/String;JZJZZ)Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.gallery"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 6
    new-instance v3, Landroid/content/ComponentName;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    const-string p0, "extra_file_path"

    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_file_length"

    .line 8
    invoke-virtual {v0, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "extra_no_gaussian"

    .line 9
    invoke-virtual {v0, p0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "extra_is_temp_file"

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "extra_media_store_id"

    .line 11
    invoke-virtual {v0, p0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    if-eqz p7, :cond_3

    .line 13
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide p1

    const-string p3, "extra_cache_location_elapsedrealtimenanos"

    .line 15
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    const-string p3, "extra_cache_location_latitude"

    .line 17
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    const-string p2, "extra_cache_location_longitude"

    .line 19
    invoke-virtual {v0, p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 20
    :cond_2
    sget-object p0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string p1, "broadcast last location to gallery"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public static getSecondaryStoragePath()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static hasSecondaryStorage()Z
    .locals 5

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000O0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2

    .line 3
    invoke-static {}, Lcom/xiaomi/compat/common/UserHandleCompat;->isUserOwner()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    .line 4
    :cond_2
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasSecondaryStorage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static initStorage(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000O0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/FileCompat;->updateSDPath()V

    .line 3
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getSdcardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initStorage sd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 5
    sput-object p0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/DCIM/Camera"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sput p0, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 8
    sput-object p0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 9
    :goto_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->readSystemPriorityStorage()V

    return-void
.end method

.method public static insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;Z)Landroid/net/Uri;
    .locals 15

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    .line 1
    invoke-static/range {v0 .. v14}, Lcom/android/camera/storage/Storage;->insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;ZZ)Landroid/net/Uri;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p6

    move-object/from16 v4, p7

    .line 2
    sget-object v5, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v8, 0x1

    aput-object v2, v6, v8

    .line 3
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v6, v10

    const/4 v9, 0x3

    aput-object v4, v6, v9

    const-string v9, "insertToMediaStore: title = %s , displayName = %s , size = %d , filePath = %s"

    .line 4
    invoke-static {v5, v9, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v6, "title"

    .line 6
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_display_name"

    .line 7
    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "datetaken"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "mime_type"

    move-object/from16 v6, p5

    .line 9
    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v6, "orientation"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "_size"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v6, "width"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "height"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "relative_path"

    const-string v6, "DCIM/Camera/"

    .line 14
    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p14, :cond_0

    .line 15
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "is_pending"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-eqz p12, :cond_1

    .line 16
    invoke-virtual/range {p12 .. p12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v6, "latitude"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 17
    invoke-virtual/range {p12 .. p12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v6, "longitude"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 18
    :cond_1
    invoke-static/range {p7 .. p7}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "_data"

    .line 19
    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, ", uri = "

    const-string v6, ", orientation = "

    const/4 v8, 0x0

    if-nez p13, :cond_3

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {p0, v7, v4}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 21
    :try_start_1
    sget-object v5, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert: title "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v4

    goto :goto_1

    .line 22
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {p0, v7, v4}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v9, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    :try_start_3
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {p0, v9, v10, v4}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->insertImageToParallelService(Landroid/content/Context;JLjava/lang/String;)V

    .line 24
    sget-object v4, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parallel insert: title "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 25
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, v5

    goto :goto_1

    :catch_2
    move-exception v0

    .line 26
    :goto_1
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write MediaStore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 27
    :goto_2
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertMediaStore OK uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static isCurrentStorageIsSecondary()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDirectoryExistsAndCanWrite(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDocumentPicture(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "DOCUMENT_PICTURE"

    .line 1
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isIdCardPicture(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->isIdCardPictureOne(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->isIdCardPictureTwo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isIdCardPictureOne(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ID_CARD_PICTURE_1"

    .line 1
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isIdCardPictureTwo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ID_CARD_PICTURE_2"

    .line 1
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isLowStorageAtLastPoint()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/32 v2, 0xc800000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string v2, "low storage"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public static isLowStorageSpace(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xc800000

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPhoneStoragePriority()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPrimaryPhoneStorage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRelatedStorage(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSaveToHidenFolder(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->isDocumentPicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->isIdCardPicture(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSecondPhoneStorage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUseDocumentMode()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_3

    const/16 v2, 0x1d

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0o()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isDirectoryExistsAndCanWrite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static isUsePhoneStorage()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newImage(Landroid/content/Context;Ljava/lang/String;JIIIZ)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-static {p1, p7}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "datetaken"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "orientation"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "_data"

    .line 5
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "width"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p7, :cond_0

    const-string p2, "image/heic"

    goto :goto_0

    :cond_0
    const-string p2, "image/jpeg"

    :goto_0
    const-string p3, "mime_type"

    .line 8
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p0, p4, p1}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p2, p1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 11
    :goto_1
    sget-object p1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to new image"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    :goto_2
    return-object p1
.end method

.method public static readSystemPriorityStorage()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->isPriorityStorage()Z

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setPriorityStoragePreference(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/android/camera/storage/Storage;->updateDirectory()V

    return-void
.end method

.method public static renameSdcardFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/camera/FileCompat;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object p1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "renameSdcardFile failed"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public static saveMorphoPanoramaOriginalPic(Ljava/nio/ByteBuffer;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 9
    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 11
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 12
    :try_start_2
    sget-object p1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveMorphoPanoramaOriginalPic  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :catch_1
    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_3

    .line 13
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 14
    :catch_2
    :cond_3
    throw p0
.end method

.method public static saveOriginalPic([BILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 9
    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 12
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p2, p1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p2, p1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 13
    :goto_0
    :try_start_3
    sget-object p1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "saveMorphoPanoramaOriginalPic exception occurs"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_2

    .line 14
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 15
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz p2, :cond_3

    .line 16
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 17
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 18
    :catch_3
    :cond_3
    throw p0
.end method

.method public static saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 8

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v7, p4

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZJZ)V

    return-void
.end method

.method public static saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZJZ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    .line 2
    invoke-static/range {v0 .. v8}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZJZZ)V

    return-void
.end method

.method public static saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZJZZ)V
    .locals 13

    move-object v8, p0

    .line 3
    invoke-static/range {p0 .. p8}, Lcom/android/camera/storage/Storage;->getSaveToCloudIntent(Landroid/content/Context;Ljava/lang/String;JZJZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4
    sget-object v9, Lcom/android/camera/storage/Storage;->IMAGE_READY_TARGET_PACKAGES:[Ljava/lang/String;

    array-length v10, v9

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    move-object v0, p0

    move-object v1, v12

    move-object v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    .line 5
    invoke-static/range {v0 .. v7}, Lcom/android/camera/storage/Storage;->generateImageReadyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZJ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify image ready to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static secondaryStorageMounted()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setLeftSpace(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLeftSpace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setStorageListener(Lcom/android/camera/storage/Storage$StorageListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/camera/storage/Storage;->sStorageListener:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public static switchStoragePathIfNeeded()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    .line 6
    :cond_0
    sget-object v2, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/DCIM/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    sput-object v0, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    sput-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 11
    :goto_0
    sget-object v0, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-static {}, Lcom/android/camera/storage/Storage;->updateDirectory()V

    .line 13
    sget-object v0, Lcom/android/camera/storage/Storage;->sStorageListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    sget-object v0, Lcom/android/camera/storage/Storage;->sStorageListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage$StorageListener;

    invoke-interface {v0}, Lcom/android/camera/storage/Storage$StorageListener;->onStoragePathChanged()V

    .line 15
    :cond_2
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage path is switched path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", FIRST_CONSIDER_STORAGE_PATH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SECONDARY_STORAGE_PATH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_3
    return-void
.end method

.method public static switchToPhoneStorage()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchToPhoneStorage"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/android/camera/storage/Storage;->updateDirectory()V

    .line 6
    sget-object v0, Lcom/android/camera/storage/Storage;->sStorageListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/android/camera/storage/Storage;->sStorageListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage$StorageListener;

    invoke-interface {v0}, Lcom/android/camera/storage/Storage$StorageListener;->onStoragePathChanged()V

    :cond_0
    return-void
.end method

.method public static updateDirectory()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/.ubifocus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    return-void
.end method

.method public static updateForGroupOrPanorama(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "title"

    .line 2
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    .line 3
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p6, "datetaken"

    invoke-virtual {v0, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string/jumbo p6, "orientation"

    invoke-virtual {v0, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string/jumbo p6, "width"

    invoke-virtual {v0, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "height"

    invoke-virtual {v0, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p5, 0x0

    .line 8
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string p8, "is_pending"

    invoke-virtual {v0, p8, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p7, :cond_0

    .line 9
    invoke-virtual {p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide p8

    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p6

    const-string p8, "latitude"

    invoke-virtual {v0, p8, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 10
    invoke-virtual {p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide p8

    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p6

    const-string p8, "longitude"

    invoke-virtual {v0, p8, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    const/4 p6, -0x1

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p8

    const/4 p9, 0x0

    invoke-virtual {p8, p0, v0, p9, p9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p6

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p8

    invoke-virtual {p8, p0, p9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 13
    sget-object p8, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert: title "

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", orientation = "

    invoke-virtual {p9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", uri = "

    invoke-virtual {p9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p8, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 14
    sget-object p4, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "Failed to write MediaStore: "

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p6, :cond_2

    const-wide/16 p3, -0x1

    if-nez p7, :cond_1

    const/4 p5, 0x1

    .line 15
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZ)V

    :cond_2
    return-object p0
.end method

.method public static updateHeifInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;III)Landroid/net/Uri;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "datetaken"

    .line 1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const/4 v8, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p1, v10, v8, v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 5
    :try_start_1
    invoke-static {v9, v7}, Lcom/android/camera/storage/Storage;->extractDateTaken(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v9, :cond_0

    .line 6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 7
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    .line 9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "is_pending"

    invoke-virtual {v9, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string v10, "_data"

    .line 10
    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v10, "title"

    .line 11
    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".HEIC"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "_display_name"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime_type"

    const-string v10, "image/heic"

    .line 13
    invoke-virtual {v9, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v10, "orientation"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v10, "_size"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v10, "width"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v10, "height"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "relative_path"

    const-string v10, "DCIM/Camera/"

    .line 18
    invoke-virtual {v9, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 19
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v10, "latitude"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 20
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v10, "longitude"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 21
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v8, v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    .line 22
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v9, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 24
    sget-object v7, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateHeifInfo update uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", ret->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v11, v2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 27
    sget-object v4, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateHeifInfo create new uri "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    .line 29
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-nez p4, :cond_5

    const/4 v11, 0x1

    .line 30
    :cond_5
    invoke-static {p0, v2, v5, v6, v11}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZ)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v8, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v8, :cond_6

    .line 31
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_2
    move-exception v0

    move-object v8, v9

    goto :goto_3

    :catchall_3
    move-exception v0

    :goto_3
    if-eqz v8, :cond_7

    .line 32
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public static updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Landroid/net/Uri;
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 1
    invoke-static/range {v0 .. v11}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;Z)Landroid/net/Uri;
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    move-object/from16 v9, p10

    .line 2
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImage:  orientation > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez v9, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    .line 5
    :goto_0
    invoke-static {v15, v12}, Lcom/android/camera/storage/mediastore/ImageFile;->queryImageStore(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/camera/storage/mediastore/ImageFile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/ImageFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/ImageFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find preview path in provider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    invoke-static {v11, v13}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    .line 10
    invoke-static {v11, v13}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string v1, "media provider path match!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v6, :cond_4

    move-object v0, v4

    goto :goto_3

    :cond_4
    if-eqz v9, :cond_5

    .line 12
    invoke-static {v9, v13}, Lcom/android/camera/storage/Storage;->generateFileTemppath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v11, v13}, Lcom/android/camera/storage/Storage;->generateFileTemppath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 13
    :goto_3
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateImage:  tmpPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "_data"

    const-string v3, "datetaken"

    if-eqz v1, :cond_a

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    if-eqz v13, :cond_6

    sget-object v1, Lcom/android/camera/storage/Storage;->MIME_HEIC:Ljava/lang/String;

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/android/camera/storage/Storage;->MIME_JPEG:Ljava/lang/String;

    :goto_4
    move-object/from16 v21, v1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v26, v3

    move-object/from16 v3, v18

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-wide/from16 v4, v19

    move/from16 v29, v6

    move-object/from16 v6, v21

    move/from16 v7, p7

    move-object v8, v0

    move-wide/from16 v9, v22

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p6

    move/from16 v14, v24

    move/from16 v15, v25

    .line 17
    invoke-static/range {v1 .. v15}, Lcom/android/camera/storage/Storage;->insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;ZZ)Landroid/net/Uri;

    move-result-object v2

    .line 18
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v4, v26

    move-object/from16 v3, v28

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v5, v6, v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_7

    .line 19
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    .line 20
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v7, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " date_taken = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " tmpPath = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 22
    sget-object v7, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string v8, " insert preview failed on R"

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    if-eqz v1, :cond_8

    .line 23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v1, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    :goto_6
    move-object v2, v6

    :goto_7
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :cond_a
    move-object/from16 v27, v4

    move/from16 v29, v6

    move v9, v8

    const/4 v6, 0x0

    move-object v4, v3

    move-object v3, v5

    move v5, v7

    move-object v1, v0

    move-object v2, v6

    .line 24
    :goto_8
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 25
    sget-object v8, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateImage uri-> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", overwrite -> "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v29

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", tmpFile "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, p1

    if-eqz v8, :cond_13

    move v10, v5

    .line 26
    :goto_9
    :try_start_3
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_b

    :try_start_4
    new-instance v0, Ljava/io/BufferedOutputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v13, v27

    :try_start_5
    invoke-static {v13, v9}, Lcom/android/camera/FileCompat;->getFileOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_b

    :catch_0
    move-exception v0

    move-object/from16 v13, v27

    :goto_a
    move-object/from16 v18, v1

    goto/16 :goto_13

    :cond_b
    move-object/from16 v13, v27

    if-eqz v2, :cond_c

    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_b

    :cond_c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_b
    move-object v14, v0

    .line 28
    :try_start_6
    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    .line 29
    :try_start_7
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    const/16 v0, 0x1000

    :try_start_8
    new-array v0, v0, [B

    .line 30
    :goto_c
    invoke-virtual {v15, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v18, v1

    const/4 v1, -0x1

    if-eq v9, v1, :cond_d

    .line 31
    :try_start_9
    invoke-virtual {v6, v0, v5, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v1, v18

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_d

    .line 32
    :cond_d
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :try_start_c
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-object/from16 v1, p0

    move v0, v5

    goto/16 :goto_15

    :catchall_4
    move-exception v0

    move-object/from16 v18, v1

    :goto_d
    move-object v1, v0

    .line 33
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    move-object v9, v0

    .line 34
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v6, v0

    :try_start_f
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object/from16 v18, v1

    :goto_f
    move-object v1, v0

    .line 35
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :catchall_9
    move-exception v0

    move-object v6, v0

    .line 36
    :try_start_11
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    move-object v9, v0

    :try_start_12
    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_11

    :catchall_c
    move-exception v0

    move-object/from16 v18, v1

    :goto_11
    move-object v1, v0

    .line 37
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    :catchall_d
    move-exception v0

    move-object v6, v0

    .line 38
    :try_start_14
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception v0

    move-object v9, v0

    :try_start_15
    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v6
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v13, v27

    .line 39
    :goto_13
    invoke-static {v0, v13}, Lcom/android/camera/storage/Storage;->dumpExceptionEnv(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const-string v6, "Failed to write image"

    invoke-static {v1, v6, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    add-int/2addr v10, v1

    .line 41
    invoke-static {v0}, Lcom/android/camera/Util;->isQuotaExceeded(Ljava/lang/Exception;)Z

    move-result v0

    move-object/from16 v1, p0

    if-eqz v0, :cond_f

    instance-of v0, v1, Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_f

    .line 42
    move-object v0, v1

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v6

    if-nez v6, :cond_e

    .line 43
    new-instance v6, Lcom/android/camera/storage/Storage$2;

    invoke-direct {v6, v1}, Lcom/android/camera/storage/Storage$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    :cond_e
    sget v0, Lcom/android/camera/storage/Storage;->MAX_WRITE_RETRY:I

    move v10, v0

    goto :goto_14

    .line 45
    :cond_f
    sget v0, Lcom/android/camera/storage/Storage;->MAX_WRITE_RETRY:I

    if-ge v10, v0, :cond_10

    .line 46
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v14, 0x32

    .line 47
    :try_start_16
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_4

    .line 48
    :catch_4
    :cond_10
    :goto_14
    sget v0, Lcom/android/camera/storage/Storage;->MAX_WRITE_RETRY:I

    if-lt v10, v0, :cond_12

    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_11

    const/4 v6, 0x0

    return-object v6

    :cond_11
    move/from16 v9, p2

    move-object/from16 v6, p10

    goto :goto_16

    :cond_12
    move-object/from16 v27, v13

    move-object/from16 v1, v18

    const/4 v6, 0x0

    const/4 v9, 0x1

    goto/16 :goto_9

    :cond_13
    move-object/from16 v6, p10

    move-object/from16 v18, v1

    move-object/from16 v13, v27

    move-object/from16 v1, p0

    move/from16 v9, p2

    if-eqz v6, :cond_14

    .line 49
    invoke-static {v6, v9}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_17

    :cond_14
    :goto_16
    move-object/from16 v10, v18

    .line 50
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 51
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v12

    const-string/jumbo v12, "updateimage  writeFile cost_ms   |"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p11, v2

    sub-long v1, v14, v16

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 53
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    const/4 v5, 0x0

    :try_start_18
    invoke-virtual {v0, v11, v2, v5, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    .line 54
    :try_start_19
    invoke-static {v2, v1}, Lcom/android/camera/storage/Storage;->extractDateTaken(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    if-eqz v2, :cond_15

    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_15
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 57
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    const-string/jumbo v2, "renameTo failed, tmpPath = "

    if-nez v0, :cond_18

    .line 58
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/camera/FileCompat;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5

    move v5, v0

    goto :goto_18

    .line 59
    :catch_5
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x0

    aput-object v12, v5, v18

    const/4 v12, 0x1

    aput-object v13, v5, v12

    const-string v12, "Exception when renameFile  temppatch:%s->path:%s"

    invoke-static {v0, v12, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v5, 0x0

    :goto_18
    if-eqz p3, :cond_16

    if-eqz v6, :cond_16

    .line 60
    :try_start_1b
    new-instance v0, Ljava/io/File;

    invoke-static {v6, v9}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    goto :goto_19

    :catch_6
    move-exception v0

    .line 61
    sget-object v12, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    move-object/from16 v18, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v19, v14

    const-string v14, "Exception when delete old file "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_16
    :goto_19
    move-object/from16 v18, v7

    move-wide/from16 v19, v14

    :goto_1a
    if-nez v5, :cond_17

    .line 62
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    const/4 v1, 0x0

    return-object v1

    :cond_17
    move v7, v5

    goto :goto_1c

    :cond_18
    move-object/from16 v18, v7

    move-wide/from16 v19, v14

    const/4 v7, 0x0

    .line 63
    :goto_1c
    new-instance v0, Landroid/content/ContentValues;

    const/16 v5, 0xa

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v5, "title"

    move-object/from16 v12, p5

    .line 64
    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_19

    const-string v12, ".HEIC"

    goto :goto_1d

    :cond_19
    const-string v12, ".jpg"

    :goto_1d
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v12, "_display_name"

    invoke-virtual {v0, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object v5, v10

    goto :goto_1e

    :cond_1a
    move-object v5, v13

    :goto_1e
    if-eqz v8, :cond_1d

    if-eqz v9, :cond_1b

    const-string v6, "image/heic"

    goto :goto_1f

    :cond_1b
    const-string v6, "image/jpeg"

    :goto_1f
    const-string v9, "mime_type"

    .line 67
    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v9, "orientation"

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v9, "_size"

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v9, "width"

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v9, "height"

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p6, :cond_1c

    .line 72
    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v9, "latitude"

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 73
    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v9, "longitude"

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 74
    :cond_1c
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_1d
    if-eqz v6, :cond_1e

    .line 75
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1e
    :goto_20
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    const/4 v5, 0x0

    :try_start_1d
    invoke-virtual {v3, v11, v4, v5, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    if-eqz v3, :cond_1f

    .line 77
    :try_start_1e
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1f

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v11, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 79
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateImage update uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", ret->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    goto :goto_21

    .line 80
    :cond_1f
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object/from16 v4, p0

    invoke-static {v4, v5, v13}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateImage create new uri "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v0

    .line 83
    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    if-eqz v3, :cond_20

    .line 84
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    sget-object v3, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateimage  updateAfter cost_ms   |"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz v7, :cond_21

    .line 88
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v6, p11

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_21
    if-nez v29, :cond_24

    .line 91
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v13, v0}, Lcom/android/camera/storage/Storage;->renameSdcardFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v3, " to "

    const-string v6, "fail to rename "

    if-eqz v1, :cond_23

    .line 94
    invoke-static {v10, v13}, Lcom/android/camera/storage/Storage;->renameSdcardFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 95
    invoke-static {v0}, Lcom/android/camera/storage/Storage;->deleteSdcardFile(Ljava/lang/String;)Z

    goto :goto_22

    .line 96
    :cond_22
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v10}, Lcom/android/camera/storage/Storage;->deleteSdcardFile(Ljava/lang/String;)Z

    goto :goto_22

    .line 98
    :cond_23
    sget-object v1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {v0}, Lcom/android/camera/storage/Storage;->deleteSdcardFile(Ljava/lang/String;)Z

    move v7, v5

    .line 100
    :goto_22
    invoke-static {v10}, Lcom/android/camera/FileCompat;->removeDocumentFileForPath(Ljava/lang/String;)V

    .line 101
    invoke-static {v13}, Lcom/android/camera/FileCompat;->removeDocumentFileForPath(Ljava/lang/String;)V

    if-nez v7, :cond_24

    .line 102
    sget-object v0, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 103
    :cond_24
    array-length v0, v8

    int-to-long v0, v0

    if-nez p6, :cond_25

    const/4 v8, 0x1

    goto :goto_23

    :cond_25
    move v8, v5

    :goto_23
    invoke-static {v4, v13, v0, v1, v8}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZ)V

    return-object v11

    :catchall_f
    move-exception v0

    move-object v2, v3

    goto :goto_25

    :catchall_10
    move-exception v0

    move-object v1, v5

    goto :goto_24

    :catchall_11
    move-exception v0

    const/4 v1, 0x0

    :goto_24
    move-object v2, v1

    :goto_25
    if-eqz v2, :cond_26

    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_26
    throw v0

    :catchall_12
    move-exception v0

    goto :goto_27

    :catchall_13
    move-exception v0

    move-object v1, v5

    goto :goto_26

    :catchall_14
    move-exception v0

    const/4 v1, 0x0

    :goto_26
    move-object v2, v1

    :goto_27
    if-eqz v2, :cond_27

    .line 105
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_27
    throw v0
.end method

.method public static updateImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "_size"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/android/camera/storage/Storage;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to updateMediaStore"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
