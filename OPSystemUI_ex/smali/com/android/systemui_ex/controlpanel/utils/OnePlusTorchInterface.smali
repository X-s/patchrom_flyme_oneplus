.class public Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;
.super Ljava/lang/Object;
.source "OnePlusTorchInterface.java"


# static fields
.field private static final LIGHTE_OFF:[B

.field private static final LIGHTE_ON:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->LIGHTE_ON:[B

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    sput-object v0, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->LIGHTE_OFF:[B

    return-void

    .line 29
    nop

    :array_0
    .array-data 1
        0x31t
        0x32t
        0x37t
    .end array-data
.end method

.method public static TorchOff()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 89
    :try_start_0
    const-string v5, "/sys/class/leds/led:torch_0/brightness"

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/sys/class/leds/led:torch_1/brightness"

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/leds/led:torch_0/brightness"

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "brightness0":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/leds/led:torch_1/brightness"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "brightness1":Ljava/io/FileOutputStream;
    sget-object v5, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->LIGHTE_OFF:[B

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    sget-object v5, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->LIGHTE_OFF:[B

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 94
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 95
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 109
    .end local v1    # "brightness0":Ljava/io/FileOutputStream;
    .end local v2    # "brightness1":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v4, 0x0

    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 96
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v5, "/sys/class/leds/led:flash_torch/brightness"

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/leds/led:flash_torch/brightness"

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "brightness":Ljava/io/FileOutputStream;
    sget-object v5, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->LIGHTE_OFF:[B

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "brightness":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 105
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v5, "OnePlusTorchInterface"

    const-string v6, "all file not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static TorchOn()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 61
    :try_start_0
    const-string v5, "/sys/class/leds/led:torch_0/brightness"

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/sys/class/leds/led:torch_1/brightness"

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/leds/led:torch_0/brightness"

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "brightness0":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/leds/led:torch_1/brightness"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, "brightness1":Ljava/io/FileOutputStream;
    sget-object v5, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->LIGHTE_ON:[B

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 65
    sget-object v5, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->LIGHTE_ON:[B

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 66
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 67
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 80
    .end local v1    # "brightness0":Ljava/io/FileOutputStream;
    .end local v2    # "brightness1":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v4, 0x0

    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 68
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v5, "/sys/class/leds/led:flash_torch/brightness"

    invoke-static {v5}, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/leds/led:flash_torch/brightness"

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "brightness":Ljava/io/FileOutputStream;
    sget-object v5, Lcom/android/systemui_ex/controlpanel/utils/OnePlusTorchInterface;->LIGHTE_ON:[B

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 71
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v0    # "brightness":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 77
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v5, "OnePlusTorchInterface"

    const-string v6, "all file not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static isFileExist(Ljava/lang/String;)Z
    .locals 6
    .param p0, "fineName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 41
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string v3, "OnePlusTorchInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v2, 0x1

    .line 51
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v2

    .line 46
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    const-string v3, "OnePlusTorchInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file not exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
