.class public Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskSessionWrapper"
.end annotation


# instance fields
.field public mFormat:Lcom/xiaomi/engine/BufferFormat;

.field public mTaskSession:Lcom/xiaomi/engine/TaskSession;


# direct methods
.method public constructor <init>(Lcom/xiaomi/engine/TaskSession;Lcom/xiaomi/engine/BufferFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->mFormat:Lcom/xiaomi/engine/BufferFormat;

    return-void
.end method


# virtual methods
.method public getBufferFormat()Lcom/xiaomi/engine/BufferFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->mFormat:Lcom/xiaomi/engine/BufferFormat;

    return-object v0
.end method

.method public getTaskSession()Lcom/xiaomi/engine/TaskSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    return-object v0
.end method
