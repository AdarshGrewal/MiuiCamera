.class public final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;
.super Ljava/lang/Object;
.source "SplitInfoVersionData.java"


# instance fields
.field public newVersion:Ljava/lang/String;

.field public oldVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->oldVersion:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->newVersion:Ljava/lang/String;

    return-void
.end method
