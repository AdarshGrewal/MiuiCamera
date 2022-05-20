.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;
.super Ljava/lang/Object;
.source "FuSceneInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->preTask(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

.field public final synthetic val$bgItem:I

.field public final synthetic val$bgPath:Ljava/lang/String;

.field public final synthetic val$bgTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

.field public final synthetic val$cameraItem:I

.field public final synthetic val$cameraPath:Ljava/lang/String;

.field public final synthetic val$cameraTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraItem:I

    iput-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    iput-object p5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraPath:Ljava/lang/String;

    iput p6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgItem:I

    iput-object p7, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->expression2dStop()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v1, v3}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 4
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraItem:I

    if-lez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    aput v4, v3, v5

    invoke-static {v1, v3}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    new-array v3, v2, [I

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraItem:I

    aput v4, v3, v5

    invoke-static {v1, v3}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraItem:I

    invoke-virtual {v1, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setItem(I)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setBundle(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->camera:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$cameraTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgItem:I

    aput v3, v2, v5

    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->expression2dReset()V

    .line 14
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgItem:I

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setItem(I)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setBundle(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->background:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->val$bgTypeBean:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->glSceneExecution()V

    .line 18
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    return-void
.end method
