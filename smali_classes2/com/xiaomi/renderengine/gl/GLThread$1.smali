.class public Lcom/xiaomi/renderengine/gl/GLThread$1;
.super Ljava/lang/Object;
.source "GLThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/renderengine/gl/GLThread;->waitDone()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/renderengine/gl/GLThread;

.field public final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/gl/GLThread;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/gl/GLThread$1;->this$0:Lcom/xiaomi/renderengine/gl/GLThread;

    iput-object p2, p0, Lcom/xiaomi/renderengine/gl/GLThread$1;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread$1;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread$1;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
