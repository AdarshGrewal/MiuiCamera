.class public Lcom/android/camera/FileCompat$LollipopFileCompatCommonImpl;
.super Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;
.source "FileCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LollipopFileCompatCommonImpl"
.end annotation


# static fields
.field public static final SD_PATH_TREE_URI:Ljava/lang/String; = "sd_path_tree_uri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->update()V

    return-void
.end method


# virtual methods
.method public getStorageAccessForLOLLIPOP(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->getExtSDCardPaths()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    iput-object v4, p0, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->accessSDPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string/jumbo p2, "storage"

    .line 6
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageManager;

    .line 7
    invoke-virtual {p2}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageVolume;

    .line 10
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "FileCompat"

    if-nez p2, :cond_3

    const-string p1, "getStorageAccessForLOLLIPOP error, intent is null"

    .line 11
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/16 v1, 0xa1

    .line 12
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "getStorageAccessForLOLLIPOP error"

    .line 13
    invoke-static {v0, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return v2

    :cond_5
    :goto_3
    return v1
.end method

.method public getTreeUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sd_path_tree_uri"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    if-ne p3, p2, :cond_3

    .line 1
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "FileCompat"

    if-nez p2, :cond_1

    const-string p1, "handleActivityResult: uri is null, documents permission is Failed!"

    .line 2
    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_1
    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "handleActivityResult: documentFile is not exist, documents permission is Failed!"

    .line 5
    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 6
    :cond_2
    :try_start_0
    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    move-result p4

    and-int/lit8 p4, p4, 0x3

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2, p4}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    const-string/jumbo p4, "sd_path_tree_uri"

    .line 8
    invoke-virtual {p1, p4, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p4, p0, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->accessSDPath:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 12
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheUri failed, uri = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->update()V

    :cond_3
    :goto_0
    return v0
.end method

.method public hasStoragePermission(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->isExternalSDFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/FileCompat$KitKatFileCompatCommonImpl;->getSDPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/FileCompat$LollipopFileCompatCommonImpl;->getTreeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/FileCompat$LollipopFileCompatCommonImpl;->getTreeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    invoke-static {v2, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasStoragePermission document = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FileCompat"

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    return v0

    .line 8
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    return v1
.end method
