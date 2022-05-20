.class public final Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;
.super Ljava/lang/Object;
.source "FuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->create(Landroid/content/Context;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getIsInitItemFinish()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "controller_cpp.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string/jumbo v3, "others/controller_config.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configItem:I

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string/jumbo v3, "others/controller_config_for_icon_scene.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configIconItem:I

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_renou.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->renouIconCam:I

    .line 6
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_bizi.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->biziIconCam:I

    .line 7
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_lianxing.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->lianxingIconCam:I

    .line 8
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_ershi.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->ershiIconCam:I

    .line 9
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_huzi.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->huziIconCam:I

    .line 10
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_jiemao.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->jiemaoIconCam:I

    .line 11
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_queban.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->quebanIconCam:I

    .line 12
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_toufa.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->toufaIconCam:I

    .line 13
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_toushi.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->toushiIconCam:I

    .line 14
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_yanjing.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->yanjingIconCam:I

    .line 15
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;->val$context:Landroid/content/Context;

    const-string v3, "camera/icon_cam/cam_zuichun.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->zuichunIconCam:I

    .line 16
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 17
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v3, v2, [I

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configIconItem:I

    aput v4, v3, v1

    invoke-static {v0, v3}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    const/4 v0, 0x4

    .line 18
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetMultiSamples(I)I

    .line 19
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-wide/16 v4, 0x0

    const-string v6, "camera_animation_transition_time"

    invoke-static {v3, v6, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 20
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-string v9, "enable_background_color"

    invoke-static {v3, v9, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 21
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 22
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-string v9, "is_close_dde"

    invoke-static {v3, v9, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 23
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$100(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    .line 24
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v9

    iget v9, v9, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    aput v9, v3, v2

    .line 25
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v9, v2, [I

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v10

    iget v10, v10, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configItem:I

    aput v10, v9, v1

    invoke-static {v3, v9}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 26
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bindConfig end"

    invoke-static {v1, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mInputImageOrientation:I

    rsub-int v3, v3, 0x168

    div-int/lit8 v3, v3, 0x5a

    int-to-double v9, v3

    const-string v3, "arMode"

    invoke-static {v1, v3, v9, v10}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 28
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-string v3, "enable_shadow"

    invoke-static {v1, v3, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 29
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    invoke-static {v1, v6, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 30
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetMultiSamples(I)I

    .line 31
    sget v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->DUMP_MIMOJI_SDK_LOG:I

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetLogLevel(I)I

    .line 32
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getIsInitItemFinish()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create end"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
