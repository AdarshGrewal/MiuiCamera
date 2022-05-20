.class public final Ljava8/util/stream/Streams$2;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/Streams;->composedClose(Ljava8/util/stream/BaseStream;Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$a:Ljava8/util/stream/BaseStream;

.field public final synthetic val$b:Ljava8/util/stream/BaseStream;


# direct methods
.method public constructor <init>(Ljava8/util/stream/BaseStream;Ljava8/util/stream/BaseStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/Streams$2;->val$a:Ljava8/util/stream/BaseStream;

    iput-object p2, p0, Ljava8/util/stream/Streams$2;->val$b:Ljava8/util/stream/BaseStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava8/util/stream/Streams$2;->val$a:Ljava8/util/stream/BaseStream;

    invoke-interface {v0}, Ljava8/util/stream/BaseStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Ljava8/util/stream/Streams$2;->val$b:Ljava8/util/stream/BaseStream;

    invoke-interface {v0}, Ljava8/util/stream/BaseStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    iget-object v1, p0, Ljava8/util/stream/Streams$2;->val$b:Ljava8/util/stream/BaseStream;

    invoke-interface {v1}, Ljava8/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :catchall_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 5
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_1
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method
