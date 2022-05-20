.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter$MimojiThumbnailHolder;
.super Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
.source "MimojiEditThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimojiThumbnailHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder<",
        "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mItemImageView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter$MimojiThumbnailHolder;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01ec

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter$MimojiThumbnailHolder;->mItemImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setData(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;I)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimojifu setData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, p2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter$MimojiThumbnailHolder;->mItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter$MimojiThumbnailHolder;->mItemImageView:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/music/RoundedCornersTransformation;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p2}, Lcom/android/camera/fragment/music/RoundedCornersTransformation;-><init>(II)V

    .line 8
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter$MimojiThumbnailHolder;->mItemImageView:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 10
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter$MimojiThumbnailHolder;->mItemImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter$MimojiThumbnailHolder;->mItemImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter$MimojiThumbnailHolder;->setData(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;I)V

    return-void
.end method
