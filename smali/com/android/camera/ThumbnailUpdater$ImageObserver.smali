.class public Lcom/android/camera/ThumbnailUpdater$ImageObserver;
.super Landroid/database/ContentObserver;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageObserver"
.end annotation


# instance fields
.field public mUriChangedListener:Lcom/android/camera/UriChangedListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/camera/UriChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p2, p0, Lcom/android/camera/ThumbnailUpdater$ImageObserver;->mUriChangedListener:Lcom/android/camera/UriChangedListener;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$400(Z)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/android/camera/ThumbnailUpdater;->access$500(Landroid/net/Uri;Z)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$ImageObserver;->mUriChangedListener:Lcom/android/camera/UriChangedListener;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/android/camera/UriChangedListener;->onUriChanged(Landroid/net/Uri;Landroid/net/Uri;J)V

    :cond_0
    return-void
.end method
