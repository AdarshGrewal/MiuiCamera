.class public Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;
.super Ljava/lang/Object;
.source "FileRolloverStrategy.java"

# interfaces
.implements Lmiuix/internal/log/appender/rolling/RolloverStrategy;


# static fields
.field public static final TAG:Ljava/lang/String; = "FileRolloverStrategy"


# instance fields
.field public mMaxBackupIndex:I

.field public mMaxFileSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->mMaxBackupIndex:I

    const-wide/32 v0, 0x100000

    .line 3
    iput-wide v0, p0, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->mMaxFileSize:J

    return-void
.end method


# virtual methods
.method public getMaxBackupIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->mMaxBackupIndex:I

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->mMaxFileSize:J

    return-wide v0
.end method

.method public rollover(Lmiuix/internal/log/appender/rolling/RollingFileManager;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lmiuix/internal/log/appender/FileManager;->getLogSize()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->mMaxFileSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lmiuix/internal/log/appender/FileManager;->getLogFile()Ljava/io/File;

    move-result-object p1

    const-string v0, "FileRolloverStrategy"

    const-string v1, "Start to rollover"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget v2, p0, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->mMaxBackupIndex:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-lez v2, :cond_2

    .line 6
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 10
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v1, "Rollover done"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setMaxBackupIndex(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->mMaxBackupIndex:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be less than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxFileSize(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lmiuix/internal/log/appender/rolling/FileRolloverStrategy;->mMaxFileSize:J

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size can\'t be less than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
