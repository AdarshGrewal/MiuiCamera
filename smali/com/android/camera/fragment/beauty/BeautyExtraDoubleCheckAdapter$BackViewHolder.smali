.class public Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BeautyExtraDoubleCheckAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackViewHolder"
.end annotation


# instance fields
.field public itemView:Landroid/view/View;

.field public mAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

.field public mBase:Lcom/android/camera/ui/ColorImageView;

.field public mText:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p3, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0a0258

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->mText:Landroid/widget/TextView;

    const p1, 0x7f0a0256

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    .line 7
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->onItemHolderClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setDataToView(Lcom/android/camera/data/data/TypeItem;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f080570

    const v3, 0x7f060039

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f08056f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060048

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v3}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v3

    if-ne p2, v3, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getImageResource()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$BackViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    return-void
.end method
