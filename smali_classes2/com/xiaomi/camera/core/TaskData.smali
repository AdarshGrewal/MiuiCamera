.class public Lcom/xiaomi/camera/core/TaskData;
.super Ljava/lang/Object;
.source "TaskData.java"


# static fields
.field public static final PROCESS_SESSION_TYPE_2:I = 0x1

.field public static final PROCESS_SESSION_TYPE_DEFAULT:I


# instance fields
.field public mContainsFirstFrame:Z

.field public mDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public mFirstTimestamp:J

.field public mTaskSessionType:I


# direct methods
.method public constructor <init>(Ljava/util/List;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;ZJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/core/TaskData;->mDataBeans:Ljava/util/List;

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/camera/core/TaskData;->mContainsFirstFrame:Z

    .line 4
    iput-wide p3, p0, Lcom/xiaomi/camera/core/TaskData;->mFirstTimestamp:J

    return-void
.end method


# virtual methods
.method public containsFirstFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/TaskData;->mContainsFirstFrame:Z

    return v0
.end method

.method public getDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/TaskData;->mDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getFirstTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/TaskData;->mFirstTimestamp:J

    return-wide v0
.end method

.method public getProcessSessionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/TaskData;->mTaskSessionType:I

    return v0
.end method

.method public setProcessSessionType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/TaskData;->mTaskSessionType:I

    return-void
.end method
