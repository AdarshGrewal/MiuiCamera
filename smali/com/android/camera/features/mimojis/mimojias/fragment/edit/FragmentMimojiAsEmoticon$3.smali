.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$3;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;
.source "FragmentMimojiAsEmoticon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->showSaveDialog()V
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
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;->isClicked()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    sget-object p2, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveDialog onClick positive, isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-static {p2, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->access$300(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;Z)V

    return-void
.end method
