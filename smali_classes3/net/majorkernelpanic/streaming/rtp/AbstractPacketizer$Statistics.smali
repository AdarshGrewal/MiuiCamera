.class public Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;
.super Ljava/lang/Object;
.source "AbstractPacketizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
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
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2bc

    .line 2
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    .line 5
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    .line 6
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    const-wide v1, 0x2540be400L

    .line 7
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->period:J

    .line 8
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2bc

    .line 10
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    .line 13
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    .line 14
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    const-wide v1, 0x2540be400L

    .line 15
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->period:J

    .line 16
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    .line 17
    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->count:I

    int-to-long p1, p2

    .line 18
    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->period:J

    return-void
.end method


# virtual methods
.method public average()J
    .locals 4

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    float-to-long v0, v0

    .line 2
    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    return-wide v0
.end method

.method public push(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    .line 2
    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->period:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_2

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 5
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    if-eqz v0, :cond_0

    iget-wide v6, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_1

    .line 6
    :cond_0
    iput-wide v4, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    .line 7
    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    .line 8
    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    .line 9
    :cond_1
    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    sub-long/2addr v4, v2

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    sub-long/2addr v4, v2

    add-long/2addr p1, v4

    .line 10
    :cond_2
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    long-to-float p1, p1

    .line 12
    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    goto :goto_0

    .line 13
    :cond_3
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    mul-float/2addr v0, v1

    long-to-float p1, p1

    add-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float p2, v1, p1

    div-float/2addr v0, p2

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    .line 14
    iget p2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->count:I

    int-to-float p2, p2

    cmpg-float p2, v1, p2

    if-gez p2, :cond_4

    add-float/2addr v1, p1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    :cond_4
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->initoffset:Z

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->q:F

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->m:F

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->c:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->elapsed:J

    .line 4
    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->start:J

    .line 5
    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->duration:J

    return-void
.end method
