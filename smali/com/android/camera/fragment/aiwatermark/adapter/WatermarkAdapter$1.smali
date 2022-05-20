.class public Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "WatermarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->checkLocationPermission(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
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

.field public final synthetic val$watermarkProtocol:Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->val$watermarkProtocol:Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    iput-object p3, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->val$key:Ljava/lang/String;

    iput p4, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->val$index:I

    iput-object p5, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->val$watermarkProtocol:Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iget-object v2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->val$key:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->val$index:I

    iget-object v4, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$1;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$000(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->requestLocationPermission(Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;)Z

    :cond_0
    return-void
.end method
