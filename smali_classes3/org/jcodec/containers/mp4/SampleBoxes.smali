.class public Lorg/jcodec/containers/mp4/SampleBoxes;
.super Lorg/jcodec/containers/mp4/Boxes;
.source "SampleBoxes.java"


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const-class v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;

    const-class v1, Lorg/jcodec/containers/mp4/boxes/SampleEntry;

    const-class v2, Lorg/jcodec/containers/mp4/boxes/VideoSampleEntry;

    const-class v3, Lorg/jcodec/containers/mp4/boxes/AudioSampleEntry;

    invoke-direct {p0}, Lorg/jcodec/containers/mp4/Boxes;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/Boxes;->clear()V

    const-string v4, "ap4h"

    .line 3
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "apch"

    .line 4
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "apcn"

    .line 5
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "apcs"

    .line 6
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "apco"

    .line 7
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "avc1"

    .line 8
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "cvid"

    .line 9
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "jpeg"

    .line 10
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "smc "

    .line 11
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "rle "

    .line 12
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "rpza"

    .line 13
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "kpcd"

    .line 14
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "png "

    .line 15
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "mjpa"

    .line 16
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "mjpb"

    .line 17
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "SVQ1"

    .line 18
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "SVQ3"

    .line 19
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "mp4v"

    .line 20
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "dvc "

    .line 21
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "dvcp"

    .line 22
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "gif "

    .line 23
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "h263"

    .line 24
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "tiff"

    .line 25
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "raw "

    .line 26
    invoke-virtual {p0, v4, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "2vuY"

    .line 27
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "yuv2"

    .line 28
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v308"

    .line 29
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v408"

    .line 30
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v216"

    .line 31
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v410"

    .line 32
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "v210"

    .line 33
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "m2v1"

    .line 34
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "m1v1"

    .line 35
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "xd5b"

    .line 36
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "dv5n"

    .line 37
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "jp2h"

    .line 38
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "mjp2"

    .line 39
    invoke-virtual {p0, v5, v2}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "ac-3"

    .line 40
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "cac3"

    .line 41
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "ima4"

    .line 42
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aac "

    .line 43
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "celp"

    .line 44
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "hvxc"

    .line 45
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "twvq"

    .line 46
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, ".mp1"

    .line 47
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, ".mp2"

    .line 48
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "midi"

    .line 49
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "apvs"

    .line 50
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "alac"

    .line 51
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aach"

    .line 52
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aacl"

    .line 53
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aace"

    .line 54
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aacf"

    .line 55
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aacp"

    .line 56
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aacs"

    .line 57
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "samr"

    .line 58
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "AUDB"

    .line 59
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "ilbc"

    .line 60
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v5, 0x4

    new-array v6, v5, [B

    .line 61
    fill-array-data v6, :array_0

    invoke-static {v6}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    new-array v5, v5, [B

    .line 62
    fill-array-data v5, :array_1

    invoke-static {v5}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "aes3"

    .line 63
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "NONE"

    .line 64
    invoke-virtual {p0, v5, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "twos"

    .line 66
    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "sowt"

    .line 67
    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "MAC3 "

    .line 68
    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v4, "MAC6 "

    .line 69
    invoke-virtual {p0, v4, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "fl32"

    .line 71
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "fl64"

    .line 72
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "in24"

    .line 73
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "in32"

    .line 74
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "ulaw"

    .line 75
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "alaw"

    .line 76
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "dvca"

    .line 77
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "QDMC"

    .line 78
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "QDM2"

    .line 79
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "Qclp"

    .line 80
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, ".mp3"

    .line 81
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "mp4a"

    .line 82
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "lpcm"

    .line 83
    invoke-virtual {p0, v2, v3}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "tmcd"

    .line 84
    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "time"

    .line 85
    invoke-virtual {p0, v2, v0}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "c608"

    .line 86
    invoke-virtual {p0, v0, v1}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "c708"

    .line 87
    invoke-virtual {p0, v0, v1}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "text"

    .line 88
    invoke-virtual {p0, v0, v1}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "fdsc"

    .line 89
    invoke-virtual {p0, v0, v1}, Lorg/jcodec/containers/mp4/Boxes;->override(Ljava/lang/String;Ljava/lang/Class;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x6dt
        0x73t
        0x0t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x6dt
        0x73t
        0x0t
        0x31t
    .end array-data
.end method
