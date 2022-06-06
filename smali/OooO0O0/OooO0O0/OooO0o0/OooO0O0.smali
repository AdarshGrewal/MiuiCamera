.class public final synthetic LOooO0O0/OooO0O0/OooO0o0/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/zxing/DocumentDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/DocumentDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0o0/OooO0O0;->OooO00o:Lcom/android/zxing/DocumentDecoder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0o0/OooO0O0;->OooO00o:Lcom/android/zxing/DocumentDecoder;

    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-virtual {v0, p1}, Lcom/android/zxing/DocumentDecoder;->OooO00o(Lcom/android/zxing/PreviewImage;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
