.class public final synthetic LOooO0O0/OooO0O0/OooO0o0/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/zxing/QrDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/QrDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0o0/OooO0oO;->OooO00o:Lcom/android/zxing/QrDecoder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0o0/OooO0oO;->OooO00o:Lcom/android/zxing/QrDecoder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/zxing/QrDecoder;->OooO00o(Ljava/lang/String;)V

    return-void
.end method
