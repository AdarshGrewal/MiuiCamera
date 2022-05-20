.class public Lorg/jcodec/containers/mp4/AudioBoxes;
.super Lorg/jcodec/containers/mp4/Boxes;
.source "AudioBoxes.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/jcodec/containers/mp4/Boxes;-><init>()V

    .line 2
    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/WaveExtension;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jcodec/containers/mp4/boxes/WaveExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/ChannelBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jcodec/containers/mp4/boxes/ChannelBox;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lorg/jcodec/containers/mp4/Boxes;->mappings:Ljava/util/Map;

    const-class v1, Lorg/jcodec/containers/mp4/boxes/Box$LeafBox;

    const-string v2, "esds"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
