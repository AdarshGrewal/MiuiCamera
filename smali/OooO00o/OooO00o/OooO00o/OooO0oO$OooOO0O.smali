.class public LOooO00o/OooO00o/OooO00o/OooO0oO$OooOO0O;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/util/concurrent/Callable;)LOooO00o/OooO00o/OooO00o/OooOOOO;
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
.field public final synthetic OooO00o:LOooO00o/OooO00o/OooO00o/OooO0o;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO0o;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooOO0O;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO0o;

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
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOOO;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooOO0O;->OooO00o:LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Object;)V

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
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooOO0O;->call()LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    return-object v0
.end method
