.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0ooOoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0ooOoO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0ooOoO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0ooOoO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0ooOoO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0ooOoO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    check-cast p2, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/UserSelectData;)I

    move-result p1

    return p1
.end method
