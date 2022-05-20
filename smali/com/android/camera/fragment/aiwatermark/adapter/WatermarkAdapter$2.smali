.class public Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;
.super Ljava/lang/Object;
.source "WatermarkAdapter.java"

# interfaces
.implements Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->getListener(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

.field public final synthetic val$index:I

.field public final synthetic val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->val$index:I

    iput-object p4, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPermissionResult result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->val$key:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->val$index:I

    iget-object v2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$200(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    :cond_0
    return-void
.end method

.method public toshowPermissionNotAskDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$300(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)V

    return-void
.end method
