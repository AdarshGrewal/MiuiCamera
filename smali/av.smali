.class public final synthetic Lav;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lba;

.field public final b:Le;


# direct methods
.method public constructor <init>(Lba;Le;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lav;->a:Lba;

    iput-object p2, p0, Lav;->b:Le;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lav;->a:Lba;

    iget-object v1, p0, Lav;->b:Le;

    :try_start_0
    const-string v2, "LENS_SERVICE_SESSION"

    .line 1
    invoke-interface {v1, v2, v0}, Le;->OooO00o(Ljava/lang/String;Li;)Lg;

    move-result-object v1

    iget-object v2, v0, Lba;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lax;

    .line 2
    invoke-direct {v3, v0, v1}, Lax;-><init>(Lba;Lg;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "LensServiceConnImpl"

    const-string v3, "Failed to create a Lens service session."

    .line 3
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v0, Lba;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lay;

    .line 4
    invoke-direct {v2, v0}, Lay;-><init>(Lba;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
