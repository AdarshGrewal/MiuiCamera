.class public Lmiuix/slidingwidget/widget/SlidingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SlidingLinearLayout.java"


# instance fields
.field public final preAddViewPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public final preLayout:[I

.field public final preRemoveViewPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private preAddView()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private preRemoveView(II)V
    .locals 7

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-lt v1, p1, :cond_0

    add-int v3, p1, p2

    if-lt v1, v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 8
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private preRemoveView(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq p1, v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 4
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private show(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    const-wide/16 v2, 0x1

    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    const-wide/16 v2, 0x64

    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method public addViewSliding(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 6
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 9
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_1

    .line 4
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v2, v2, v5

    sub-int v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v7, v7, v3

    sub-int v7, v7, p5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v2, v7, :cond_0

    :goto_0
    move v2, v5

    goto :goto_1

    :cond_0
    move v2, v6

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v2, v2, v6

    sub-int v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v7, v7, v4

    sub-int v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v2, v7, :cond_0

    goto :goto_0

    :goto_1
    move v7, v6

    :goto_2
    if-ge v7, v1, :cond_c

    .line 6
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7
    iget-object v9, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    const-string v10, "end"

    const-string v11, "start"

    const/16 v12, 0x8

    const-wide/16 v13, 0x0

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 8
    iget-object v9, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    if-eqz v9, :cond_5

    .line 9
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v12, :cond_5

    .line 10
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v15

    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v15, v3

    if-nez v3, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v15, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v3, v3, v15

    if-eqz v3, :cond_3

    :cond_2
    if-nez v2, :cond_3

    .line 11
    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v15

    sub-float/2addr v3, v15

    .line 12
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v15

    sub-float/2addr v9, v15

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v15, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v3, v3, v15

    if-nez v3, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v3, v3, v9

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    .line 14
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v9, v3, v6

    sub-int v9, v9, p2

    int-to-float v9, v9

    .line 15
    aget v3, v3, v5

    sub-int v3, v3, p3

    int-to-float v3, v3

    move/from16 v17, v9

    move v9, v3

    move/from16 v3, v17

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 16
    :goto_3
    new-instance v15, Lmiuix/animation/controller/AnimState;

    invoke-direct {v15, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    move/from16 v16, v7

    float-to-double v6, v3

    .line 17
    invoke-virtual {v15, v4, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v6, v9

    .line 18
    invoke-virtual {v3, v4, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    .line 19
    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 20
    invoke-virtual {v4, v6, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 21
    invoke-virtual {v4, v6, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    new-array v6, v5, [Landroid/view/View;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    .line 22
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v6

    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v6

    invoke-interface {v6, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v6

    new-array v9, v7, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v6, v3, v4, v9}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_4

    :cond_5
    move/from16 v16, v7

    .line 23
    :goto_4
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move/from16 v16, v7

    .line 24
    :goto_5
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 25
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-eqz v3, :cond_a

    .line 26
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v12, :cond_a

    .line 27
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v4, v4, v6

    if-nez v4, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_8

    :cond_7
    if-nez v2, :cond_8

    .line 28
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v6

    sub-float v15, v4, v6

    .line 29
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_6

    .line 30
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v4, v4, v6

    if-nez v4, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v4, v3

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 31
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    const/4 v4, 0x0

    aget v6, v3, v4

    sub-int v6, v6, p2

    int-to-float v15, v6

    .line 32
    aget v3, v3, v5

    sub-int v3, v3, p3

    int-to-float v3, v3

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 33
    :goto_6
    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v11, v15

    .line 34
    invoke-virtual {v4, v6, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v11, v3

    .line 35
    invoke-virtual {v4, v6, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    .line 36
    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 37
    invoke-virtual {v4, v6, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 38
    invoke-virtual {v4, v6, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    new-array v6, v5, [Landroid/view/View;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    .line 39
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v6

    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v6

    invoke-interface {v6, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v6

    new-array v9, v7, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v6, v3, v4, v9}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 40
    :cond_a
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v7, v16, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 41
    :cond_c
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 42
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 43
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 44
    aput p3, v1, v5

    const/4 v2, 0x2

    .line 45
    aput p4, v1, v2

    const/4 v2, 0x3

    .line 46
    aput p5, v1, v2

    :cond_d
    return-void
.end method

.method public removeViewSliding(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    const-wide/16 v3, 0x1

    invoke-interface {v1, v3, v4}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array v3, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;

    invoke-direct {v5, p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;Landroid/view/View;)V

    aput-object v5, v0, v2

    invoke-virtual {v4, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v1, v3}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public removeViewSlidingAt(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(Landroid/view/View;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;

    invoke-direct {v5, p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;I)V

    aput-object v5, v1, v3

    invoke-virtual {v4, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public removeViewsSliding(II)V
    .locals 15

    .line 1
    invoke-direct/range {p0 .. p2}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(II)V

    add-int v6, p1, p2

    move/from16 v7, p1

    :goto_0
    if-ge v7, v6, :cond_1

    move-object v8, p0

    .line 2
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    .line 4
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    move-result-object v10

    new-array v11, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v12, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v12}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v13, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v14, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;

    move-object v0, v14

    move-object v1, p0

    move v2, v7

    move v3, v6

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;IIII)V

    aput-object v14, v13, v9

    invoke-virtual {v12, v13}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v11, v9

    invoke-interface {v10, v11}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v8, p0

    return-void
.end method
