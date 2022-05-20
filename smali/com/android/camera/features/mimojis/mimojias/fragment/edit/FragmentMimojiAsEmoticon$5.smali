.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$5;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;
.source "FragmentMimojiAsEmoticon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->showBackDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$5;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;->isClicked()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$5;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->backToPreview(Z)V

    return-void
.end method
