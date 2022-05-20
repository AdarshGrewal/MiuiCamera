.class public Lcom/android/zxing/CacheImageDecoder$2;
.super Ljava/lang/Object;
.source "CacheImageDecoder.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/CacheImageDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/zxing/CacheImageDecoder;


# direct methods
.method public constructor <init>(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$2;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/zxing/CacheImageDecoder$2;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-static {v0}, Lcom/android/zxing/CacheImageDecoder;->access$000(Lcom/android/zxing/CacheImageDecoder;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;->onFrameThumbnailSuccess(J)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;->onFrameThumbnailFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/zxing/CacheImageDecoder$2;->accept(Ljava/lang/Long;)V

    return-void
.end method
