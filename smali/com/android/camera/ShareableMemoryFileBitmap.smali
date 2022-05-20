.class public Lcom/android/camera/ShareableMemoryFileBitmap;
.super Ljava/lang/Object;
.source "ShareableMemoryFileBitmap.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ShareableMemoryFileBitmap"

.field public static final sMemoryFileBitmapWrapper:Lcom/xiaomi/camera/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/util/Singleton<",
            "Lcom/android/camera/ShareableMemoryFileBitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mByteCount:I

.field public mHeight:I

.field public mMemoryFile:Landroid/os/MemoryFile;

.field public mUri:Landroid/net/Uri;

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/ShareableMemoryFileBitmap$1;

    invoke-direct {v0}, Lcom/android/camera/ShareableMemoryFileBitmap$1;-><init>()V

    sput-object v0, Lcom/android/camera/ShareableMemoryFileBitmap;->sMemoryFileBitmapWrapper:Lcom/xiaomi/camera/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ShareableMemoryFileBitmap$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;-><init>()V

    return-void
.end method

.method private declared-synchronized getBackingMemoryFile()Landroid/os/MemoryFile;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mMemoryFile:Landroid/os/MemoryFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/android/camera/ShareableMemoryFileBitmap;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ShareableMemoryFileBitmap;->sMemoryFileBitmapWrapper:Lcom/xiaomi/camera/util/Singleton;

    invoke-virtual {v0}, Lcom/xiaomi/camera/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShareableMemoryFileBitmap;

    return-object v0
.end method

.method private declared-synchronized setBackingMemoryFile(Landroid/os/MemoryFile;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mMemoryFile:Landroid/os/MemoryFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getByteCount()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/compat/common/MemoryFileCompat;->getFileDescritor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeight()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/compat/common/MemoryFileCompat;->getFileDescritor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Landroid/net/Uri;Landroid/graphics/Bitmap;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return v0

    :cond_0
    if-eqz p2, :cond_5

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 5
    invoke-virtual {p2, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v3

    if-nez v3, :cond_2

    .line 8
    new-instance v3, Landroid/os/MemoryFile;

    const-string/jumbo v4, "preview"

    invoke-direct {v3, v4, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v3, v2, v0, v0, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 10
    invoke-direct {p0, v3}, Lcom/android/camera/ShareableMemoryFileBitmap;->setBackingMemoryFile(Landroid/os/MemoryFile;)V

    .line 11
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I

    .line 13
    iput v1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I

    .line 14
    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;

    .line 15
    sget-object p1, Lcom/android/camera/ShareableMemoryFileBitmap;->TAG:Ljava/lang/String;

    const-string p2, "case: null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/MemoryFile;->length()I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    .line 18
    new-instance v3, Landroid/os/MemoryFile;

    const-string/jumbo v4, "preview"

    invoke-direct {v3, v4, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {v3, v2, v0, v0, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 20
    invoke-direct {p0, v3}, Lcom/android/camera/ShareableMemoryFileBitmap;->setBackingMemoryFile(Landroid/os/MemoryFile;)V

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I

    .line 22
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I

    .line 23
    iput v1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I

    .line 24
    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;

    .line 25
    sget-object p1, Lcom/android/camera/ShareableMemoryFileBitmap;->TAG:Ljava/lang/String;

    const-string p2, "case: small"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 26
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v2, v0, v0, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I

    .line 29
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I

    .line 30
    iput v1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I

    .line 31
    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;

    .line 32
    sget-object p1, Lcom/android/camera/ShareableMemoryFileBitmap;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "case: reuse "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 33
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 34
    :try_start_2
    sget-object p2, Lcom/android/camera/ShareableMemoryFileBitmap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 36
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ShareableMemoryFileBitmap;->setBackingMemoryFile(Landroid/os/MemoryFile;)V

    .line 38
    iput v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I

    .line 39
    iput v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I

    .line 40
    iput v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I

    .line 41
    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 43
    :cond_5
    :goto_1
    monitor-exit p0

    return v0
.end method
