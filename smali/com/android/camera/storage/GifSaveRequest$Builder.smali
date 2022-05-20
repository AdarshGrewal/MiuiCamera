.class public Lcom/android/camera/storage/GifSaveRequest$Builder;
.super Ljava/lang/Object;
.source "GifSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/GifSaveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public dateTaken:J

.field public height:I

.field public mGifPath:Ljava/lang/String;

.field public orientation:I

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/storage/GifSaveRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->mGifPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/storage/GifSaveRequest$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->dateTaken:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/android/camera/storage/GifSaveRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/storage/GifSaveRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->width:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/storage/GifSaveRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->height:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/storage/GifSaveRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->orientation:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/storage/GifSaveRequest$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/camera/storage/GifSaveRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/storage/GifSaveRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/storage/GifSaveRequest;-><init>(Lcom/android/camera/storage/GifSaveRequest$Builder;Lcom/android/camera/storage/GifSaveRequest$1;)V

    return-object v0
.end method

.method public setDateTaken(J)Lcom/android/camera/storage/GifSaveRequest$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->dateTaken:J

    return-object p0
.end method

.method public setGifPath(Ljava/lang/String;)Lcom/android/camera/storage/GifSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->mGifPath:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(I)Lcom/android/camera/storage/GifSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->height:I

    return-object p0
.end method

.method public setOrientation(I)Lcom/android/camera/storage/GifSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->orientation:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/camera/storage/GifSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/android/camera/storage/GifSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setWidth(I)Lcom/android/camera/storage/GifSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/GifSaveRequest$Builder;->width:I

    return-object p0
.end method
