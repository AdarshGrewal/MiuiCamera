.class public Lcom/android/camera/ThermalDetector$InstanceHolder;
.super Ljava/lang/Object;
.source "ThermalDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThermalDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field public static sInstance:Lcom/android/camera/ThermalDetector;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/ThermalDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/ThermalDetector;-><init>(Lcom/android/camera/ThermalDetector$1;)V

    sput-object v0, Lcom/android/camera/ThermalDetector$InstanceHolder;->sInstance:Lcom/android/camera/ThermalDetector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/android/camera/ThermalDetector;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ThermalDetector$InstanceHolder;->sInstance:Lcom/android/camera/ThermalDetector;

    return-object v0
.end method
