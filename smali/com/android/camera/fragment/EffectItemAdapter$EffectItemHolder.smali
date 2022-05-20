.class public abstract Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EffectItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/EffectItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EffectItemHolder"
.end annotation


# instance fields
.field public mEffectIndex:I

.field public mSelectedIndicator:Landroid/widget/ImageView;

.field public mTextView:Lcom/android/camera/ui/ScrollTextview;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0148

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ScrollTextview;

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mTextView:Lcom/android/camera/ui/ScrollTextview;

    return-void
.end method


# virtual methods
.method public bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->getRenderId(ILcom/android/camera/data/data/ComponentDataItem;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mEffectIndex:I

    .line 2
    iget p1, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-lez p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mTextView:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mTextView:Lcom/android/camera/ui/ScrollTextview;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public getEglSurface()Lcom/android/camera/ui/gl/EglWindowSurface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderId(ILcom/android/camera/data/data/ComponentDataItem;)I
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
