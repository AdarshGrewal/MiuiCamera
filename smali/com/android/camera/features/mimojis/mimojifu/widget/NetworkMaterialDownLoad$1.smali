.class public Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad$1;
.super Lcom/android/camera/resource/SimpleNetworkDownloadRequest;
.source "NetworkMaterialDownLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->downloadMaterial(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/SimpleNetworkDownloadRequest<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResponseProgress(JJ)V
    .locals 2

    const-wide/16 v0, 0x5a

    mul-long/2addr p1, v0

    .line 1
    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->access$000(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->access$000(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MaterialDownloadListener;->onProgress(I)V

    :cond_0
    return-void
.end method
