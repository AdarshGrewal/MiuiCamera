.class public final synthetic LOooO00o/OooO0O0/OooO0O0/OooOO0O/o0000OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO0O0/OooOO0O/o0000OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooOO0O/o0000OO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooOO0O/o0000OO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0O0/OooOO0O/o0000OO;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooOO0O/o0000OO;

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

    invoke-static {}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->o0000oOo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
