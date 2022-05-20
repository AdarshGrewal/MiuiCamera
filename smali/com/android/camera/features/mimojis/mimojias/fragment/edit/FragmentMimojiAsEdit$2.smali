.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$2;
.super Ljava/lang/Object;
.source "FragmentMimojiAsEdit.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter$ItfGvOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->initMimojiEdit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUIChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$302(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;Z)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$400(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->updateTitleState(I)V

    :goto_0
    return-void
.end method
