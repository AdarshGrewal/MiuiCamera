.class public Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "EffectItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/EffectItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectItemPadding"
.end annotation


# instance fields
.field public mIsRTL:Z

.field public marginStart:I

.field public padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->mIsRTL:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->padding:I

    .line 5
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->mIsRTL:Z

    .line 6
    :cond_0
    iput p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->marginStart:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    .line 2
    iget-boolean p3, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->mIsRTL:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget p3, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->padding:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->marginStart:I

    add-int/2addr p2, p3

    goto :goto_0

    :cond_0
    move p2, p4

    :goto_0
    invoke-virtual {p1, p3, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 4
    iget p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->marginStart:I

    iget p3, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->padding:I

    add-int/2addr p2, p3

    goto :goto_1

    :cond_2
    move p2, p4

    :goto_1
    iget p3, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->padding:I

    invoke-virtual {p1, p2, p4, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method