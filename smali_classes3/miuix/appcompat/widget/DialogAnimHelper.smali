.class public Lmiuix/appcompat/widget/DialogAnimHelper;
.super Ljava/lang/Object;
.source "DialogAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/DialogAnimHelper$WeakRefListener;,
        Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;
    }
.end annotation


# static fields
.field public static final DAMPING:F = 0.85f

.field public static final DISMISS_DURATION:I = 0xc8

.field public static final DURATION:I = 0x12c

.field public static final MARGIN:I = 0xf

.field public static final RESPONSE:F = 0.66f

.field public static final TAG:Ljava/lang/String; = "DialogAnimHelper"

.field public static final TAG_HIDE:Ljava/lang/String; = "hide"

.field public static final TAG_SHOW:Ljava/lang/String; = "show"

.field public static sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;Landroid/view/View;ZLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p2, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0xf

    if-ge p2, v0, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    invoke-static {p0, p3}, Lmiuix/appcompat/widget/DialogAnimHelper;->relayoutView(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->relayoutView(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$100(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeAnim(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static synthetic access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lmiuix/appcompat/widget/DialogAnimHelper;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static cancelAnimator()V
    .locals 1

    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public static changeHeight(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x50

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$WeakRefListener;)V
    .locals 4

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public static executeAnim(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 6

    invoke-static {p0}, Lmiuix/appcompat/widget/DialogAnimHelper;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-static {v0}, Lmiuix/appcompat/widget/DialogAnimHelper;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lmiuix/appcompat/widget/DialogAnimHelper;->changeHeight(Landroid/view/View;I)V

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p2, v1, [F

    fill-array-data p2, :array_0

    invoke-static {v3, p2}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, LOooO0Oo/OooO0O0/OooO0OO/OooO00o;

    invoke-direct {p2, p0, v0, p3}, LOooO0Oo/OooO0O0/OooO0OO/OooO00o;-><init>(Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lmiuix/appcompat/widget/DialogAnimHelper$3;

    invoke-direct {p2, p0, p4}, Lmiuix/appcompat/widget/DialogAnimHelper$3;-><init>(Landroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lmiuix/appcompat/widget/DialogAnimHelper;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-void

    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f28f5c3    # 0.66f
    .end array-data
.end method

.method public static executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmiuix/appcompat/widget/DialogAnimHelper$WeakRefListener;

    invoke-direct {v0, p0, p2}, Lmiuix/appcompat/widget/DialogAnimHelper$WeakRefListener;-><init>(Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    invoke-static {p0, v0}, Lmiuix/appcompat/widget/DialogAnimHelper;->dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$WeakRefListener;)V

    invoke-static {p1}, Lmiuix/appcompat/widget/DimAnimator;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method public static executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lmiuix/appcompat/widget/DialogAnimHelper$1;

    invoke-direct {v0, p2, p0, p3}, Lmiuix/appcompat/widget/DialogAnimHelper$1;-><init>(ZLandroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    new-instance v0, Lmiuix/appcompat/widget/DialogAnimHelper$2;

    invoke-direct {v0, p2, p3}, Lmiuix/appcompat/widget/DialogAnimHelper$2;-><init>(ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    invoke-static {p1}, Lmiuix/appcompat/widget/DimAnimator;->show(Landroid/view/View;)V

    return-void
.end method

.method public static getHolderAnimView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$id;->dialog_anim_holder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static relayoutView(Landroid/view/View;I)V
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
