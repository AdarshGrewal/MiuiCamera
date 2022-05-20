.class public Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;
.super Ljava/lang/Object;
.source "MultiFeatureManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->checkAndShowDownloadConfirmDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

.field public final synthetic val$confirmRunnable:Ljava/lang/Runnable;

.field public final synthetic val$featureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    iput-object p2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;->val$featureName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;->val$confirmRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "attr_feature_install_cellular_confirm"

    .line 1
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallOperation(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check confirm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;->val$featureName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$400(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;->val$featureName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$800(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;->val$confirmRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
