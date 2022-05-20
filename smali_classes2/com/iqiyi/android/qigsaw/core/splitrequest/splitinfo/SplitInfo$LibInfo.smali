.class public Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;
.super Ljava/lang/Object;
.source "SplitInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LibInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;
    }
.end annotation


# instance fields
.field public final abi:Ljava/lang/String;

.field public final libs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->abi:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->libs:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->libs:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->abi:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAbi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->abi:Ljava/lang/String;

    return-object v0
.end method

.method public getLibs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->libs:Ljava/util/List;

    return-object v0
.end method
