.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

.field private final synthetic OooO0O0:Lcom/android/camera/ui/AdjustAnimationView;

.field private final synthetic OooO0OO:Lcom/android/camera/ui/AnimationView;

.field private final synthetic OooO0Oo:Landroid/view/View;

.field private final synthetic OooO0o:F

.field private final synthetic OooO0o0:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO00o:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0O0:Lcom/android/camera/ui/AdjustAnimationView;

    iput-object p3, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0OO:Lcom/android/camera/ui/AnimationView;

    iput-object p4, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0Oo:Landroid/view/View;

    iput p5, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0o0:F

    iput p6, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0o:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO00o:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0O0:Lcom/android/camera/ui/AdjustAnimationView;

    iget-object v2, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0OO:Lcom/android/camera/ui/AnimationView;

    iget-object v3, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0Oo:Landroid/view/View;

    iget v4, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0o0:F

    iget v5, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;->OooO0o:F

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->OooO00o(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V

    return-void
.end method
