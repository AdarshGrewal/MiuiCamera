.class public Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$ExtractedDex;
.super Ljava/io/File;
.source "SplitMultiDexExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractedDex"
.end annotation


# instance fields
.field public crc:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 p1, 0x1

    .line 2
    iput-wide p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$ExtractedDex;->crc:J

    return-void
.end method
