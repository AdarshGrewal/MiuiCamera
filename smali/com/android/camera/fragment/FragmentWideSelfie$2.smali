.class public Lcom/android/camera/fragment/FragmentWideSelfie$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentWideSelfie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentWideSelfie;->setShootingUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentWideSelfie;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$2;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$2;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$100(Lcom/android/camera/fragment/FragmentWideSelfie;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$2;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$100(Lcom/android/camera/fragment/FragmentWideSelfie;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
