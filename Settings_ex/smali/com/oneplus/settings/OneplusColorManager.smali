.class public Lcom/oneplus/settings/OneplusColorManager;
.super Ljava/lang/Object;
.source "OneplusColorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;,
        Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;
    }
.end annotation


# static fields
.field private static final MODE_CREATE_ING:I = 0x1

.field private static final MODE_CREATE_NONE:I = 0x0

.field private static final OP_SRGB_MODE_LEVEL:I = 0x7

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final TAG:Ljava/lang/String; = "OneplusColorManager"

.field private static mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;


# instance fields
.field private cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private mContext:Landroid/content/Context;

.field private mCreateModeState:I

.field private mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mCreateModeState:I

    .line 37
    iput-object p1, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/oneplus/settings/OneplusColorManager;->initColorManager()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OneplusColorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OneplusColorManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/settings/OneplusColorManager;->getColorManagerInstance()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OneplusColorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OneplusColorManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/settings/OneplusColorManager;->saveColorMode()V

    return-void
.end method

.method private createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 6
    .param p1, "pa"    # [Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .prologue
    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->mModeList:Ljava/util/ArrayList;

    .line 123
    move-object v0, p1

    .local v0, "arr$":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 124
    .local v1, "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    iget-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->mModeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;

    invoke-direct {v5, p0, v1}, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;-><init>(Lcom/oneplus/settings/OneplusColorManager;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :cond_0
    return-void
.end method

.method private getColorManagerInstance()V
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings_ex/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "OneplusColorManager"

    const-string v1, "not support eyecare !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/OneplusColorManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/oneplus/settings/OneplusColorManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/OneplusColorManager;->mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;

    return-object v0
.end method

.method private initColorManager()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/oneplus/settings/OneplusColorManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OneplusColorManager$1;-><init>(Lcom/oneplus/settings/OneplusColorManager;)V

    .line 48
    .local v0, "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    iget-object v2, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v1

    .line 49
    .local v1, "retVal":I
    if-eqz v1, :cond_0

    .line 50
    const-string v2, "OneplusColorManager"

    const-string v3, "Connection failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method

.method private isFactoryMode(Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;)Z
    .locals 2
    .param p1, "mode"    # Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;

    .prologue
    .line 128
    iget-object v0, p1, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getModeType()Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modeExists(Ljava/lang/String;)Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;
    .locals 6
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    .line 135
    .local v2, "modeDataArray":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    if-eqz v2, :cond_0

    .line 136
    invoke-direct {p0, v2}, Lcom/oneplus/settings/OneplusColorManager;->createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    .line 138
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->mModeList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    move-object v1, v3

    .line 146
    :goto_0
    return-object v1

    .line 141
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;

    .line 142
    .local v1, "mode":Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;
    iget-object v4, v1, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->modename:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v1    # "mode":Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;
    :cond_3
    move-object v1, v3

    .line 146
    goto :goto_0
.end method

.method private saveColorMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 69
    const-string v2, "oneplus_color_mode"

    .line 72
    .local v2, "modeName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 73
    .local v1, "modeId":I
    iget-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v4, :cond_0

    .line 74
    invoke-direct {p0, v2}, Lcom/oneplus/settings/OneplusColorManager;->modeExists(Ljava/lang/String;)Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;

    move-result-object v0

    .local v0, "mode":Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;
    if-eqz v0, :cond_3

    .line 75
    invoke-direct {p0, v0}, Lcom/oneplus/settings/OneplusColorManager;->isFactoryMode(Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    .end local v0    # "mode":Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v0    # "mode":Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, v0, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->modeID:I

    invoke-virtual {v4, v5, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->modifyMode(ILjava/lang/String;)I

    move-result v3

    .line 80
    .local v3, "retVal":I
    if-ltz v3, :cond_0

    .line 83
    iget v1, v0, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->modeID:I

    .line 95
    .end local v3    # "retVal":I
    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v4, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 96
    iget-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v4, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    goto :goto_0

    .line 86
    :cond_3
    iget v4, p0, Lcom/oneplus/settings/OneplusColorManager;->mCreateModeState:I

    if-eq v4, v5, :cond_0

    .line 89
    iput v5, p0, Lcom/oneplus/settings/OneplusColorManager;->mCreateModeState:I

    .line 90
    iget-object v4, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v4, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->createNewMode(Ljava/lang/String;)I

    move-result v1

    .line 91
    if-gez v1, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public closesRGB()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "sys.srgb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public releaseColorManager()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->release()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 214
    :cond_0
    return-void
.end method

.method public resetScreenBetterDisplay()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 200
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;->interrupt()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    .line 204
    :cond_0
    new-instance v0, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;-><init>(Lcom/oneplus/settings/OneplusColorManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;->start()V

    .line 207
    :cond_1
    return-void
.end method

.method public restoreScreenBetterDisplay()V
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "OneplusColorManager"

    const-string v2, "orestoreScreenBetterDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_screen_better_value"

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 170
    .local v0, "screenbettervalue":I
    iget-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 172
    .end local v0    # "screenbettervalue":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;->interrupt()V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    .line 176
    :cond_1
    new-instance v1, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;-><init>(Lcom/oneplus/settings/OneplusColorManager;)V

    iput-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    .line 177
    iget-object v1, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;->start()V

    .line 178
    return-void
.end method

.method public saveScreenBetter()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;->interrupt()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    .line 160
    :cond_0
    new-instance v0, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;-><init>(Lcom/oneplus/settings/OneplusColorManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mSaveColotModeThread:Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager$SaveColotModeThread;->start()V

    .line 162
    return-void
.end method

.method public setColorBalance(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 153
    :cond_0
    return-void
.end method

.method public setNightModeLevel(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0, p1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    .line 193
    return-void
.end method

.method public setsRGB()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 181
    const-string v0, "sys.srgb"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    .line 184
    return-void
.end method
