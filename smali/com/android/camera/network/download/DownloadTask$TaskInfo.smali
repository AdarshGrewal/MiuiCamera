.class public Lcom/android/camera/network/download/DownloadTask$TaskInfo;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfo"
.end annotation


# instance fields
.field public mContentLength:J

.field public mDigest:Ljava/security/MessageDigest;

.field public mDownloadSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/network/download/DownloadTask$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/network/download/DownloadTask$TaskInfo;-><init>()V

    return-void
.end method
