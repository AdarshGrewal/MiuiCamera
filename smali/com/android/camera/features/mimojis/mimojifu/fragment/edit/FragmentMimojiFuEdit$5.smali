.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;
.super Ljava/lang/Object;
.source "FragmentMimojiFuEdit.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2202(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Z)Z

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$900(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isNeedRenderIcon:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1000(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$902(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;I)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->EachRendIcon()V

    return-void
.end method
