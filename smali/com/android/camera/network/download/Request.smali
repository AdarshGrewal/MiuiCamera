.class public final Lcom/android/camera/network/download/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/network/download/Request$Constants;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Request"


# instance fields
.field public mAllowedOverMetered:Z

.field public mDestination:Ljava/io/File;

.field public mMaxRetryTimes:I

.field public mTag:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field public mVerifier:Lcom/android/camera/network/download/Verifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/android/camera/network/download/Request;->mMaxRetryTimes:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/network/download/Request;->mTag:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/camera/network/download/Request;->mUri:Landroid/net/Uri;

    .line 5
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    .line 6
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "https"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support scheme: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const-string p2, "Request"

    if-nez p1, :cond_2

    const-string/jumbo p1, "output file will be overwritten"

    .line 10
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "output file is a directory"

    .line 11
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "dst file exists, is a directory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    :goto_1
    iput-object p3, p0, Lcom/android/camera/network/download/Request;->mDestination:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getDestination()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/network/download/Request;->mDestination:Ljava/io/File;

    return-object v0
.end method

.method public getMaxRetryTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/network/download/Request;->mMaxRetryTimes:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/network/download/Request;->mAllowedOverMetered:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/network/download/Request;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/network/download/Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVerifier()Lcom/android/camera/network/download/Verifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/network/download/Request;->mVerifier:Lcom/android/camera/network/download/Verifier;

    return-object v0
.end method

.method public isAllowedOverMetered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/network/download/Request;->mAllowedOverMetered:Z

    return v0
.end method

.method public setAllowedOverMetered(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/network/download/Request;->mAllowedOverMetered:Z

    return-void
.end method

.method public setMaxRetryTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/network/download/Request;->mMaxRetryTimes:I

    return-void
.end method

.method public setVerifier(Lcom/android/camera/network/download/Verifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/network/download/Request;->mVerifier:Lcom/android/camera/network/download/Verifier;

    return-void
.end method
