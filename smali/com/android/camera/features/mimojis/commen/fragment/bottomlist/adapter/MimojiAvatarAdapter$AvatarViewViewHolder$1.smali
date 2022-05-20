.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;
.super Ljava/lang/Object;
.source "MimojiAvatarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->updateItemDownloadState(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;

.field public final synthetic val$data:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->this$1:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->val$data:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->val$data:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->this$1:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->val$data:Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    iget v1, v1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->index:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
