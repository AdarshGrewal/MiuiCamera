.class public Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;
.super Ljava/lang/Object;
.source "MimojiFuControlImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getEmotionIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xfa

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->loadEmoticon(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1500(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->isExitBackstage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSceneBindEnd isExitBackstage"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1600(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSceneBindEnd: mIsCreate true"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1502(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1700(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$800(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetConfig()V

    :cond_1
    return-void
.end method

.method public onAvatarBindEnd()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji void onAvatarBindEnd"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$300(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$302(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpSwitchAvatar(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$700(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$700(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->onBgSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Z)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf7

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 13
    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$802(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$800(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$800(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onAvatarBindEnd()V

    :cond_4
    return-void
.end method

.method public onLoadEnd()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji onLoadEnd:isloadEmoticon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$300(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEmoticon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$300(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$302(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$500(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mCameraView is null: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpAvatarThumbnail(JI)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$500(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0O0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0O0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onSceneBindEnd()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji void onSceneBindEnd"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$900(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO0O0/OooO0OO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1000(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->clearAvatar()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1000(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xf7

    .line 7
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 8
    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$802(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    .line 10
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$800(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    .line 11
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$800(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->isSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$800(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetConfig()V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    if-nez v0, :cond_2

    .line 14
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSceneBindEnd: curAvatarItem is null "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1200(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v3, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1202(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z

    .line 17
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    .line 19
    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1300(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    .line 20
    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    .line 21
    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 22
    :cond_3
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v3

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;ZZ)V

    :cond_4
    return-void
.end method
