.class public Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;
.super Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;
.source "SplitLoadError.java"


# static fields
.field public static final ACTIVATE_APPLICATION_FAILED:I = -0x18

.field public static final ACTIVATE_PROVIDERS_FAILED:I = -0x19

.field public static final CREATE_CLASSLOADER_FAILED:I = -0x1b

.field public static final INTERRUPTED_ERROR:I = -0x1a

.field public static final LOAD_DEX_FAILED:I = -0x17

.field public static final LOAD_LIB_FAILED:I = -0x16

.field public static final LOAD_RES_FAILED:I = -0x15


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
    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->errorCode:I

    .line 3
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->cause:Ljava/lang/Throwable;

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

    iget v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",errorMsg\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->cause:Ljava/lang/Throwable;

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
