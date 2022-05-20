.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;
.super Ljava/lang/Object;
.source "FuBaseInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "release start"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v2, v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v5, v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    move-result v2

    if-eqz v0, :cond_3

    .line 10
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v3, v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v3

    invoke-static {v3, v0}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 11
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "release Unbind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 12
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget v4, v0, v1

    .line 13
    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release DestroyItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->releaseGLEnd()V

    .line 18
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 20
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 22
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    :cond_8
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "release end"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
