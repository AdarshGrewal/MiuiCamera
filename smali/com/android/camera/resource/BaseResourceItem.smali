.class public abstract Lcom/android/camera/resource/BaseResourceItem;
.super Ljava/lang/Object;
.source "BaseResourceItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/camera/resource/BaseResourceDownloadable;


# instance fields
.field public baseArchivesFolder:Ljava/lang/String;

.field public transient currentLoadState:I

.field public id:Ljava/lang/String;

.field public transient index:I

.field public mZipPath:Ljava/lang/String;

.field public uri:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/resource/BaseResourceItem;->currentLoadState:I

    return-void
.end method


# virtual methods
.method public abstract fillDetailData(Lorg/json/JSONObject;)V
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/resource/BaseResourceItem;->currentLoadState:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getIDPrefix()Ljava/lang/String;
.end method

.method public abstract onDecompressFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDecompressFinished(Ljava/lang/String;Z)V
.end method

.method public onUpToDate(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "v_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/camera/resource/BaseResourceItem;->versionCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->createNewFile(Ljava/lang/String;)V

    return-void
.end method

.method public abstract parseSummaryData(Lorg/json/JSONObject;I)V
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/resource/BaseResourceItem;->currentLoadState:I

    return-void
.end method

.method public abstract simpleVerification(Ljava/lang/String;)Z
.end method

.method public versionVerification(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/resource/BaseResourceItem;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method
