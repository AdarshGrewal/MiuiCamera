.class public Lcom/android/camera/network/resource/ResourceDownloadManager$1;
.super Ljava/lang/Object;
.source "ResourceDownloadManager.java"

# interfaces
.implements Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/resource/ResourceDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/network/resource/ResourceDownloadManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestComplete(Lcom/android/camera/network/download/Request;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download finish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResourceDownloadManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/network/download/Request;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-static {p1}, Lcom/android/camera/network/resource/ResourceDownloadManager;->access$000(Lcom/android/camera/network/resource/ResourceDownloadManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-static {v2}, Lcom/android/camera/network/resource/ResourceDownloadManager;->access$100(Lcom/android/camera/network/resource/ResourceDownloadManager;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    const/4 p2, 0x3

    invoke-static {p1, v0, v1, p2}, Lcom/android/camera/network/resource/ResourceDownloadManager;->access$200(Lcom/android/camera/network/resource/ResourceDownloadManager;JI)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;->this$0:Lcom/android/camera/network/resource/ResourceDownloadManager;

    const/4 p2, 0x4

    invoke-static {p1, v0, v1, p2}, Lcom/android/camera/network/resource/ResourceDownloadManager;->access$200(Lcom/android/camera/network/resource/ResourceDownloadManager;JI)V

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 8
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
