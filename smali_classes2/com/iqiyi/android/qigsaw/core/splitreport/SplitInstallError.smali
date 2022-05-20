.class public final Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;
.super Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;
.source "SplitInstallError.java"


# static fields
.field public static final APK_FILE_ILLEGAL:I = -0xb

.field public static final CLASSLOADER_CREATE_FAILED:I = -0x11

.field public static final DEX_EXTRACT_FAILED:I = -0xe

.field public static final DEX_OAT_FAILED:I = -0x12

.field public static final LIB_EXTRACT_FAILED:I = -0xf

.field public static final MARK_CREATE_FAILED:I = -0x10

.field public static final MD5_ERROR:I = -0xd

.field public static final SIGNATURE_MISMATCH:I = -0xc


# instance fields
.field public final cause:Ljava/lang/Throwable;

.field public final errorCode:I


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    iget-object v1, p1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->version:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->builtIn:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;->errorCode:I

    .line 3
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"splitName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"version\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"builtIn\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->builtIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\",errorCode\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",errorMsg\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;->cause:Ljava/lang/Throwable;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
