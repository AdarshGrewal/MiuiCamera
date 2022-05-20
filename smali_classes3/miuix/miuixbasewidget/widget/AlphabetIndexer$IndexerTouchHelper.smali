.class public Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndexerTouchHelper"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 2
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .locals 3

    .line 1
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 2
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p2, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$600(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    .line 2
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$700(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Landroid/widget/SectionIndexer;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$800(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;ILandroid/widget/SectionIndexer;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return p2
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    .line 3
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
