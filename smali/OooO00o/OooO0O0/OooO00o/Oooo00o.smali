.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/Oooo00o;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/Oooo00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo00o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->dismiss()V

    return-void
.end method
