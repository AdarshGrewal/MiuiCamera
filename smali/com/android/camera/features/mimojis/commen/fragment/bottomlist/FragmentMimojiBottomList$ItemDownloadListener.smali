.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$ItemDownloadListener;
.super Ljava/lang/Object;
.source "FragmentMimojiBottomList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDownloadListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDownloadComplete(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onItemDownloadComplete: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xf6

    .line 5
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setBgIconNeedShow(Z)V

    if-eqz v3, :cond_1

    .line 7
    iget-object v1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiVideo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-interface {v3, p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    :cond_1
    return-void
.end method
