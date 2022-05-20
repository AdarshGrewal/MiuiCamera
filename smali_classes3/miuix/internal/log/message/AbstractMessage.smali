.class public abstract Lmiuix/internal/log/message/AbstractMessage;
.super Ljava/lang/Object;
.source "AbstractMessage.java"

# interfaces
.implements Lmiuix/internal/log/message/Message;


# static fields
.field public static final TAG:Ljava/lang/String; = "AbstractMessage"


# instance fields
.field public mRecycled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract format(Ljava/lang/Appendable;)V
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public isRecycled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/log/message/AbstractMessage;->mRecycled:Z

    return v0
.end method

.method public abstract onRecycle()V
.end method

.method public prepareForReuse()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmiuix/internal/log/message/AbstractMessage;->mRecycled:Z

    return-void
.end method

.method public recycle()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/log/message/AbstractMessage;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractMessage"

    const-string v1, "Recycle message twice"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lmiuix/internal/log/message/AbstractMessage;->onRecycle()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/internal/log/message/AbstractMessage;->mRecycled:Z

    .line 5
    invoke-static {p0}, Lmiuix/internal/log/message/MessageFactory;->recycle(Lmiuix/internal/log/message/Message;)V

    :goto_0
    return-void
.end method
