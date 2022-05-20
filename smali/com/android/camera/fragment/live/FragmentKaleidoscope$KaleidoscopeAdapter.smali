.class public Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FragmentKaleidoscope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/live/FragmentKaleidoscope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KaleidoscopeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplayOrientation:I

.field public mKaleidoscopeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mSelectIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;I",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mDisplayOrientation:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mKaleidoscopeList:Ljava/util/List;

    .line 5
    iput p3, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mSelectIndex:I

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 7
    iput-object p4, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mKaleidoscopeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;I)V
    .locals 4

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f08056f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mDisplayOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    const v0, 0x7f0a027e

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a027f

    .line 5
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mKaleidoscopeList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 7
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mSelectIndex:I

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    const v3, 0x7f080171

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/ThemeResource;->getTintResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :goto_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120465

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-lez p2, :cond_2

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120079

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v0, :cond_3

    .line 15
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOOo/OooO00o;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOOo/OooO00o;-><init>(Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 20
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0086

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter$KaleidoItemHolder;-><init>(Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mDisplayOrientation:I

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->mSelectIndex:I

    return-void
.end method
