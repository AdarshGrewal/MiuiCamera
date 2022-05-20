.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;
.super Ljava/lang/Object;
.source "FragmentMimojiBottomList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MaterialDownloadListener"
.end annotation


# instance fields
.field public mProgress:I

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1100(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$600(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMaterialDownloading(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setMaterialDownloadState(Z)V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 13
    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CREATE_ITEM_DOWNLOAD:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->onAddItemSelected(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V

    goto :goto_1

    .line 15
    :cond_3
    sget-object p1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EDIT_ITEM_DOWNLOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 16
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->isAvatarInited()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isCloudListLoadSuccess()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1400(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V

    goto :goto_1

    .line 18
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MIMOJI CLICK disable, waiting init finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public onError(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1500(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1100(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$600(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMaterialDownloading(Z)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isDestroy()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    .line 6
    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    .line 7
    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->setMaterialDownloadState(Z)V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->mProgress:I

    if-eq v0, p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 4
    :cond_1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->mProgress:I

    return-void
.end method
