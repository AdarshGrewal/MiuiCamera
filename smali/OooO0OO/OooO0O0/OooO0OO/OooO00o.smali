.class public final synthetic LOooO0OO/OooO0O0/OooO0OO/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Landroid/view/View;

.field private final synthetic OooO0O0:Landroid/view/View;

.field private final synthetic OooO0OO:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO0OO/OooO00o;->OooO00o:Landroid/view/View;

    iput-object p2, p0, LOooO0OO/OooO0O0/OooO0OO/OooO00o;->OooO0O0:Landroid/view/View;

    iput-boolean p3, p0, LOooO0OO/OooO0O0/OooO0OO/OooO00o;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO0OO/OooO00o;->OooO00o:Landroid/view/View;

    iget-object v1, p0, LOooO0OO/OooO0O0/OooO0OO/OooO00o;->OooO0O0:Landroid/view/View;

    iget-boolean v2, p0, LOooO0OO/OooO0O0/OooO0OO/OooO00o;->OooO0OO:Z

    invoke-static {v0, v1, v2, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->OooO00o(Landroid/view/View;Landroid/view/View;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
