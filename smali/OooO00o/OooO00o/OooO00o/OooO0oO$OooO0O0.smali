.class public LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0O0;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOO0;


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
        "LOooO00o/OooO00o/OooO00o/OooOO0<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0O0;->OooO00o(Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO00o(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
