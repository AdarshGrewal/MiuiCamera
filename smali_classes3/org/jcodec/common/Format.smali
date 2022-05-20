.class public final Lorg/jcodec/common/Format;
.super Ljava/lang/Object;
.source "Format.java"


# static fields
.field public static final AVI:Lorg/jcodec/common/Format;

.field public static final FLV:Lorg/jcodec/common/Format;

.field public static final H264:Lorg/jcodec/common/Format;

.field public static final IMG:Lorg/jcodec/common/Format;

.field public static final IVF:Lorg/jcodec/common/Format;

.field public static final MJPEG:Lorg/jcodec/common/Format;

.field public static final MKV:Lorg/jcodec/common/Format;

.field public static final MOV:Lorg/jcodec/common/Format;

.field public static final MPEG_AUDIO:Lorg/jcodec/common/Format;

.field public static final MPEG_PS:Lorg/jcodec/common/Format;

.field public static final MPEG_TS:Lorg/jcodec/common/Format;

.field public static final RAW:Lorg/jcodec/common/Format;

.field public static final WAV:Lorg/jcodec/common/Format;

.field public static final WEBP:Lorg/jcodec/common/Format;

.field public static final Y4M:Lorg/jcodec/common/Format;

.field public static final _values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jcodec/common/Format;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final audio:Z

.field public final name:Ljava/lang/String;

.field public final video:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v1, "MOV"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->MOV:Lorg/jcodec/common/Format;

    .line 2
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v3, "MPEG_PS"

    invoke-direct {v0, v3, v2, v2}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->MPEG_PS:Lorg/jcodec/common/Format;

    .line 3
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v4, "MPEG_TS"

    invoke-direct {v0, v4, v2, v2}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->MPEG_TS:Lorg/jcodec/common/Format;

    .line 4
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v5, "MKV"

    invoke-direct {v0, v5, v2, v2}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->MKV:Lorg/jcodec/common/Format;

    .line 5
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v6, "H264"

    const/4 v7, 0x0

    invoke-direct {v0, v6, v2, v7}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->H264:Lorg/jcodec/common/Format;

    .line 6
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v8, "RAW"

    invoke-direct {v0, v8, v2, v2}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->RAW:Lorg/jcodec/common/Format;

    .line 7
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v9, "FLV"

    invoke-direct {v0, v9, v2, v2}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->FLV:Lorg/jcodec/common/Format;

    .line 8
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v10, "AVI"

    invoke-direct {v0, v10, v2, v2}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->AVI:Lorg/jcodec/common/Format;

    .line 9
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v11, "IMG"

    invoke-direct {v0, v11, v2, v7}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->IMG:Lorg/jcodec/common/Format;

    .line 10
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v12, "IVF"

    invoke-direct {v0, v12, v2, v7}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->IVF:Lorg/jcodec/common/Format;

    .line 11
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v13, "MJPEG"

    invoke-direct {v0, v13, v2, v7}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->MJPEG:Lorg/jcodec/common/Format;

    .line 12
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v14, "Y4M"

    invoke-direct {v0, v14, v2, v7}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->Y4M:Lorg/jcodec/common/Format;

    .line 13
    new-instance v0, Lorg/jcodec/common/Format;

    const-string v15, "WAV"

    invoke-direct {v0, v15, v7, v2}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->WAV:Lorg/jcodec/common/Format;

    .line 14
    new-instance v0, Lorg/jcodec/common/Format;

    move-object/from16 v16, v15

    const-string v15, "WEBP"

    invoke-direct {v0, v15, v2, v7}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->WEBP:Lorg/jcodec/common/Format;

    .line 15
    new-instance v0, Lorg/jcodec/common/Format;

    move-object/from16 v17, v15

    const-string v15, "MPEG_AUDIO"

    invoke-direct {v0, v15, v7, v2}, Lorg/jcodec/common/Format;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/jcodec/common/Format;->MPEG_AUDIO:Lorg/jcodec/common/Format;

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    .line 17
    sget-object v2, Lorg/jcodec/common/Format;->MOV:Lorg/jcodec/common/Format;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->MPEG_PS:Lorg/jcodec/common/Format;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->MPEG_TS:Lorg/jcodec/common/Format;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->MKV:Lorg/jcodec/common/Format;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->H264:Lorg/jcodec/common/Format;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->RAW:Lorg/jcodec/common/Format;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->FLV:Lorg/jcodec/common/Format;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->AVI:Lorg/jcodec/common/Format;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->IMG:Lorg/jcodec/common/Format;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->IVF:Lorg/jcodec/common/Format;

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->MJPEG:Lorg/jcodec/common/Format;

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->Y4M:Lorg/jcodec/common/Format;

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->WAV:Lorg/jcodec/common/Format;

    move-object/from16 v2, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->WEBP:Lorg/jcodec/common/Format;

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    sget-object v1, Lorg/jcodec/common/Format;->MPEG_AUDIO:Lorg/jcodec/common/Format;

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jcodec/common/Format;->name:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lorg/jcodec/common/Format;->video:Z

    .line 4
    iput-boolean p3, p0, Lorg/jcodec/common/Format;->audio:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jcodec/common/Format;
    .locals 1

    .line 1
    sget-object v0, Lorg/jcodec/common/Format;->_values:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jcodec/common/Format;

    return-object p0
.end method


# virtual methods
.method public isAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jcodec/common/Format;->audio:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jcodec/common/Format;->video:Z

    return v0
.end method
