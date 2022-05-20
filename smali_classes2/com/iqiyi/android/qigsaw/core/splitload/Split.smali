.class public final Lcom/iqiyi/android/qigsaw/core/splitload/Split;
.super Ljava/lang/Object;
.source "Split.java"


# instance fields
.field public final splitApkPath:Ljava/lang/String;

.field public final splitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitApkPath:Ljava/lang/String;

    return-void
.end method
