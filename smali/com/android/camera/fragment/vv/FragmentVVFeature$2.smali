.class public Lcom/android/camera/fragment/vv/FragmentVVFeature$2;
.super Ljava/lang/Object;
.source "FragmentVVFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVFeature;->showDownloadCancelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "VVFeature"

    const-string/jumbo v1, "onClick showDownloadCancelDialog cancel"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->access$102(Lcom/android/camera/fragment/vv/FragmentVVFeature;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
