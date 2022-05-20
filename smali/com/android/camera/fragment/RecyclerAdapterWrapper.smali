.class public Lcom/android/camera/fragment/RecyclerAdapterWrapper;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final FOOTER_VIEW_TYPE:I = -0x7d0

.field public static final HEADER_VIEW_TYPE:I = -0x3e8


# instance fields
.field public final mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mBaseHolderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mFooters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public o:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 6
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 7
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 8
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 9
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    goto :goto_0

    .line 10
    :cond_0
    iput-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    goto :goto_0

    .line 11
    :cond_1
    iput-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    new-instance v0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;-><init>(Lcom/android/camera/fragment/RecyclerAdapterWrapper;)V

    iput-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->o:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method private isFooter(I)Z
    .locals 2

    const/16 v0, -0x7d0

    if-lt p1, v0, :cond_0

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHeader(I)Z
    .locals 2

    const/16 v0, -0x3e8

    if-lt p1, v0, :cond_0

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addFooter(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You can\'t have a null footer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeader(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You can\'t have a null header!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->o:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method public getFooter(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFooterCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeader(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit16 p1, p1, -0x3e8

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_1
    add-int/lit16 p1, p1, -0x7d0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public isContainsFooter(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You can\'t have a null footer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isContainsHeader(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You can\'t have a null footer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit16 p2, p2, 0x3e8

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4
    new-instance p2, Lcom/android/camera/fragment/RecyclerAdapterWrapper$2;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/RecyclerAdapterWrapper$2;-><init>(Lcom/android/camera/fragment/RecyclerAdapterWrapper;Landroid/view/View;)V

    return-object p2

    .line 5
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit16 p2, p2, 0x7d0

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 8
    new-instance p2, Lcom/android/camera/fragment/RecyclerAdapterWrapper$3;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/RecyclerAdapterWrapper$3;-><init>(Lcom/android/camera/fragment/RecyclerAdapterWrapper;Landroid/view/View;)V

    return-object p2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBase:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mBaseHolderClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public removeAllFooter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeAllHeader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeFooter(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You can\'t have a null header!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeHeader(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You can\'t have a null header!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
