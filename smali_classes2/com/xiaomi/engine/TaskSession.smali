.class public Lcom/xiaomi/engine/TaskSession;
.super Ljava/lang/Object;
.source "TaskSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/engine/TaskSession$FrameCallback;,
        Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "TaskSession"


# instance fields
.field public mHasDestroyed:Z

.field public mHasFlushed:Z

.field public final mSessionHandle:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    return-void
.end method

.method private destroy()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/engine/TaskSession;->mHasDestroyed:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has been destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->destroySession(J)I

    move-result v0

    .line 4
    sget-object v1, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/engine/TaskSession;->mHasDestroyed:Z

    :cond_1
    return-void
.end method

.method private flush()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/engine/TaskSession;->mHasFlushed:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has been flushed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->flush(J)I

    move-result v0

    .line 4
    sget-object v1, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v2, "flush"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/engine/TaskSession;->mHasFlushed:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/engine/TaskSession;->flush()V

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/engine/TaskSession;->destroy()V

    .line 3
    sget-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session has been closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/engine/TaskSession;->close()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public flushCurrentTask()V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->flush(J)I

    move-result v0

    .line 2
    sget-object v1, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v2, "flushCurrentTask"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSessionHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    return-wide v0
.end method

.method public preProcess(Lcom/xiaomi/engine/PreProcessData;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1, p1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->preProcess(JLcom/xiaomi/engine/PreProcessData;)I

    return-void
.end method

.method public processFrame(Lcom/xiaomi/engine/FrameData;Lcom/xiaomi/engine/TaskSession$FrameCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/engine/FrameData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->processFrame(JLcom/xiaomi/engine/FrameData;Lcom/xiaomi/engine/TaskSession$FrameCallback;)I

    move-result p1

    .line 3
    sget-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v1, "processFrame"

    invoke-static {p1, v0, v1}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "onProcessStarted"

    .line 4
    invoke-interface {p2, p1, v1, v0}, Lcom/xiaomi/engine/TaskSession$FrameCallback;->onFrameProcessed(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public processFrameWithSync(Ljava/util/List;Landroid/media/Image;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/engine/FrameData;",
            ">;",
            "Landroid/media/Image;",
            "I)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v3, "processFrameWithSync: E"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-wide v2, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v2, v3, p1, p2, p3}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->processFrameWithSync(JLjava/util/List;Landroid/media/Image;I)I

    move-result p1

    .line 4
    sget-object p2, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrameWithSync: X. cost: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
