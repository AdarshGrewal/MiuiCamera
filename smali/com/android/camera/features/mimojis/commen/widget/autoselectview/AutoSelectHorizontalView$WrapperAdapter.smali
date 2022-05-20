.class public Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AutoSelectHorizontalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapperAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter$HeaderFooterViewHolder;
    }
.end annotation


# static fields
.field public static final HEADER_FOOTER_TYPE:I = -0x1


# instance fields
.field public adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public context:Landroid/content/Context;

.field public headerFooterWidth:I

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->this$0:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    iput-object p3, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$702(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->context:Landroid/content/Context;

    return-object p1
.end method

.method private isHeaderOrFooter(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getHeaderFooterWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->headerFooterWidth:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->isHeaderOrFooter(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->headerFooterWidth:I

    .line 3
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->headerFooterWidth:I

    invoke-direct {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance p1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter$HeaderFooterViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter$HeaderFooterViewHolder;-><init>(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;Landroid/view/View;)V

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
