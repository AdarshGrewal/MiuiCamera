.class public Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox$Factory;
.super Ljava/lang/Object;
.source "TrackFragmentBaseMediaDecodeTimeBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field public box:Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;->access$000(Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;->createTrackFragmentBaseMediaDecodeTimeBox(J)Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;

    move-result-object v0

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox$Factory;->box:Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;

    .line 3
    iget-byte v1, p1, Lorg/jcodec/containers/mp4/boxes/FullBox;->version:B

    iput-byte v1, v0, Lorg/jcodec/containers/mp4/boxes/FullBox;->version:B

    .line 4
    iget p1, p1, Lorg/jcodec/containers/mp4/boxes/FullBox;->flags:I

    iput p1, v0, Lorg/jcodec/containers/mp4/boxes/FullBox;->flags:I

    return-void
.end method


# virtual methods
.method public baseMediaDecodeTime(J)Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox$Factory;->box:Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;

    invoke-static {v0, p1, p2}, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;->access$002(Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;J)J

    return-object p0
.end method

.method public create()Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox$Factory;->box:Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox$Factory;->box:Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;

    return-object v1

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox$Factory;->box:Lorg/jcodec/containers/mp4/boxes/TrackFragmentBaseMediaDecodeTimeBox;

    throw v1
.end method
