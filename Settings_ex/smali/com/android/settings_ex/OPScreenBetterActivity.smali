.class public Lcom/android/settings_ex/OPScreenBetterActivity;
.super Landroid/app/Activity;
.source "OPScreenBetterActivity.java"

# interfaces
.implements Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;,
        Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;,
        Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final MODE_CREATE_COMPLETE:I = 0x2

.field private static final MODE_CREATE_ING:I = 0x1

.field private static final MODE_CREATE_NONE:I = 0x0

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "disable_eyecare_keys"


# instance fields
.field private cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private cb:I

.field private currIndex:I

.field private mCreateModeState:I

.field private mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mPage0:Landroid/widget/ImageView;

.field private mPage1:Landroid/widget/ImageView;

.field private mPage2:Landroid/widget/ImageView;

.field private mResetView:Lcom/oneplus/widget/button/OPButton;

.field private mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

.field private mSeekBar:Lcom/oneplus/widget/OPSeekBar;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->currIndex:I

    .line 54
    iput v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    .line 346
    iput v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mCreateModeState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/OPScreenBetterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getColorManagerInstance()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage0:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/OPScreenBetterActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->currIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/OPScreenBetterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->saveColorMode()V

    return-void
.end method

.method private createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 6
    .param p1, "pa"    # [Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .prologue
    .line 338
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    .line 339
    move-object v0, p1

    .local v0, "arr$":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 340
    .local v1, "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    iget-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;

    invoke-direct {v5, p0, v1}, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;-><init>(Lcom/android/settings_ex/OPScreenBetterActivity;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :cond_0
    return-void
.end method

.method private deleteOtherModeExists()V
    .locals 6

    .prologue
    .line 414
    iget-object v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    .line 415
    .local v2, "modeDataArray":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    if-eqz v2, :cond_0

    .line 416
    invoke-direct {p0, v2}, Lcom/android/settings_ex/OPScreenBetterActivity;->createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    .line 418
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 426
    :cond_1
    return-void

    .line 421
    :cond_2
    const-string v3, "OneplusColor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zhuyang--mModeList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;

    .line 423
    .local v1, "mode":Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;
    iget-object v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v4, v1, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modeID:I

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->deleteMode(I)I

    .line 424
    const-string v3, "OneplusColor"

    const-string v4, "zhuyang--deleteMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteOtherModeExists(Ljava/lang/String;)V
    .locals 6
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    .line 398
    .local v2, "modeDataArray":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    if-eqz v2, :cond_0

    .line 399
    invoke-direct {p0, v2}, Lcom/android/settings_ex/OPScreenBetterActivity;->createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 411
    :cond_1
    return-void

    .line 404
    :cond_2
    const-string v3, "OneplusColor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zhuyang--mModeList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;

    .line 406
    .local v1, "mode":Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;
    iget-object v3, v1, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 407
    iget-object v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v4, v1, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modeID:I

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->deleteMode(I)I

    .line 408
    const-string v3, "OneplusColor"

    const-string v4, "zhuyang--deleteMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getColorManagerInstance()V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v1, p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "isSupport":Z
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v0

    .line 183
    if-nez v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/OPSeekBar;->setEnabled(Z)V

    .line 189
    .end local v0    # "isSupport":Z
    :cond_0
    return-void
.end method

.method private getKey(Ljava/lang/String;ILandroid/content/Context;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 502
    if-nez p3, :cond_0

    .line 509
    :goto_0
    return v1

    .line 507
    :cond_0
    const-string v2, "OTA"

    invoke-virtual {p3, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 509
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private isFactoryMode(Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;)Z
    .locals 2
    .param p1, "mode"    # Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;

    .prologue
    .line 428
    iget-object v0, p1, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getModeType()Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    if-ne v0, v1, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modeExists(Ljava/lang/String;)Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;
    .locals 6
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 382
    iget-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    .line 383
    .local v2, "modeDataArray":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    if-eqz v2, :cond_0

    .line 384
    invoke-direct {p0, v2}, Lcom/android/settings_ex/OPScreenBetterActivity;->createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    .line 386
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    move-object v1, v3

    .line 394
    :goto_0
    return-object v1

    .line 389
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;

    .line 390
    .local v1, "mode":Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;
    iget-object v4, v1, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modename:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v1    # "mode":Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;
    :cond_3
    move-object v1, v3

    .line 394
    goto :goto_0
.end method

.method private save2ColorManager(I)V
    .locals 2
    .param p1, "cb"    # I

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_screen_better_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    return-void
.end method

.method private saveColorMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 349
    const-string v2, "oneplus_color_mode"

    .line 351
    .local v2, "modeName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 352
    .local v1, "modeId":I
    iget-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v4, :cond_0

    .line 353
    invoke-direct {p0, v2}, Lcom/android/settings_ex/OPScreenBetterActivity;->modeExists(Ljava/lang/String;)Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;

    move-result-object v0

    .local v0, "mode":Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;
    if-eqz v0, :cond_3

    .line 354
    invoke-direct {p0, v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->isFactoryMode(Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 378
    .end local v0    # "mode":Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;
    :cond_0
    :goto_0
    return-void

    .line 358
    .restart local v0    # "mode":Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, v0, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modeID:I

    invoke-virtual {v4, v5, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->modifyMode(ILjava/lang/String;)I

    move-result v3

    .line 359
    .local v3, "retVal":I
    if-ltz v3, :cond_0

    .line 362
    iget v1, v0, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modeID:I

    .line 375
    .end local v3    # "retVal":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v4, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 376
    iget-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v4, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    goto :goto_0

    .line 365
    :cond_3
    iget v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mCreateModeState:I

    if-eq v4, v5, :cond_0

    .line 368
    iput v5, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mCreateModeState:I

    .line 369
    iget-object v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v4, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->createNewMode(Ljava/lang/String;)I

    move-result v1

    .line 370
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mCreateModeState:I

    .line 371
    if-gez v1, :cond_2

    goto :goto_0
.end method

.method private saveKey(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    if-nez p3, :cond_0

    .line 499
    :goto_0
    return-void

    .line 493
    :cond_0
    const-string v2, "OTA"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 495
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 496
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->release()V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 457
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x6

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 465
    .local v0, "id":I
    const v1, 0x7f120134

    if-ne v0, v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    .line 471
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 473
    iput v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    .line 474
    iget v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OPScreenBetterActivity;->save2ColorManager(I)V

    .line 475
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    invoke-virtual {v1}, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;->interrupt()V

    .line 477
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    .line 479
    :cond_0
    new-instance v1, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;-><init>(Lcom/android/settings_ex/OPScreenBetterActivity;)V

    iput-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    .line 480
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    invoke-virtual {v1}, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;->start()V

    .line 485
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "oem_screen_better_value"

    const/4 v12, 0x6

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const v11, 0x7f0c0287

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setTitle(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-virtual {v10, v11}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    :cond_0
    const v10, 0x7f0400a2

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->setContentView(I)V

    .line 72
    const v10, 0x7f120132

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/oneplus/widget/OPSeekBar;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    .line 74
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v10, p0}, Lcom/oneplus/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;)V

    .line 76
    const v10, 0x7f12012c

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v11, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;-><init>(Lcom/android/settings_ex/OPScreenBetterActivity;)V

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 79
    const v10, 0x7f12012e

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage0:Landroid/widget/ImageView;

    .line 80
    const v10, 0x7f12012f

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage1:Landroid/widget/ImageView;

    .line 81
    const v10, 0x7f120130

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage2:Landroid/widget/ImageView;

    .line 83
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 84
    .local v1, "mLi":Landroid/view/LayoutInflater;
    const v10, 0x7f0400a5

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 85
    .local v6, "view1":Landroid/view/View;
    const v10, 0x7f0400a7

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 86
    .local v7, "view2":Landroid/view/View;
    const v10, 0x7f0400a6

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 88
    .local v8, "view3":Landroid/view/View;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v9, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const v10, 0x7f120134

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/oneplus/widget/button/OPButton;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Lcom/oneplus/widget/button/OPButton;

    .line 94
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Lcom/oneplus/widget/button/OPButton;

    invoke-virtual {v10, p0}, Lcom/oneplus/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v2, Lcom/android/settings_ex/OPScreenBetterActivity$1;

    invoke-direct {v2, p0, v9}, Lcom/android/settings_ex/OPScreenBetterActivity$1;-><init>(Lcom/android/settings_ex/OPScreenBetterActivity;Ljava/util/ArrayList;)V

    .line 120
    .local v2, "mPagerAdapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 125
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    const/16 v11, 0x3c

    invoke-virtual {v10, v11}, Lcom/oneplus/widget/OPSeekBar;->setMax(I)V

    .line 126
    const/4 v5, 0x0

    .line 127
    .local v5, "screenbettervalue":I
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "oem_screen_better_value"

    const/4 v12, 0x6

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    add-int/lit8 v5, v10, -0x6

    .line 132
    const-string v10, "ota_upgrade"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getKey(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v3

    .line 133
    .local v3, "ota_upgrade":I
    if-nez v3, :cond_1

    .line 135
    const/16 v5, 0x14

    .line 136
    const-string v10, "ota_upgrade"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11, p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->saveKey(Ljava/lang/String;ILandroid/content/Context;)V

    .line 137
    const-string v10, "ota_upgrade"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getKey(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v3

    .line 138
    const/4 v10, 0x1

    if-ne v3, v10, :cond_3

    .line 139
    const-string v10, "Screen"

    const-string v11, "save ota_upgrade sucessfully !"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v10, v5}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    .line 147
    const/16 v10, 0x14

    if-ne v5, v10, :cond_4

    .line 148
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Lcom/oneplus/widget/button/OPButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/oneplus/widget/button/OPButton;->setEnabled(Z)V

    .line 153
    :goto_1
    const-string v10, "Screen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate: screenbettervalue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cb : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/android/settings_ex/OPScreenBetterActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/OPScreenBetterActivity$2;-><init>(Lcom/android/settings_ex/OPScreenBetterActivity;)V

    .line 163
    .local v0, "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    invoke-static {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v4

    .line 164
    .local v4, "retVal":I
    if-eqz v4, :cond_2

    .line 171
    :cond_2
    return-void

    .line 141
    .end local v0    # "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    .end local v4    # "retVal":I
    :cond_3
    const-string v10, "Screen"

    const-string v11, "save ota_upgrade failly !"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Lcom/oneplus/widget/button/OPButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/oneplus/widget/button/OPButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 234
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 236
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->finish()V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 436
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 438
    return-void
.end method

.method public onProgressChanged(Lcom/oneplus/widget/OPSeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 254
    add-int/lit8 v1, p2, -0x14

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    .line 255
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v2, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    invoke-virtual {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 257
    const/16 v1, 0x14

    if-ne p2, v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Lcom/oneplus/widget/button/OPButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/button/OPButton;->setEnabled(Z)V

    .line 263
    :goto_0
    const-string v1, "Screen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress change cb : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    :goto_1
    return-void

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Lcom/oneplus/widget/button/OPButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/button/OPButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 271
    const-string v1, "Screen"

    const-string v2, "onProgressChanged cMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->release()V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 246
    return-void
.end method

.method public onStartTrackingTouch(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    .line 284
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 445
    return-void
.end method

.method public onStopTrackingTouch(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    .line 289
    const-string v0, "Screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause progress change cb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->save2ColorManager(I)V

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    invoke-virtual {v0}, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;->interrupt()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    .line 295
    :cond_0
    new-instance v0, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;-><init>(Lcom/android/settings_ex/OPScreenBetterActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSaveColotModeThread:Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;

    invoke-virtual {v0}, Lcom/android/settings_ex/OPScreenBetterActivity$SaveColotModeThread;->start()V

    .line 297
    return-void
.end method
