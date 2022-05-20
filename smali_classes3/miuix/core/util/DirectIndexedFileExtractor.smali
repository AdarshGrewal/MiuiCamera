.class public Lmiuix/core/util/DirectIndexedFileExtractor;
.super Ljava/lang/Object;
.source "DirectIndexedFileExtractor.java"


# static fields
.field public static final IDF_DIR_NAME:Ljava/lang/String; = "idf"

.field public static IDF_FILES_PATH:Ljava/lang/String; = null

.field public static final IDF_FILE_EXT:Ljava/lang/String; = ".idf"

.field public static final TAG:Ljava/lang/String; = "DirectIndexedFileExt"

.field public static final TARGET_DIR_MODE:I = 0x1f9

.field public static final TARGET_FILE_MODE:I = 0x1b4

.field public static final TMP_FILE_NAME_POSTFIX:Ljava/lang/String; = "-tmp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureIdfPath(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createDeviceProtectedStorageContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v0

    .line 8
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "idf"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 11
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 13
    new-instance p0, Ljava/io/File;

    sget-object v0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 15
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_3

    .line 16
    :try_start_3
    sget-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    const/16 v0, 0x1f9

    invoke-static {p0, v0}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 17
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string p0, "DirectIndexedFileExt"

    const-string v0, "Error: Cannot locate IDF_FILES_PATH"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFileExtractor;->ensureIdfPath(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lmiuix/core/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldOverwrite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiuix/core/util/DirectIndexedFile$Reader;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiuix/core/util/DirectIndexedFile$Reader;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result p2

    invoke-virtual {p1}, Lmiuix/core/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v2

    if-le p2, v2, :cond_0

    move v0, v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Reader;->close()V

    .line 6
    invoke-virtual {p1}, Lmiuix/core/util/DirectIndexedFile$Reader;->close()V

    return v0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Reader;->close()V

    return v1

    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method
