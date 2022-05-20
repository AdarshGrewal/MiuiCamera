.class public Lcom/android/camera/features/mode/BaseModuleDevice;
.super Ljava/lang/Object;
.source "BaseModuleDevice.java"

# interfaces
.implements Lcom/android/camera/features/mode/IModuleDevice;


# static fields
.field public static final TAG:Ljava/lang/String; = "ModuleDevice"


# instance fields
.field public mModule:Lcom/android/camera/module/Module;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachModule(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/BaseModuleDevice;->mModule:Lcom/android/camera/module/Module;

    return-void
.end method

.method public final getModule()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mode/BaseModuleDevice;->mModule:Lcom/android/camera/module/Module;

    return-object v0
.end method

.method public getOperatingMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
