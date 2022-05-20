.class public Lcom/android/camera/dualvideo/render/DualVideoTimer;
.super Ljava/lang/Object;
.source "DualVideoTimer.java"


# instance fields
.field public mDuration:J

.field public mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(J)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/dualvideo/render/DualVideoTimer;->mStartTime:J

    .line 2
    iput-wide p1, p0, Lcom/android/camera/dualvideo/render/DualVideoTimer;->mDuration:J

    return-void
.end method

.method public isValid()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/dualvideo/render/DualVideoTimer;->mStartTime:J

    sub-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcom/android/camera/dualvideo/render/DualVideoTimer;->mDuration:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
