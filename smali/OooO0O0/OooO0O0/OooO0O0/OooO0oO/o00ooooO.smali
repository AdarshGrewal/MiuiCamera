.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o00ooooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o00ooooO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o00ooooO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o00ooooO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o00ooooO;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooO0oO/o00ooooO;

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

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->OoooO0O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
