.class public Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;
.super Ljava/lang/Object;
.source "ChinaCityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->initCityName(DD)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

.field public final synthetic val$latitude:D

.field public final synthetic val$longitude:D


# direct methods
.method public constructor <init>(Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;DD)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;->this$0:Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

    iput-wide p2, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;->val$latitude:D

    iput-wide p4, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;->val$longitude:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;->this$0:Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

    invoke-static {v1}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->access$000(Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;->val$latitude:D

    iget-wide v3, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;->val$longitude:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;->this$0:Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->access$100(Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;->this$0:Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

    invoke-virtual {v1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->access$100(Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler$1;->this$0:Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->access$100(Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->access$302(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 9
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAddress] ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    .line 10
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->access$302(Ljava/lang/String;)Ljava/lang/String;

    throw v0
.end method
