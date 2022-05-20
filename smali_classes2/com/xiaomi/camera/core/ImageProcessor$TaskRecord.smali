.class public Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskRecord"
.end annotation


# instance fields
.field public processStartTime:J

.field public taskDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/TaskData;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/xiaomi/camera/core/ImageProcessor;

.field public timestamp:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    .line 3
    iput-wide p4, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->processStartTime:J

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTaskData(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
