.class public Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;
.super Lcom/android/camera/storage/ImageSaveRequest$Builder;
.source "SimpleImageSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/SimpleImageSaveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/camera/storage/AbstractSaveRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;->build()Lcom/android/camera/storage/SimpleImageSaveRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/camera/storage/ImageSaveRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;->build()Lcom/android/camera/storage/SimpleImageSaveRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/camera/storage/SimpleImageSaveRequest;
    .locals 1

    new-instance v0, Lcom/android/camera/storage/SimpleImageSaveRequest;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/SimpleImageSaveRequest;-><init>(Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;)V

    return-object v0
.end method
