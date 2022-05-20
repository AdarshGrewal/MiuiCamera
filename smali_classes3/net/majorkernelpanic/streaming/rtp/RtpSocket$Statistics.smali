.class public Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;
.super Ljava/lang/Object;
.source "RtpSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtp/RtpSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Statistics"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Statistics"


# instance fields
.field public c:I

.field public count:I

.field public duration:J

.field public elapsed:J

.field public initoffset:Z

.field public m:F

.field public period:J

.field public q:F

.field public start:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 2
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->c:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->m:F

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->q:F

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->elapsed:J

    .line 5
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->start:J

    .line 6
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->duration:J

    const-wide v1, 0x165a0bc00L

    .line 7
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->period:J

    .line 8
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->initoffset:Z

    .line 9
    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->count:I

    const-wide/32 v0, 0xf4240

    mul-long/2addr p2, v0

    .line 10
    iput-wide p2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->period:J

    return-void
.end method


# virtual methods
.method public average()J
    .locals 5

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->m:F

    float-to-long v0, v0

    const-wide/32 v2, 0x1e8480

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method public push(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->duration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->duration:J

    .line 2
    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->elapsed:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->elapsed:J

    .line 3
    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->period:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_2

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->elapsed:J

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 6
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->initoffset:Z

    if-eqz v0, :cond_0

    iget-wide v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->start:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_1

    .line 7
    :cond_0
    iput-wide v4, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->start:J

    .line 8
    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->duration:J

    .line 9
    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->initoffset:Z

    .line 10
    :cond_1
    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->start:J

    sub-long/2addr v4, v2

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->duration:J

    sub-long/2addr v4, v2

    sub-long/2addr p1, v4

    .line 11
    :cond_2
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->c:I

    const/16 v2, 0x28

    if-ge v0, v2, :cond_3

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->c:I

    long-to-float p1, p1

    .line 13
    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->m:F

    goto :goto_0

    .line 14
    :cond_3
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->m:F

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->q:F

    mul-float/2addr v0, v1

    long-to-float p1, p1

    add-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float p2, v1, p1

    div-float/2addr v0, p2

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->m:F

    .line 15
    iget p2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->count:I

    int-to-float p2, p2

    cmpg-float p2, v1, p2

    if-gez p2, :cond_4

    add-float/2addr v1, p1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->q:F

    :cond_4
    :goto_0
    return-void
.end method
