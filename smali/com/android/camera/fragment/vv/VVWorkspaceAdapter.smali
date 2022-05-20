.class public Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VVWorkspaceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mEditMode:Z

.field public mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mOnVVWorkspacePlayListener:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;

.field public mPlayerItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;",
            ">;"
        }
    .end annotation
.end field

.field public mWorkspaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/vv/VVWorkspaceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/vv/VVWorkspaceItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mActivity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mWorkspaceList:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 5
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 6
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 7
    iput-object p5, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mOnVVWorkspacePlayListener:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;

    .line 8
    iput-object p3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mPlayerItemList:Ljava/util/List;

    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 1

    const-string v0, "MM/dd kk:mm"

    .line 1
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDurationString(J)Ljava/lang/String;
    .locals 2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 2
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%02d"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadThumbnailByLastSegment(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 5
    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$3;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 6
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 7
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$1;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;Landroid/widget/ImageView;)V

    new-instance v1, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$2;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;)V

    .line 8
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private loadThumbnailByThumbFile(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x32

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    instance-of v1, v0, Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 10
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public deleteSelected()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->stopAll()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mWorkspaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mWorkspaceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 6
    iget-boolean v4, v3, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mMarked:Z

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->removeSelf()V

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mPlayerItemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mWorkspaceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mPlayerItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mWorkspaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mWorkspaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 2
    iget-boolean v2, v2, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mMarked:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEditMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mEditMode:Z

    return v0
.end method

.method public isSelectedAll()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mWorkspaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 2
    iget-boolean v1, v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mMarked:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 12

    const v0, 0x7f0a04d2

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    const v0, 0x7f0a04d1

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a04d6

    .line 4
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/TextureVideoView;

    const v2, 0x7f0a04d3

    .line 5
    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a04cc

    .line 6
    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04d0

    .line 7
    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a04d4

    .line 8
    invoke-virtual {p1, v5}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a04cd

    .line 9
    invoke-virtual {p1, v6}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 10
    iget-object v7, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mWorkspaceList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 11
    iget-object v8, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mPlayerItemList:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    .line 12
    invoke-virtual {p2}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->getVVItem()Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->updateTargetVideoView(Landroid/widget/ImageView;Lcom/android/camera/ui/TextureVideoView;Landroid/widget/ImageView;)V

    const/4 v9, 0x0

    .line 14
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-boolean v10, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mEditMode:Z

    const/16 v11, 0x8

    if-eqz v10, :cond_1

    .line 16
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {v1}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    .line 18
    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 19
    iget-boolean v10, v7, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mMarked:Z

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 22
    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 23
    :goto_0
    invoke-virtual {v7}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getLastThumbPath()Ljava/lang/String;

    move-result-object v10

    .line 24
    invoke-direct {p0, v10, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->loadThumbnailByThumbFile(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 25
    invoke-virtual {v7}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getLastPath()Ljava/lang/String;

    move-result-object v10

    .line 26
    iget-object v11, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v11

    .line 27
    invoke-virtual {v11, v10}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 28
    invoke-virtual {v10, v11}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v10

    .line 29
    invoke-virtual {v10, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 30
    :cond_2
    iget-wide v10, v7, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastModifiedTime:J

    invoke-direct {p0, v10, v11}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1209e1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v10, v8, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    aput-object v10, v3, v9

    const/4 v9, 0x1

    .line 33
    invoke-virtual {v8}, Lcom/android/camera/fragment/vv/VVItem;->getEssentialFragmentSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x2

    invoke-virtual {v8}, Lcom/android/camera/fragment/vv/VVItem;->getTotalDuration()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getDurationString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v9

    .line 34
    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {v1, p2}, Landroid/view/TextureView;->setTag(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-static {v2}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    .line 45
    invoke-static {v6}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    .line 46
    invoke-static {v5}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: vv_workspace_video"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->stopPlay()V

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->getVVWorkspaceItem()Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    move-result-object v0

    .line 8
    iget-boolean v1, v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mMarked:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mMarked:Z

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 11
    :sswitch_1
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: vv_workspace_shot"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mOnVVWorkspacePlayListener:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;

    if-nez v0, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;->onPlay()V

    .line 15
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: vv_workspace_play"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "value_vv_click_workspace_play"

    .line 16
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->stopAll()V

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    .line 19
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->startPlay()V

    goto :goto_0

    .line 20
    :sswitch_3
    sget-object v0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick: vv_workspace_delete, isEditMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isEditMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 23
    iget-boolean v1, v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mMarked:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mMarked:Z

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a04cd -> :sswitch_3
        0x7f0a04d3 -> :sswitch_2
        0x7f0a04d4 -> :sswitch_1
        0x7f0a04d6 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00c8

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public selected(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mWorkspaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 2
    iput-boolean p1, v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mMarked:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mEditMode:Z

    return-void
.end method

.method public stopAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->mPlayerItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->stopPlay()V

    goto :goto_0

    :cond_0
    return-void
.end method
