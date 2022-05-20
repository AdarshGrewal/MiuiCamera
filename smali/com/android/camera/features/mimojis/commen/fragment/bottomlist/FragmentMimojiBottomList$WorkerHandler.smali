.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;
.super Landroid/os/Handler;
.source "FragmentMimojiBottomList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xfff0

    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onBgSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Z)V

    .line 7
    invoke-interface {v0, v2, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z

    goto :goto_0

    .line 8
    :cond_1
    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 9
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$100(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mIsLastClick:Z

    .line 10
    invoke-interface {v0, p1, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$100(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->access$200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOO;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$WorkerHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
