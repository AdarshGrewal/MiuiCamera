.class public Lorg/jcodec/containers/mp4/boxes/Edit;
.super Ljava/lang/Object;
.source "Edit.java"


# instance fields
.field public duration:J

.field public mediaTime:J

.field public rate:F


# direct methods
.method public constructor <init>(JJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->duration:J

    .line 3
    iput-wide p3, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    .line 4
    iput p5, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->rate:F

    return-void
.end method

.method public static createEdit(Lorg/jcodec/containers/mp4/boxes/Edit;)Lorg/jcodec/containers/mp4/boxes/Edit;
    .locals 7

    .line 1
    new-instance v6, Lorg/jcodec/containers/mp4/boxes/Edit;

    iget-wide v1, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->duration:J

    iget-wide v3, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    iget v5, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->rate:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/jcodec/containers/mp4/boxes/Edit;-><init>(JJF)V

    return-object v6
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->duration:J

    return-wide v0
.end method

.method public getMediaTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    return-wide v0
.end method

.method public getRate()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->rate:F

    return v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->duration:J

    return-void
.end method

.method public setMediaTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    return-void
.end method

.method public shift(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    return-void
.end method
