.class public Lcom/android/camera/log/PerformanceManager$Take;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/log/PerformanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Take"
.end annotation


# instance fields
.field public mAction:Ljava/lang/String;

.field public mEndTime:J

.field public mEvent:Lcom/android/camera/log/PerformanceManager$Event;

.field public mIsStarting:Z

.field public mStartTime:J

.field public final synthetic this$0:Lcom/android/camera/log/PerformanceManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/log/PerformanceManager;Lcom/android/camera/log/PerformanceManager$Event;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->this$0:Lcom/android/camera/log/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/camera/log/PerformanceManager$Event;->UNKNOWN:Lcom/android/camera/log/PerformanceManager$Event;

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    iput-object p2, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/log/PerformanceManager;Lcom/android/camera/log/PerformanceManager$Event;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->this$0:Lcom/android/camera/log/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/camera/log/PerformanceManager$Event;->UNKNOWN:Lcom/android/camera/log/PerformanceManager$Event;

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    iput-object p2, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    iput-wide p3, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/log/PerformanceManager;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->this$0:Lcom/android/camera/log/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/camera/log/PerformanceManager$Event;->UNKNOWN:Lcom/android/camera/log/PerformanceManager$Event;

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    iput-object p2, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/log/PerformanceManager;Ljava/lang/String;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->this$0:Lcom/android/camera/log/PerformanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/camera/log/PerformanceManager$Event;->UNKNOWN:Lcom/android/camera/log/PerformanceManager$Event;

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    iput-object p2, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEndTime:J

    return-wide v0
.end method

.method public getEvent()Lcom/android/camera/log/PerformanceManager$Event;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    return-wide v0
.end method

.method public getTakeTime()J
    .locals 10

    iget-boolean v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/log/PerformanceManager;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    :goto_0
    aput-object v5, v4, v3

    const-string v3, "%s is not ended"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    iget-wide v5, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEndTime:J

    iget-wide v7, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    sub-long/2addr v5, v7

    cmp-long v0, v5, v1

    const/4 v7, 0x2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/log/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Event: %s takes %d ms"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/camera/log/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    aput-object v7, v2, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Action: %s takes %d ms"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-wide v1, v5

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/camera/log/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    iget-wide v8, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEndTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v4

    iget-wide v3, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v7

    const-string v3, "Illegal parameters. Event: %s end time(%d) is smaller than start time(%d)"

    invoke-static {v6, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/camera/log/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/log/PerformanceManager$Take;->mAction:Ljava/lang/String;

    aput-object v8, v5, v3

    iget-wide v8, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEndTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v4

    iget-wide v3, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v7

    const-string v3, "Illegal parameters. Action: %s end time(%d) is smaller than start time(%d)"

    invoke-static {v6, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-wide v1
.end method

.method public isStarting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    return v0
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEndTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method

.method public setEvent(Lcom/android/camera/log/PerformanceManager$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mEvent:Lcom/android/camera/log/PerformanceManager$Event;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mStartTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/log/PerformanceManager$Take;->mIsStarting:Z

    return-void
.end method
