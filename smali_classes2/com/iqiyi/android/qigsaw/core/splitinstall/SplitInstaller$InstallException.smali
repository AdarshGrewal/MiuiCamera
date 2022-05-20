.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
.super Ljava/lang/Exception;
.source "SplitInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallException"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Split Install Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;->errorCode:I

    return v0
.end method
