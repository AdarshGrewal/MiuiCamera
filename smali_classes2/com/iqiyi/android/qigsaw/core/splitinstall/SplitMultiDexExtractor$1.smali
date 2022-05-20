.class public Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$1;
.super Ljava/lang/Object;
.source "SplitMultiDexExtractor.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;->clearDexDir()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitMultiDexExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitMultiDex.lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
