.class public Lcom/airbnb/lottie/LottieAnimationView$OooO0o$OooO00o;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView$OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/airbnb/lottie/LottieAnimationView$OooO0o;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$OooO0o;
    .locals 2

    .line 2
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;-><init>(Landroid/os/Parcel;Lcom/airbnb/lottie/LottieAnimationView$OooO00o;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$OooO0o$OooO00o;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/airbnb/lottie/LottieAnimationView$OooO0o;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$OooO0o$OooO00o;->newArray(I)[Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    move-result-object p1

    return-object p1
.end method
