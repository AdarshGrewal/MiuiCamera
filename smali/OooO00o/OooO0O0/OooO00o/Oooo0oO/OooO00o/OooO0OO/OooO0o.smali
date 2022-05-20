.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    return-object p1
.end method
