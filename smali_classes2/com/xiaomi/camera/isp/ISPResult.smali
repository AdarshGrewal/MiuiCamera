.class public Lcom/xiaomi/camera/isp/ISPResult;
.super Ljava/lang/Object;
.source "ISPResult.java"


# instance fields
.field public mAnchorTimestamp:J

.field public mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchorTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/isp/ISPResult;->mAnchorTimestamp:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/isp/ISPResult;->mTimestamp:J

    return-wide v0
.end method

.method public setAnchorTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/camera/isp/ISPResult;->mAnchorTimestamp:J

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/camera/isp/ISPResult;->mTimestamp:J

    return-void
.end method
