.class public Lmiuix/os/Environment;
.super Landroid/os/Environment;
.source "Environment.java"


# static fields
.field public static EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File; = null

.field public static final MIUI_APP_DIRECTORY:Ljava/io/File;

.field public static final MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

.field public static final MIUI_DATA_DIRECTORY:Ljava/io/File;

.field public static final MIUI_DIRECTORY_NAME:Ljava/lang/String; = "MIUI"

.field public static final MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

.field public static sCpuCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_APP_DIRECTORY:Ljava/io/File;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "preset_apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

    const/4 v0, 0x0

    .line 5
    sput v0, Lmiuix/os/Environment;->sCpuCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCpuCount()I
    .locals 6

    .line 1
    sget v0, Lmiuix/os/Environment;->sCpuCount:I

    if-nez v0, :cond_2

    const-string v0, "cpu[0-9]*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 4
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sput v4, Lmiuix/os/Environment;->sCpuCount:I

    .line 6
    :cond_2
    sget v0, Lmiuix/os/Environment;->sCpuCount:I

    return v0
.end method

.method public static getExternalStorageMiuiDirectory()Ljava/io/File;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :cond_0
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 7
    :cond_1
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMiuiAppDirectory()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/os/Environment;->MIUI_APP_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustomizedDirectory()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/os/Environment;->MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiDataDirectory()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiPresetAppDirectory()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/os/Environment;->MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
