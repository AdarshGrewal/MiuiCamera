.class public final enum Lcom/android/camera/BokehVendor;
.super Ljava/lang/Enum;
.source "BokehVendor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/BokehVendor;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/BokehVendor;

.field public static final enum ARCSOFT_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

.field public static final enum MEGVII_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

.field public static final enum MEGVII_DUAL_BOKEH_GOOGLE:Lcom/android/camera/BokehVendor;

.field public static final enum MI_DUAL_BOKEH:Lcom/android/camera/BokehVendor;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/camera/BokehVendor;

    const/4 v1, 0x0

    const-string v2, "MI_DUAL_BOKEH"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/BokehVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/BokehVendor;->MI_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

    .line 2
    new-instance v0, Lcom/android/camera/BokehVendor;

    const/4 v2, 0x1

    const-string v3, "ARCSOFT_DUAL_BOKEH"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/BokehVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/BokehVendor;->ARCSOFT_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

    .line 3
    new-instance v0, Lcom/android/camera/BokehVendor;

    const/4 v3, 0x2

    const-string v4, "MEGVII_DUAL_BOKEH"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/BokehVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/BokehVendor;->MEGVII_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

    .line 4
    new-instance v0, Lcom/android/camera/BokehVendor;

    const/4 v4, 0x3

    const-string v5, "MEGVII_DUAL_BOKEH_GOOGLE"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/BokehVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/BokehVendor;->MEGVII_DUAL_BOKEH_GOOGLE:Lcom/android/camera/BokehVendor;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/android/camera/BokehVendor;

    .line 5
    sget-object v6, Lcom/android/camera/BokehVendor;->MI_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

    aput-object v6, v5, v1

    sget-object v1, Lcom/android/camera/BokehVendor;->ARCSOFT_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

    aput-object v1, v5, v2

    sget-object v1, Lcom/android/camera/BokehVendor;->MEGVII_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/android/camera/BokehVendor;->$VALUES:[Lcom/android/camera/BokehVendor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/BokehVendor;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/BokehVendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/BokehVendor;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/BokehVendor;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/BokehVendor;->$VALUES:[Lcom/android/camera/BokehVendor;

    invoke-virtual {v0}, [Lcom/android/camera/BokehVendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/BokehVendor;

    return-object v0
.end method
