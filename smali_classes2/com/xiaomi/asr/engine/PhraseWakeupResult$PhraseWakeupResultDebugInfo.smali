.class public final Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;
.super Ljava/lang/Object;
.source "PhraseWakeupResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/PhraseWakeupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhraseWakeupResultDebugInfo"
.end annotation


# instance fields
.field public mCacheCMVNData:[B

.field public mCacheSVData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheCMVNData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;->mCacheCMVNData:[B

    return-object v0
.end method

.method public getCacheSVData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;->mCacheSVData:[B

    return-object v0
.end method

.method public setCacheCMVNData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;->mCacheCMVNData:[B

    return-void
.end method

.method public setCacheSVData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/PhraseWakeupResult$PhraseWakeupResultDebugInfo;->mCacheSVData:[B

    return-void
.end method
