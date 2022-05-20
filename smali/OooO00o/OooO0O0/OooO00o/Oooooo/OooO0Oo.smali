.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/tts/TTSHelper$2;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/tts/TTSHelper$2;Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0Oo;->OooO00o:Lcom/android/camera/tts/TTSHelper$2;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0Oo;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0Oo;->OooO0OO:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0Oo;->OooO00o:Lcom/android/camera/tts/TTSHelper$2;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0Oo;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0Oo;->OooO0OO:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/tts/TTSHelper$2;->OooO00o(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    return-void
.end method
