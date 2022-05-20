.class public Lcom/android/zxing/DocumentDecoder$DocumentBean;
.super Ljava/lang/Object;
.source "DocumentDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/DocumentDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentBean"
.end annotation


# instance fields
.field public docValue:Ljava/lang/String;

.field public image:Lcom/android/zxing/PreviewImage;

.field public points:[F


# direct methods
.method public constructor <init>(Lcom/android/zxing/PreviewImage;[FLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->image:Lcom/android/zxing/PreviewImage;

    .line 3
    iput-object p2, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->points:[F

    .line 4
    iput-object p3, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->docValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->docValue:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/android/zxing/PreviewImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->image:Lcom/android/zxing/PreviewImage;

    return-object v0
.end method

.method public getPoints()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->points:[F

    return-object v0
.end method

.method public setDocValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->docValue:Ljava/lang/String;

    return-void
.end method

.method public setImage(Lcom/android/zxing/PreviewImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->image:Lcom/android/zxing/PreviewImage;

    return-void
.end method

.method public setPoints([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->points:[F

    return-void
.end method
