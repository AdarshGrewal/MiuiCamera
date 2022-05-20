.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;
.super Ljava/lang/Object;
.source "FragmentMimojiFuEdit.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;


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
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setFuTexIconId(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "takePhotoCallBack:   generateAvatarIcon "

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    iget-boolean v2, v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->generateAvatarIcon:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 4
    iput-boolean v1, v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->generateAvatarIcon:Z

    .line 5
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$700(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$700(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->savePNGFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takePhotoCallBack   newAvatarIconPath: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$700(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-virtual {p1, v1, v3}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->goBack(ZZ)V

    return-void

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$800(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$802(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Z)Z

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$902(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;I)I

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->backToHome()V

    .line 13
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "takePhotoCallBack:   isBackToHome"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1000(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takePhotoCallBack:   isNeedRenderIcon "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1000(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1002(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Z)Z

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$902(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;I)I

    .line 18
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1100(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1200(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1300(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    return-void

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$902(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;I)I

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "takePhotoCallBack\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1500(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V

    return-void

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1600(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1600(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1600(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1700(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;

    if-nez v0, :cond_6

    return-void

    .line 26
    :cond_6
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpAvatarThumbnail(JI)V

    .line 27
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getRefreshRow()I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$900(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result v4

    invoke-virtual {v0, v2, v4, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->refreshPos(IILandroid/graphics/Bitmap;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$900(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result p1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1800(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result v2

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_7

    .line 29
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "takePhotoCallBack:   refresh "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$900(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$902(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;I)I

    .line 31
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1900(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->rendIconEnd(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 32
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getRefreshRow()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->refreshRowEnd(I)V

    goto :goto_0

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$908(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    .line 34
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "takePhotoCallBack:   refreshxx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$900(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2000(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setNeedTakePic(Z)V

    .line 36
    :goto_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshIcon pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$900(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2100(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2102(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;J)J

    :cond_8
    :goto_1
    return-void
.end method

.method public takePhotoCallBack(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$500(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOo;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
