.class public LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;ILjava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "LOooO00o/OooO00o/OooO00o/OooOOO<",
        "LOooO00o/OooO00o/OooO00o/OooO0o;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/ref/WeakReference;

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;->OooO00o:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;->OooO0O0:Landroid/content/Context;

    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;->OooO0OO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()LOooO00o/OooO00o/OooO00o/OooOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOOO<",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;->OooO00o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;->OooO0O0:Landroid/content/Context;

    .line 4
    :goto_0
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;->OooO0OO:I

    invoke-static {v0, v1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(Landroid/content/Context;I)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0o0;->call()LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    return-object v0
.end method
