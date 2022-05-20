.class public final Lcom/xiaomi/camera/util/ThreadUtils$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lcom/xiaomi/camera/util/ThreadUtils$BlockingOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/util/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/util/ThreadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/util/ThreadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method
