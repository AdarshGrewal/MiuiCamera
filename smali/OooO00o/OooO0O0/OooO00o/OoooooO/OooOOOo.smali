.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOOo;->OooO00o:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOOo;->OooO00o:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/camera/ui/FocusView;->OooO00o(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
