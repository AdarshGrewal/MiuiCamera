.class public Lorg/jcodec/containers/mp4/boxes/ChannelBox$ChannelDescription;
.super Ljava/lang/Object;
.source "ChannelBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodec/containers/mp4/boxes/ChannelBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelDescription"
.end annotation


# instance fields
.field public channelFlags:I

.field public channelLabel:I

.field public coordinates:[F


# direct methods
.method public constructor <init>(II[F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/ChannelBox$ChannelDescription;->coordinates:[F

    .line 3
    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/ChannelBox$ChannelDescription;->channelLabel:I

    .line 4
    iput p2, p0, Lorg/jcodec/containers/mp4/boxes/ChannelBox$ChannelDescription;->channelFlags:I

    .line 5
    iput-object p3, p0, Lorg/jcodec/containers/mp4/boxes/ChannelBox$ChannelDescription;->coordinates:[F

    return-void
.end method


# virtual methods
.method public getChannelFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/ChannelBox$ChannelDescription;->channelFlags:I

    return v0
.end method

.method public getChannelLabel()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/ChannelBox$ChannelDescription;->channelLabel:I

    return v0
.end method

.method public getCoordinates()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/ChannelBox$ChannelDescription;->coordinates:[F

    return-object v0
.end method

.method public getLabel()Lorg/jcodec/common/model/Label;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/ChannelBox$ChannelDescription;->channelLabel:I

    invoke-static {v0}, Lorg/jcodec/common/model/Label;->getByVal(I)Lorg/jcodec/common/model/Label;

    move-result-object v0

    return-object v0
.end method
