.class public Lmiuix/internal/log/message/StringFormattedMessage;
.super Lmiuix/internal/log/message/AbstractMessage;
.source "StringFormattedMessage.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "StringFormattedMessage"


# instance fields
.field public mFormat:Ljava/lang/String;

.field public mFormatter:Lmiuix/internal/log/util/AppendableFormatter;

.field public mParameters:[Ljava/lang/Object;

.field public mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/internal/log/message/AbstractMessage;-><init>()V

    .line 2
    new-instance v0, Lmiuix/internal/log/util/AppendableFormatter;

    invoke-direct {v0}, Lmiuix/internal/log/util/AppendableFormatter;-><init>()V

    iput-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormatter:Lmiuix/internal/log/util/AppendableFormatter;

    return-void
.end method

.method public static obtain()Lmiuix/internal/log/message/StringFormattedMessage;
    .locals 1

    .line 1
    const-class v0, Lmiuix/internal/log/message/StringFormattedMessage;

    invoke-static {v0}, Lmiuix/internal/log/message/MessageFactory;->obtain(Ljava/lang/Class;)Lmiuix/internal/log/message/Message;

    move-result-object v0

    check-cast v0, Lmiuix/internal/log/message/StringFormattedMessage;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Appendable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormatter:Lmiuix/internal/log/util/AppendableFormatter;

    invoke-virtual {v0, p1}, Lmiuix/internal/log/util/AppendableFormatter;->setAppendable(Ljava/lang/Appendable;)V

    .line 3
    iget-object p1, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormatter:Lmiuix/internal/log/util/AppendableFormatter;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/internal/log/util/AppendableFormatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Lmiuix/internal/log/util/AppendableFormatter;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "StringFormattedMessage"

    const-string v1, "Fail to format message"

    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public onRecycle()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    .line 4
    iget-object v1, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormatter:Lmiuix/internal/log/util/AppendableFormatter;

    invoke-virtual {v1, v0}, Lmiuix/internal/log/util/AppendableFormatter;->setAppendable(Ljava/lang/Appendable;)V

    return-void
.end method

.method public setFormat(Ljava/lang/String;)Lmiuix/internal/log/message/StringFormattedMessage;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setParameters([Ljava/lang/Object;)Lmiuix/internal/log/message/StringFormattedMessage;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    return-object p0
.end method

.method public setThrowable(Ljava/lang/Throwable;)Lmiuix/internal/log/message/StringFormattedMessage;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/log/message/StringFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    return-object p0
.end method
