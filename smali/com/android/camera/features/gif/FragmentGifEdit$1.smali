.class public Lcom/android/camera/features/gif/FragmentGifEdit$1;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;
.source "FragmentGifEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/gif/FragmentGifEdit;->showExitConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/gif/FragmentGifEdit;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;-><init>(Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;->run()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/gif/FragmentGifEdit;->access$002(Lcom/android/camera/features/gif/FragmentGifEdit;Z)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-static {v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->access$100(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    return-void
.end method
