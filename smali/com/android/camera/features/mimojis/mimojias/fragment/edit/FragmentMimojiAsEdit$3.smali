.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;
.super Landroid/os/Handler;
.source "FragmentMimojiAsEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getSelectType()I

    move-result p1

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isColorSelected()Z

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$1100(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getSubConfigList(Landroid/content/Context;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isNeedUpdate(I)Z

    move-result p1

    .line 6
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$1000(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    move-result-object v3

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v1, v4, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->refreshData(Ljava/util/List;ZZ)V

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$1200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->draw(Z)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "OUTER"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "INNER"

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "TYPE"

    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 12
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$1000(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->notifyThumbnailUpdate(III)V

    goto/16 :goto_0

    .line 13
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    const/16 v0, 0xc8

    .line 14
    invoke-static {p1, v0, v0}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->getThumbnailBitmapFromData([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v4, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "config.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pic.png"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/FileUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$500(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    move-result p1

    .line 22
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$500(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 23
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  save path : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$600(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 25
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$700(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 26
    :cond_3
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 27
    iput-object v4, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 28
    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    .line 29
    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$800(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$900(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)I

    move-result p1

    if-eq p1, v3, :cond_5

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    goto :goto_0

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->showEmoticon()V

    goto :goto_0

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-virtual {p1, v2, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->goBack(ZZ)V

    :cond_6
    :goto_0
    return-void
.end method
