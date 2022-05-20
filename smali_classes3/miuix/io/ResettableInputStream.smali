.class public Lmiuix/io/ResettableInputStream;
.super Ljava/io/InputStream;
.source "ResettableInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/io/ResettableInputStream$Type;
    }
.end annotation


# instance fields
.field public final mAssetManager:Landroid/content/res/AssetManager;

.field public final mAssetPath:Ljava/lang/String;

.field public final mByteArray:[B

.field public final mContext:Landroid/content/Context;

.field public final mFinalizeGuardian:Ljava/lang/Object;

.field public volatile mInputStream:Ljava/io/InputStream;

.field public mLastException:Ljava/io/IOException;

.field public mOpenStack:Ljava/lang/Throwable;

.field public final mPath:Ljava/lang/String;

.field public final mType:Lmiuix/io/ResettableInputStream$Type;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 12
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    sget-object p1, Lmiuix/io/ResettableInputStream$Type;->File:Lmiuix/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 14
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 16
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 17
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 18
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->Uri:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 21
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 23
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 25
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 29
    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->Asset:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 30
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 31
    iput-object p2, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 35
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 3
    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->File:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 4
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 6
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 7
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 8
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    new-instance v0, Lmiuix/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiuix/io/ResettableInputStream$1;-><init>(Lmiuix/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    .line 38
    sget-object v0, Lmiuix/io/ResettableInputStream$Type;->ByteArray:Lmiuix/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    .line 39
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    .line 43
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 44
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/io/ResettableInputStream;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    return-object p0
.end method

.method private openStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 5
    monitor-exit v1

    return-void

    .line 6
    :cond_1
    sget-object v0, Lmiuix/io/ResettableInputStream$2;->$SwitchMap$miuix$io$ResettableInputStream$Type:[I

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mByteArray:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/io/ResettableInputStream;->mType:Lmiuix/io/ResettableInputStream$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 10
    :cond_4
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 14
    :cond_6
    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 2
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    :try_start_1
    iget-object v2, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    .line 7
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 8
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 10
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    .line 11
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    .line 12
    iput-object v1, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    throw v2

    :catchall_1
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public mark(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 2
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iput-object p1, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 2
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    iput-object v0, p0, Lmiuix/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    .line 4
    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 2
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 4
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 6
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->close()V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmiuix/io/ResettableInputStream;->openStream()V

    .line 2
    iget-object v0, p0, Lmiuix/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
