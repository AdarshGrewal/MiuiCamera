.class public Lcom/android/zxing/CacheImageDecoder$1;
.super Ljava/lang/Object;
.source "CacheImageDecoder.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/CacheImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/zxing/CacheImageDecoder;


# direct methods
.method public constructor <init>(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$1;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/zxing/CacheImageDecoder$1;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-virtual {p2}, Lcom/android/zxing/CacheImageDecoder;->isNeedImage()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/zxing/CacheImageDecoder$1;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-virtual {p2, p1}, Lcom/android/zxing/CacheImageDecoder;->onPreviewFrame(Landroid/media/Image;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
