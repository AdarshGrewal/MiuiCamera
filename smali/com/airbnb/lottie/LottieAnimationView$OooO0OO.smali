.class public Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOO0;


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
        "LOooO0O0/OooO00o/OooO00o/OooOO0<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;->OooO00o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;->OooO00o(Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO00o(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;->OooO00o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(Lcom/airbnb/lottie/LottieAnimationView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;->OooO00o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(Lcom/airbnb/lottie/LottieAnimationView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;->OooO00o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0(Lcom/airbnb/lottie/LottieAnimationView;)LOooO0O0/OooO00o/OooO00o/OooOO0;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->OooOOO()LOooO0O0/OooO00o/OooO00o/OooOO0;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;->OooO00o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0O0(Lcom/airbnb/lottie/LottieAnimationView;)LOooO0O0/OooO00o/OooO00o/OooOO0;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooOO0;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method
