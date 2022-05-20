.class public Lmiuix/internal/log/appender/FileAppender;
.super Ljava/lang/Object;
.source "FileAppender.java"

# interfaces
.implements Lmiuix/internal/log/appender/Appender;


# static fields
.field public static final TAG:Ljava/lang/String; = "FileAppender"


# instance fields
.field public mFileManager:Lmiuix/internal/log/appender/FileManager;

.field public mFormatter:Lmiuix/internal/log/format/Formatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doAppend(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V
    .locals 10

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lmiuix/internal/log/appender/FileAppender;->mFormatter:Lmiuix/internal/log/format/Formatter;

    const-string v2, "FileAppender"

    if-nez v1, :cond_0

    const-string v1, "Fail to append log for formatter is null"

    .line 2
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v9, v0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    if-nez v9, :cond_1

    const-string v1, "Fail to append log for FileManager is null"

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p6, :cond_2

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p8

    .line 5
    invoke-interface/range {v1 .. v7}, Lmiuix/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Lmiuix/internal/log/message/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmiuix/internal/log/appender/FileManager;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 6
    invoke-interface/range {v1 .. v8}, Lmiuix/internal/log/format/Formatter;->format(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmiuix/internal/log/appender/FileManager;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lmiuix/internal/log/appender/FileAppender;->doAppend(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V

    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Lmiuix/internal/log/message/Message;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v8, p6

    .line 2
    invoke-direct/range {v0 .. v8}, Lmiuix/internal/log/appender/FileAppender;->doAppend(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/internal/log/appender/FileManager;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    :cond_0
    return-void
.end method

.method public getFileManager()Lmiuix/internal/log/appender/FileManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    return-object v0
.end method

.method public getFormatter()Lmiuix/internal/log/format/Formatter;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/appender/FileAppender;->mFormatter:Lmiuix/internal/log/format/Formatter;

    return-object v0
.end method

.method public setFileManager(Lmiuix/internal/log/appender/FileManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lmiuix/internal/log/appender/FileAppender;->close()V

    .line 3
    iput-object p1, p0, Lmiuix/internal/log/appender/FileAppender;->mFileManager:Lmiuix/internal/log/appender/FileManager;

    return-void
.end method

.method public setFormatter(Lmiuix/internal/log/format/Formatter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/log/appender/FileAppender;->mFormatter:Lmiuix/internal/log/format/Formatter;

    return-void
.end method
