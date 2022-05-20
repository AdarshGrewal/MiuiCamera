.class public LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oO;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOOO;
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
.field public final synthetic OooO00o:Lorg/json/JSONObject;

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oO;->OooO00o:Lorg/json/JSONObject;

    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oO;->OooO0O0:Ljava/lang/String;

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
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oO;->OooO00o:Lorg/json/JSONObject;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oO;->OooO0O0:Ljava/lang/String;

    invoke-static {v0, v1}, LOooO00o/OooO00o/OooO00o/OooO0oO;->OooO0O0(Lorg/json/JSONObject;Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOOO;

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
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oO$OooO0oO;->call()LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    return-object v0
.end method
