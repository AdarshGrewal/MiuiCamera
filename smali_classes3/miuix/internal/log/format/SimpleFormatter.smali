.class public Lmiuix/internal/log/format/SimpleFormatter;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"

# interfaces
.implements Lmiuix/internal/log/format/Formatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;,
        Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;,
        Lmiuix/internal/log/format/SimpleFormatter$StringBuilderWriter;
    }
.end annotation


# static fields
.field public static final DEFAULT_DELIMITER:Ljava/lang/String; = " - "


# instance fields
.field public mThreadCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/internal/log/format/SimpleFormatter$1;

    invoke-direct {v0, p0}, Lmiuix/internal/log/format/SimpleFormatter$1;-><init>(Lmiuix/internal/log/format/SimpleFormatter;)V

    iput-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter;->mThreadCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private doFormat(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Lmiuix/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/format/SimpleFormatter;->mThreadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;

    .line 2
    iget-object v1, v0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->out:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    iget-object v2, v0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->dateFormat:Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;

    invoke-virtual {v2, v1, p3, p4}, Lmiuix/internal/log/format/SimpleFormatter$CachedDateFormat;->format(Ljava/lang/StringBuilder;J)V

    const-string p3, " - "

    .line 5
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x5b

    .line 6
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "::"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_0

    .line 9
    invoke-interface {p7, v1}, Lmiuix/internal/log/message/Message;->format(Ljava/lang/Appendable;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p1, 0xa

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_1

    .line 12
    iget-object p1, v0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;->printer:Ljava/io/PrintWriter;

    invoke-virtual {p8, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 13
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 p2, 0x2000

    if-le p1, p2, :cond_2

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 16
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public format(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lmiuix/internal/log/format/SimpleFormatter;->doFormat(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Lmiuix/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Lmiuix/internal/log/message/Message;)Ljava/lang/String;
    .locals 9

    .line 2
    invoke-interface {p6}, Lmiuix/internal/log/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lmiuix/internal/log/format/SimpleFormatter;->doFormat(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Lmiuix/internal/log/message/Message;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
