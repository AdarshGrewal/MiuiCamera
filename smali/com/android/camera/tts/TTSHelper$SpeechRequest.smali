.class public Lcom/android/camera/tts/TTSHelper$SpeechRequest;
.super Ljava/lang/Object;
.source "TTSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/tts/TTSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeechRequest"
.end annotation


# instance fields
.field public final mListener:Lcom/android/camera/tts/TTSHelper$Listener;

.field public final mTextToSpeak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/camera/tts/TTSHelper$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/android/camera/tts/TTSHelper$Listener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper$SpeechRequest;->mTextToSpeak:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/android/camera/tts/TTSHelper$SpeechRequest;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    return-void
.end method
