.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/AdjustAnimationView;

.field private final synthetic OooO0O0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0o0;->OooO00o:Lcom/android/camera/ui/AdjustAnimationView;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0o0;->OooO0O0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0o0;->OooO00o:Lcom/android/camera/ui/AdjustAnimationView;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0oO/OooO00o/OooO0o0;->OooO0O0:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->OooO00o(Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V

    return-void
.end method
