.class public Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field public mBadgeView:Landroid/widget/ImageView;

.field public mCustomView:Landroid/view/View;

.field public mIconView:Landroid/widget/ImageView;

.field public mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field public mTab:Landroidx/appcompat/app/ActionBar$Tab;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public attach(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 2
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    if-eqz p3, :cond_0

    const p1, 0x800013

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public bindTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public getTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public update()V
    .locals 11

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateCustomTabView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 6
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, -0x2

    if-eqz v3, :cond_3

    .line 10
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v9, :cond_2

    .line 11
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 14
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p0, v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 16
    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 17
    :cond_2
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    if-eqz v4, :cond_7

    .line 22
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 23
    new-instance v3, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 24
    invoke-virtual {v9}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabTextStyle()I

    move-result v9

    invoke-direct {v3, v1, v2, v9}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 26
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 28
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 30
    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 31
    :cond_5
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    .line 34
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    sget v3, Lmiuix/appcompat/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {v1, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x30

    .line 38
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 40
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 41
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    if-le v3, v4, :cond_6

    sub-int/2addr v3, v4

    .line 42
    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 43
    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    goto :goto_1

    .line 46
    :cond_7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 47
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_8
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 50
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method
