.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o000o00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o000o00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o000o00o;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o000o00o;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o000o00o;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o000o00o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->o000OOoO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
