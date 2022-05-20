.class public Lcom/android/camera/SettingUiState;
.super Ljava/lang/Object;
.source "SettingUiState.java"


# instance fields
.field public isMutexEnable:Z

.field public isNeed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/SettingUiState;->isNeed:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "funcName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  isNeed:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/camera/SettingUiState;->isNeed:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  isMutexEnable:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingUiState"

    .line 2
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
