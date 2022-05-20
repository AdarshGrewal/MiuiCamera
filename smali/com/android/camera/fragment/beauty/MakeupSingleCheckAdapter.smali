.class public Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MakeupSingleCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MakeupSingleCheckAdapter"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDegree:I

.field public mPositionFirstItem:I

.field public mPositionLastItem:I

.field public mPreSelectedItem:I

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSelectedItem:I

.field public mSingleCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSelectedItem:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPreSelectedItem:I

    .line 4
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPositionFirstItem:I

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPositionLastItem:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;II)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSelectedItem:I

    .line 10
    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPreSelectedItem:I

    .line 11
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    .line 13
    iput p3, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPositionFirstItem:I

    .line 14
    iput p4, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPositionLastItem:I

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSelectedItem:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSelectedItem:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->normalItem(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPreSelectedItem:I

    return p0
.end method

.method public static synthetic access$402(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPreSelectedItem:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    return-object p0
.end method

.method private normalItem(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPositionFirstItem:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mPositionLastItem:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->onBindViewHolder(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->onBindViewHolder(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;I)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/TypeItem;

    .line 4
    iget-boolean v1, v0, Lcom/android/camera/data/data/TypeItem;->mExpandable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->access$000(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0, p2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->setDataToView(Lcom/android/camera/data/data/TypeItem;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->access$000(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    iget p2, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mDegree:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->onBindViewHolder(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00de

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;

    invoke-direct {p2, p0, p1, p0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;-><init>(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;)V

    return-object p2
.end method

.method public onItemHolderClick(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;->access$000(Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$SingleCheckViewHolder;)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    .line 4
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public setAccessible(Landroid/view/View;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1200ae

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oo/OooO0O0;

    invoke-direct {p2, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oo/OooO0O0;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mDegree:I

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->mSelectedItem:I

    return-void
.end method
