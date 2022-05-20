.class public Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "SlidingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingLinearLayout;->removeViewsSliding(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

.field public final synthetic val$count:I

.field public final synthetic val$end:I

.field public final synthetic val$start:I

.field public final synthetic val$transientCount:I


# direct methods
.method public constructor <init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iput p2, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$transientCount:I

    iput p3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$end:I

    iput p4, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$start:I

    iput p5, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$count:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$transientCount:I

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$end:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$start:I

    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$count:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_0
    return-void
.end method
