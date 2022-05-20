.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCloseAnimator"
.end annotation


# instance fields
.field public mCloseAnimator:Landroid/animation/Animator;

.field public mCurrentAnimator:Landroid/animation/Animator;

.field public mIsOpen:Z

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->initialize()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->cancel()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mIsOpen:Z

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public initialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    const-string v1, "TranslationY"

    .line 4
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public open()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->cancel()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mIsOpen:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
