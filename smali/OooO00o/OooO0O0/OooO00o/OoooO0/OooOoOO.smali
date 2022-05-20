.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoOO;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

    iput p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoOO;->OooO0O0:I

    iput p3, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoOO;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoOO;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

    iget v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoOO;->OooO0O0:I

    iget v2, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOoOO;->OooO0OO:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/fragment/FragmentMainContent;->OooO00o(IILandroid/animation/ValueAnimator;)V

    return-void
.end method
