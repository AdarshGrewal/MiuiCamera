.class public final Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final fileDir:Ljava/lang/String;

.field public final fileMD5:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;

.field public final moduleName:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$100(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$200(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$300(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$400(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$500(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;-><init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
