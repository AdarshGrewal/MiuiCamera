.class public Lcom/android/camera/CameraAppImpl$1;
.super Ljava/lang/Object;
.source "CameraAppImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraAppImpl;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/CameraAppImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraAppImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraAppImpl$1;->this$0:Lcom/android/camera/CameraAppImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->TrackInit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/camera/CameraAppImpl$1;->this$0:Lcom/android/camera/CameraAppImpl;

    invoke-static {v0}, Lcom/android/camera/CameraAppImpl;->access$000(Lcom/android/camera/CameraAppImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markAllDepartedTask>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/db/item/DbItemSaveTask;->markAllDepartedTask(I)V

    iget-object v0, p0, Lcom/android/camera/CameraAppImpl$1;->this$0:Lcom/android/camera/CameraAppImpl;

    invoke-static {v0}, Lcom/android/camera/CameraAppImpl;->access$000(Lcom/android/camera/CameraAppImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "markAllDepartedTask<<"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->matchCustomWatermarkVersion()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->removeCustomWatermark()V

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_custom_watermark_version"

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->getDefaultWatermarkFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/WatermarkMiSysUtils;->isFileExist(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->generateMainWatermark2File()Landroid/graphics/Bitmap;

    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0000O()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/Util;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/WatermarkMiSysUtils;->isFileExist(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->generateFrontWatermark2File()Landroid/graphics/Bitmap;

    :cond_2
    sget-object v0, Lcom/android/camera/Util;->WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/WatermarkMiSysUtils;->isFileExist(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->generateCinematicRatioWatermark2File()Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl$1;->this$0:Lcom/android/camera/CameraAppImpl;

    invoke-static {v0}, Lcom/android/camera/CameraAppImpl;->access$000(Lcom/android/camera/CameraAppImpl;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "load +"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/features/FeatureLoader;->load(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/android/camera/CameraAppImpl$1;->this$0:Lcom/android/camera/CameraAppImpl;

    invoke-static {v0}, Lcom/android/camera/CameraAppImpl;->access$000(Lcom/android/camera/CameraAppImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "load -"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
