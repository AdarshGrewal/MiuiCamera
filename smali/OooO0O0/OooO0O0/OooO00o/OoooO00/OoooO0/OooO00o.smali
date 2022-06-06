.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooO0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

.field private final synthetic OooO0O0:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooO0/OooO00o;->OooO00o:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooO0/OooO00o;->OooO0O0:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooO0/OooO00o;->OooO00o:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OoooO0/OooO00o;->OooO0O0:F

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->OooO00o(FLandroid/animation/ValueAnimator;)V

    return-void
.end method
