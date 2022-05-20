.class public Lcom/arcsoft/avatar2/recoder/FrameQueue;
.super Ljava/lang/Object;
.source "FrameQueue.java"


# static fields
.field public static final a:Ljava/lang/String; = "FrameQueue"


# instance fields
.field public b:Lcom/arcsoft/avatar2/recoder/FrameItem;

.field public c:Lcom/arcsoft/avatar2/recoder/FrameItem;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/recoder/FrameItem;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/arcsoft/avatar2/recoder/FrameItem;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    .line 3
    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public addEmptyFrameForConsumer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    :cond_0
    return-void
.end method

.method public addFrameForProducer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    :cond_0
    return-void
.end method

.method public deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V
    .locals 4

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iget-wide v2, p1, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    iget-wide v2, p1, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    invoke-static {v2, v3}, Landroid/opengl/GLES30;->glDeleteSync(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    :goto_0
    iput-wide v0, p1, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 5
    :goto_2
    iput-wide v0, p1, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    throw v2
.end method

.method public getFrameForConsumer()Lcom/arcsoft/avatar2/recoder/FrameItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrameForProducer()Lcom/arcsoft/avatar2/recoder/FrameItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(IIIZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->unInit()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_0

    .line 2
    new-instance v2, Lcom/arcsoft/avatar2/recoder/FrameItem;

    invoke-direct {v2}, Lcom/arcsoft/avatar2/recoder/FrameItem;-><init>()V

    .line 3
    iput-boolean v1, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mIsEmpty:Z

    .line 4
    iput-boolean v1, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mIsInited:Z

    .line 5
    iput v0, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFrameIndex:I

    .line 6
    new-instance v1, Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    invoke-direct {v1}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;-><init>()V

    iput-object v1, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    .line 7
    invoke-virtual {v1, p2, p3, p4}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->init(IIZ)V

    .line 8
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->f:Z

    return-void
.end method

.method public isIsInited()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->f:Z

    return v0
.end method

.method public queueSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public unInit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unInit()V

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    invoke-virtual {p0, v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    .line 5
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->b:Lcom/arcsoft/avatar2/recoder/FrameItem;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unInit()V

    .line 8
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    invoke-virtual {p0, v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    .line 9
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    iput-object v1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    .line 10
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->c:Lcom/arcsoft/avatar2/recoder/FrameItem;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar2/recoder/FrameItem;

    .line 13
    iget-object v3, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v3}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unInit()V

    .line 15
    invoke-virtual {p0, v2}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    .line 16
    iput-object v1, v2, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/recoder/FrameItem;

    if-eqz v0, :cond_4

    .line 20
    iget-object v2, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v2}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unInit()V

    .line 22
    invoke-virtual {p0, v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    .line 23
    iput-object v1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    goto :goto_1

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/FrameQueue;->f:Z

    return-void
.end method
