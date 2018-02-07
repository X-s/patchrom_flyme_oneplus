.class public Lcom/oneplus/settings/OneplusColorManager;
.super Ljava/lang/Object;
.source "OneplusColorManager.java"


# static fields
.field private static final OP_DCIP3_MODE_LEVEL:I = 0x8

.field private static final OP_DEFAULT_MODE_LEVEL:I = 0x0

.field private static final OP_SRGB_MODE_LEVEL:I = 0x7

.field private static final OP_SYS_DCIP3_PROPERTY:Ljava/lang/String; = "sys.dci3p"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final TAG:Ljava/lang/String; = "OneplusColorManager"

.field private static mCBM:Landroid/hardware/display/ColorBalanceManager;

.field private static mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;


# instance fields
.field private isSupportReadingMode:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.read_mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/OneplusColorManager;->isSupportReadingMode:Z

    .line 35
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/hardware/display/ColorBalanceManager;

    iget-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/ColorBalanceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    .line 32
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/OneplusColorManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/oneplus/settings/OneplusColorManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/OneplusColorManager;->mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;

    return-object v0
.end method

.method private saveColorManagerMode()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorBalanceManager;->sendMsg(I)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public closeDciP3()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string/jumbo v0, "sys.dci3p"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    .line 105
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorBalanceManager;->setDefaultMode(I)V

    .line 102
    return-void
.end method

.method public closesRGB()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    .line 90
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorBalanceManager;->setDefaultMode(I)V

    .line 87
    return-void
.end method

.method public releaseColorManager()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public resetScreenBetterDisplay()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v0, :cond_0

    .line 117
    iget-boolean v0, p0, Lcom/oneplus/settings/OneplusColorManager;->isSupportReadingMode:Z

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    .line 119
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorBalanceManager;->setColorBalance(I)V

    .line 123
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OneplusColorManager;->saveColorManagerMode()V

    .line 115
    :cond_0
    return-void

    .line 121
    :cond_1
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    goto :goto_0
.end method

.method public restoreScreenBetterDisplay()V
    .locals 4

    .prologue
    .line 69
    sget-object v1, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v1, :cond_0

    .line 70
    const-string/jumbo v1, "OneplusColorManager"

    const-string/jumbo v2, "orestoreScreenBetterDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_screen_better_value"

    .line 73
    const/16 v3, 0x2b

    .line 71
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, "screenbettervalue":I
    sget-object v1, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    rsub-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Landroid/hardware/display/ColorBalanceManager;->setColorBalance(I)V

    .line 76
    .end local v0    # "screenbettervalue":I
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OneplusColorManager;->saveColorManagerMode()V

    .line 68
    return-void
.end method

.method public saveScreenBetter()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oneplus/settings/OneplusColorManager;->saveColorManagerMode()V

    .line 64
    return-void
.end method

.method public setActiveMode(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 127
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public setActivetNightMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    .line 51
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorBalanceManager;->setDefaultMode(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public setColorBalance(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 55
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManager;->setColorBalance(I)V

    .line 54
    :cond_0
    return-void
.end method

.method public setDciP3()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    .line 96
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorBalanceManager;->setDefaultMode(I)V

    .line 99
    :cond_0
    const-string/jumbo v0, "sys.dci3p"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setNightModeLevel(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 109
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    .line 111
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManager;->setDefaultMode(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public setNotActivetNightMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    .line 43
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v2}, Landroid/hardware/display/ColorBalanceManager;->setDefaultMode(I)V

    .line 39
    :cond_0
    return-void
.end method

.method public setsRGB()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorBalanceManager;->setActiveMode(I)V

    .line 82
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mCBM:Landroid/hardware/display/ColorBalanceManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorBalanceManager;->setDefaultMode(I)V

    .line 84
    :cond_0
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
