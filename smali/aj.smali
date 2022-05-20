.class public final Laj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lak;


# direct methods
.method public constructor <init>(Lak;)V
    .locals 0

    iput-object p1, p0, Laj;->a:Lak;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laj;->a:Lak;

    .line 1
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Laj;->a:Lak;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Laj;->a:Lak;

    .line 3
    sget v1, Lbh;->f:I

    .line 4
    invoke-virtual {v0, v1, v1}, Lak;->OooO00o(II)V

    :cond_0
    return-void
.end method
