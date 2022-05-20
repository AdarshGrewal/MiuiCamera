.class public abstract Lcom/android/camera/storage/BaseSaveRequest;
.super Ljava/lang/Object;
.source "BaseSaveRequest.java"

# interfaces
.implements Lcom/android/camera/storage/SaveRequest;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mSaverCallback:Lcom/android/camera/storage/SaverCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method
