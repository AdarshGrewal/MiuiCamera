.class public Lmiuix/internal/log/appender/LogcatAppender;
.super Ljava/lang/Object;
.source "LogcatAppender.java"

# interfaces
.implements Lmiuix/internal/log/appender/Appender;


# instance fields
.field public mThreadCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
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
    new-instance v0, Lmiuix/internal/log/appender/LogcatAppender$1;

    invoke-direct {v0, p0}, Lmiuix/internal/log/appender/LogcatAppender$1;-><init>(Lmiuix/internal/log/appender/LogcatAppender;)V

    iput-object v0, p0, Lmiuix/internal/log/appender/LogcatAppender;->mThreadCache:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p1, Lmiuix/internal/log/appender/LogcatAppender$2;->$SwitchMap$miuix$internal$log$Level:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez p7, :cond_0

    .line 2
    invoke-static {p2, p6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2, p6, p7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    if-nez p7, :cond_1

    .line 4
    invoke-static {p2, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p2, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    if-nez p7, :cond_2

    .line 6
    invoke-static {p2, p6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p2, p6, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    if-nez p7, :cond_3

    .line 8
    invoke-static {p2, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p2, p6, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_4
    if-nez p7, :cond_4

    .line 10
    invoke-static {p2, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {p2, p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_5
    if-nez p7, :cond_5

    .line 12
    invoke-static {p2, p6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {p2, p6, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Lmiuix/internal/log/message/Message;)V
    .locals 10

    move-object v8, p0

    .line 14
    iget-object v0, v8, Lmiuix/internal/log/appender/LogcatAppender;->mThreadCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p6

    .line 16
    invoke-interface {v0, v9}, Lmiuix/internal/log/message/Message;->format(Ljava/lang/Appendable;)V

    .line 17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p6 .. p6}, Lmiuix/internal/log/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lmiuix/internal/log/appender/LogcatAppender;->append(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_0

    .line 19
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 20
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->trimToSize()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getFormatter()Lmiuix/internal/log/format/Formatter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setFormatter(Lmiuix/internal/log/format/Formatter;)V
    .locals 0

    return-void
.end method
