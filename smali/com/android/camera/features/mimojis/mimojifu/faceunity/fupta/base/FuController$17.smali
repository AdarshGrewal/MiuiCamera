.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;
.super Ljava/lang/Object;
.source "FuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->refreshEditData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Hashtable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$900(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$500(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$900(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getBundleItems()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$500(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getBundleItems()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Hashtable;

    move-result-object v0

    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->camera:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Hashtable;

    move-result-object v0

    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->background:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$600(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$600(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$900(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$600(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getColors()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getAllBundleList()[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 14
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v2

    invoke-static {v2, v0}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 15
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshEditData edit unbindList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setAllColorMap()V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    :cond_3
    return-void
.end method
