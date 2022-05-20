.class public final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;
.super Ljava/lang/Object;
.source "SplitInfoListing.java"


# instance fields
.field public final splitInfoMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->splitInfoMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public getSplitInfoMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->splitInfoMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method
