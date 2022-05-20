.class public Lcom/airbnb/lottie/LottieAnimationView$OooO00o;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$OooO00o;->OooO00o(Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO00o(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to load composition."

    .line 3
    invoke-static {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0OO(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to parse composition"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
