.class public Lcom/android/camera/performance/PerformanceManager$Take;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/performance/PerformanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Take"
.end annotation


# instance fields
.field public mAction:Ljava/lang/String;

.field public mEndTime:J

.field public mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

.field public mIsStarting:Z

.field public mStartTime:J

.field public final synthetic this$0:Lcom/android/camera/performance/PerformanceManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/PerformanceManager$Event;)V
    .locals 2

    .line 8
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->this$0:Lcom/android/camera/performance/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->UNKNOWN:Lcom/android/camera/performance/PerformanceManager$Event;

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 11
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    .line 14
    iput-object p2, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/PerformanceManager$Event;J)V
    .locals 2

    .line 24
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->this$0:Lcom/android/camera/performance/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->UNKNOWN:Lcom/android/camera/performance/PerformanceManager$Event;

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    const-string p1, ""

    .line 26
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 27
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    .line 30
    iput-object p2, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    .line 31
    iput-wide p3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->this$0:Lcom/android/camera/performance/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->UNKNOWN:Lcom/android/camera/performance/PerformanceManager$Event;

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    .line 7
    iput-object p2, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;J)V
    .locals 2

    .line 15
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->this$0:Lcom/android/camera/performance/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->UNKNOWN:Lcom/android/camera/performance/PerformanceManager$Event;

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    const-string p1, ""

    .line 17
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 18
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    .line 21
    iput-object p2, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    .line 22
    iput-wide p3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    return-wide v0
.end method

.method public getEvent()Lcom/android/camera/performance/PerformanceManager$Event;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    return-wide v0
.end method

.method public getTakeTime()J
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    :goto_0
    aput-object v5, v4, v3

    const-string v3, "%s is not ended"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-wide v5, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    iget-wide v7, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v1

    const/4 v7, 0x2

    if-ltz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    .line 6
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Event: %s takes %d ms"

    .line 7
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    aput-object v7, v2, v3

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Action: %s takes %d ms"

    .line 10
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-wide v1, v5

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_4

    .line 12
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    .line 13
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    iget-wide v8, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v4

    iget-wide v3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v7

    const-string v3, "Illegal parameters. Event: %s end time(%d) is smaller than start time(%d)"

    .line 14
    invoke-static {v6, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 15
    :cond_4
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mAction:Ljava/lang/String;

    aput-object v8, v5, v3

    iget-wide v8, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    .line 16
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v4

    iget-wide v3, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v7

    const-string v3, "Illegal parameters. Action: %s end time(%d) is smaller than start time(%d)"

    .line 17
    invoke-static {v6, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-wide v1
.end method

.method public isStarting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    return v0
.end method

.method public setEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method

.method public setEvent(Lcom/android/camera/performance/PerformanceManager$Event;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mEvent:Lcom/android/camera/performance/PerformanceManager$Event;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mStartTime:J

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method
