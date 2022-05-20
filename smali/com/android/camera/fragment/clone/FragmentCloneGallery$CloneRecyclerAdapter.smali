.class public Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FragmentCloneGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/clone/FragmentCloneGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloneRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATE_STARTED:Ljava/lang/Integer;

.field public static final STATE_STARTING:Ljava/lang/Integer;

.field public static final STATE_STOPPED:Ljava/lang/Integer;

.field public static final VIDEO_VIEW_STATE:Ljava/lang/Integer;


# instance fields
.field public final dataArray:[Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;

.field public mIsSupportCloneCopyMode:Z

.field public mListener:Landroid/view/View$OnClickListener;

.field public parentFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a00df

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->VIDEO_VIEW_STATE:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->STATE_STOPPED:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->STATE_STARTING:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->STATE_STARTED:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ZLandroid/view/View$OnClickListener;Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;

    .line 2
    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;

    const/4 v2, 0x1

    const v3, 0x7f080131

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;-><init>(ILjava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;

    const/4 v3, 0x2

    const v4, 0x7f080133

    const-string v5, "clone_video_mode.mp4"

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;

    const v2, 0x7f080128

    const-string v4, "clone_freeze_frame_mode.mp4"

    invoke-direct {v1, v2, v4, v3}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->dataArray:[Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->mIsSupportCloneCopyMode:Z

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 5
    iput-object p3, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->parentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private startPlay(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/TextureVideoView;->setVideoFileDescriptor(Landroid/content/res/AssetFileDescriptor;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TextureVideoView;->setIsNeedAudio(Z)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    .line 7
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/ui/TextureVideoView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    .line 8
    sget-object p2, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->VIDEO_VIEW_STATE:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object p3, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->STATE_STARTING:Ljava/lang/Integer;

    invoke-virtual {p1, p2, p3}, Landroid/view/TextureView;->setTag(ILjava/lang/Object;)V

    const-wide/16 p2, 0x0

    .line 9
    invoke-virtual {p1, p2, p3}, Lcom/android/camera/ui/TextureVideoView;->start(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FragmentCloneGallery"

    const-string/jumbo p2, "open failed"

    .line 10
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->parentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public animateViews(IZLandroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    .line 3
    invoke-static {p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p1, p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 5
    invoke-static {p3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p1, p3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->mIsSupportCloneCopyMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->dataArray:[Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    iget p1, p1, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;->type:I

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 5

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindViewHolder() called with: holder = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], pos = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentCloneGallery"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    const v2, 0x7f0a00de

    const v3, 0x7f0a00db

    if-eq p2, v1, :cond_2

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v4, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->mIsSupportCloneCopyMode:Z

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a00dc

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f1202af

    .line 9
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f080128

    .line 10
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1202cc

    .line 13
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const v2, 0x7f0a00cd

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 15
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    if-ne p2, v1, :cond_5

    const p2, 0x7f0a00cf

    goto :goto_2

    :cond_5
    const p2, 0x7f0a00dd

    :goto_2
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindViewHolder() called with: holder = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], position = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], payloads = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentCloneGallery"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    return-void

    .line 24
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    return-void

    :cond_2
    const v1, 0x7f0a00dd

    .line 27
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f0a00e0

    .line 28
    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/TextureVideoView;

    const v5, 0x7f0a00db

    .line 29
    invoke-virtual {p1, v5}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a00dc

    .line 30
    invoke-virtual {p1, v6}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p3, :cond_3

    .line 31
    iget-object v6, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->dataArray:[Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v4, v6, p1}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->startPlay(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    invoke-static {v4}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;->access$000(Lcom/android/camera/ui/TextureVideoView;)V

    goto :goto_0

    :cond_4
    const v1, 0x7f0a00cf

    .line 34
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f0a00cd

    .line 35
    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    :goto_0
    const/4 p1, 0x3

    new-array v4, p1, [I

    .line 36
    fill-array-data v4, :array_0

    if-eqz v5, :cond_6

    .line 37
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v6

    if-eqz v6, :cond_6

    if-ge p2, p1, :cond_6

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    aget p2, v4, p2

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, ""

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {v5, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_6

    .line 40
    new-instance p1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO00o;

    invoke-direct {p1, p0, v5}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO00o;-><init>(Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;Landroid/view/View;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v5, p1, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    if-eqz p3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, -0x1

    .line 41
    :goto_2
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->animateViews(IZLandroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1202c7
        0x7f1202cc
        0x7f1202af
    .end array-data
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->mIsSupportCloneCopyMode:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    move-object p1, v4

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d0061

    .line 8
    invoke-virtual {p2, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a00db

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    float-to-int v2, v1

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d0060

    .line 11
    invoke-virtual {p2, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a00cd

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    float-to-int v2, v1

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "FragmentCloneGallery"

    const-string/jumbo p2, "onCreateViewHolder: Fail to create rv item view"

    .line 13
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 15
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    float-to-int v0, v0

    .line 16
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    float-to-int v0, v1

    .line 17
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance p2, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
