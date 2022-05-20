.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0OO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0OO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0OO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/tts/TTSHelper$BatchListener;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/android/camera/tts/TTSHelper$2;->OooO00o(Lcom/android/camera/tts/TTSHelper$BatchListener;Landroid/util/Pair;)V

    return-void
.end method
