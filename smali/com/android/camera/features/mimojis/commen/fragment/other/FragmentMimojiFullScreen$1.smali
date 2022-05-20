.class public Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;
.source "FragmentMimojiFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showExitConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;

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
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->access$002(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;Z)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    return-void
.end method
