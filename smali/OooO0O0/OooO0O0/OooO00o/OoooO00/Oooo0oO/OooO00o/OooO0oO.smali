.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/AdjustAnimationView;

.field private final synthetic OooO0O0:Lcom/android/camera/ui/AnimationView;

.field private final synthetic OooO0OO:Landroid/view/View;

.field private final synthetic OooO0Oo:F

.field private final synthetic OooO0o0:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO00o:Lcom/android/camera/ui/AdjustAnimationView;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO0O0:Lcom/android/camera/ui/AnimationView;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO0OO:Landroid/view/View;

    iput p4, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO0Oo:F

    iput p5, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO0o0:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO00o:Lcom/android/camera/ui/AdjustAnimationView;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO0O0:Lcom/android/camera/ui/AnimationView;

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO0OO:Landroid/view/View;

    iget v3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO0Oo:F

    iget v4, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0oO;->OooO0o0:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->OooO00o(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V

    return-void
.end method
