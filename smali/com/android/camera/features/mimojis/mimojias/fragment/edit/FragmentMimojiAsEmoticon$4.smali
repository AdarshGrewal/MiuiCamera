.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$4;
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
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$4;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

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
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$4;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->access$100(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    return-void
.end method
