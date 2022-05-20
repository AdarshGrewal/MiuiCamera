.class public final Lokio/PushableTimeout;
.super Lokio/Timeout;
.source "PushableTimeout.java"


# instance fields
.field public originalDeadlineNanoTime:J

.field public originalHasDeadline:Z

.field public originalTimeoutNanos:J

.field public pushed:Lokio/Timeout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public pop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    iget-wide v1, p0, Lokio/PushableTimeout;->originalTimeoutNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 2
    iget-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    iget-wide v1, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-virtual {v0, v1, v2}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_0
    return-void
.end method

.method public push(Lokio/Timeout;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    .line 2
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    iput-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    .line 4
    invoke-virtual {p1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lokio/PushableTimeout;->originalTimeoutNanos:J

    .line 5
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lokio/Timeout;->minTimeout(JJ)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 6
    iget-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_2
    :goto_1
    return-void
.end method
