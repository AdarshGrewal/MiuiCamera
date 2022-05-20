.class public final synthetic LOooO00o/OooO0O0/OooO0O0/OooOO0O/o00oOOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO0O0/OooOO0O/o00oOOOO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooOO0O/o00oOOOO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooOO0O/o00oOOOO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0O0/OooOO0O/o00oOOOO;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooOO0O/o00oOOOO;

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

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->o0000O00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
