.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter$MimojiColorHolder;
.super Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
.source "MimojiEditColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimojiColorHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder<",
        "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
        ">;"
    }
.end annotation


# instance fields
.field public mColorIv:Lcom/android/camera/ui/CircleImageView;

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter$MimojiColorHolder;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01e5

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CircleImageView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter$MimojiColorHolder;->mColorIv:Lcom/android/camera/ui/CircleImageView;

    return-void
.end method


# virtual methods
.method public setData(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;I)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getR()D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getG()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getB()D

    move-result-wide v1

    double-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v2, p2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter$MimojiColorHolder;->mColorIv:Lcom/android/camera/ui/CircleImageView;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->isSelect()Z

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CircleImageView;->updateView(ZI)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditColorAdapter$MimojiColorHolder;->setData(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;I)V

    return-void
.end method
