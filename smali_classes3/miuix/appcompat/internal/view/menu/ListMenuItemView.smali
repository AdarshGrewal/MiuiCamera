.class public Lmiuix/appcompat/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;


# instance fields
.field public mBackground:Landroid/graphics/drawable/Drawable;

.field public mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public mContext:Landroid/content/Context;

.field public mForceShowIcon:Z

.field public mIconView:Landroidx/appcompat/widget/AppCompatImageView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field public mPreserveIconSpacing:Z

.field public mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

.field public mRelativeLayout:Landroid/view/View;

.field public mShortcutView:Landroid/widget/TextView;

.field public mTextAppearance:I

.field public mTextAppearanceContext:Landroid/content/Context;

.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    .line 3
    sget-object v0, Lmiuix/appcompat/R$styleable;->MenuView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    sget p3, Lmiuix/appcompat/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 5
    sget p3, Lmiuix/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 6
    sget p3, Lmiuix/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 7
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_menu_item_checkbox:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private insertIconView()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_menu_item_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_menu_item_radio:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 3
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p2

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    invoke-virtual {p0, p2, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 6
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    sget v0, Lmiuix/appcompat/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 4
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 6
    :cond_0
    sget v0, Lmiuix/appcompat/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRelativeLayout:Landroid/view/View;

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 5
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 5
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-nez v0, :cond_3

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 9
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 12
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_7

    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 18
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mRadioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 7
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mCheckBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    return-void

    .line 4
    :cond_3
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v2, :cond_4

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->insertIconView()V

    :cond_4
    if-nez p1, :cond_6

    .line 6
    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 8
    :cond_6
    :goto_2
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mIconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setShortcut(ZC)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    if-nez p1, :cond_1

    .line 2
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_1
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
