.class public Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;
.super Ljava/lang/Object;
.source "SplitInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallResult"
.end annotation


# instance fields
.field public final addedDexPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final apkFile:Ljava/io/File;

.field public final firstInstalled:Z

.field public final splitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->splitName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->apkFile:Ljava/io/File;

    .line 4
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->addedDexPaths:Ljava/util/List;

    .line 5
    iput-boolean p4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->firstInstalled:Z

    return-void
.end method
