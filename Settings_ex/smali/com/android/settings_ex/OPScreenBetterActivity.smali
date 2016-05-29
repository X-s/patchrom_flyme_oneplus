.class public Lcom/android/settings_ex/OPScreenBetterActivity;
.super Landroid/app/Activity;
.source "OPScreenBetterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;
    }
.end annotation


# instance fields
.field private cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field cb:I

.field private currIndex:I

.field private mPage0:Landroid/widget/ImageView;

.field private mPage1:Landroid/widget/ImageView;

.field private mPage2:Landroid/widget/ImageView;

.field private mResetView:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->currIndex:I

    .line 49
    iput v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/OPScreenBetterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getColorManagerInstance()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage0:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/OPScreenBetterActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/OPScreenBetterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->currIndex:I

    return p1
.end method

.method private getColorManagerInstance()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    invoke-static {v1, p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "isSupport":Z
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v0

    .line 176
    if-nez v0, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 206
    .end local v0    # "isSupport":Z
    :cond_0
    :goto_0
    return-void

    .line 180
    .restart local v0    # "isSupport":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getColorBalance()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    .line 181
    iget v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    const/16 v2, -0x64

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 183
    :cond_2
    iput v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    goto :goto_0
.end method

.method private getKey(Ljava/lang/String;ILandroid/content/Context;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 410
    if-nez p3, :cond_0

    .line 417
    :goto_0
    return v1

    .line 415
    :cond_0
    const-string v2, "OTA"

    invoke-virtual {p3, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private save2ColorManager(I)V
    .locals 5
    .param p1, "cb"    # I

    .prologue
    const/16 v4, 0x3e8

    .line 319
    iget-object v2, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const-string v3, "123456"

    invoke-virtual {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->createNewMode(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, "retVal":I
    if-gez v0, :cond_2

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const-string v3, "123456"

    invoke-virtual {v2, v4, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->modifyMode(ILjava/lang/String;)I

    move-result v0

    .line 325
    if-gez v0, :cond_1

    .line 343
    .end local v0    # "retVal":I
    :cond_0
    :goto_0
    return-void

    .line 329
    .restart local v0    # "retVal":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    move-result v1

    .line 330
    .local v1, "retValue":I
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_screen_better_value"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 336
    .end local v1    # "retValue":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    move-result v1

    .line 337
    .restart local v1    # "retValue":I
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_screen_better_value"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private saveKey(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 396
    if-nez p3, :cond_0

    .line 407
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v2, "OTA"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 403
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 404
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->release()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 369
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x6

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 377
    .local v0, "id":I
    const v1, 0x7f0f0134

    if-ne v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 383
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 385
    iput v3, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    .line 386
    iget v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OPScreenBetterActivity;->save2ColorManager(I)V

    .line 393
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const v11, 0x7f0900fc

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setTitle(I)V

    .line 59
    const v10, 0x7f040075

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->setContentView(I)V

    .line 61
    const v10, 0x7f0f0132

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/SeekBar;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 63
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v10, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    const v10, 0x7f0f012c

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 66
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v11, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;-><init>(Lcom/android/settings_ex/OPScreenBetterActivity;)V

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 68
    const v10, 0x7f0f012e

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage0:Landroid/widget/ImageView;

    .line 69
    const v10, 0x7f0f012f

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage1:Landroid/widget/ImageView;

    .line 70
    const v10, 0x7f0f0130

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mPage2:Landroid/widget/ImageView;

    .line 72
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    .local v1, "mLi":Landroid/view/LayoutInflater;
    const v10, 0x7f040076

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 74
    .local v6, "view1":Landroid/view/View;
    const v10, 0x7f040078

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 75
    .local v7, "view2":Landroid/view/View;
    const v10, 0x7f040077

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 77
    .local v8, "view3":Landroid/view/View;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v9, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const v10, 0x7f0f0134

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/OPScreenBetterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    .line 83
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v2, Lcom/android/settings_ex/OPScreenBetterActivity$1;

    invoke-direct {v2, p0, v9}, Lcom/android/settings_ex/OPScreenBetterActivity$1;-><init>(Lcom/android/settings_ex/OPScreenBetterActivity;Ljava/util/ArrayList;)V

    .line 109
    .local v2, "mPagerAdapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 114
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v11, 0x3c

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, "screenbettervalue":I
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "oem_screen_better_value"

    const/4 v12, 0x6

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    add-int/lit8 v5, v10, -0x6

    .line 121
    const-string v10, "ota_upgrade"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getKey(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v3

    .line 122
    .local v3, "ota_upgrade":I
    if-nez v3, :cond_0

    .line 124
    const/16 v5, 0x14

    .line 125
    const-string v10, "ota_upgrade"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11, p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->saveKey(Ljava/lang/String;ILandroid/content/Context;)V

    .line 126
    const-string v10, "ota_upgrade"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getKey(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v3

    .line 127
    const/4 v10, 0x1

    if-ne v3, v10, :cond_2

    .line 128
    const-string v10, "Screen"

    const-string v11, "save ota_upgrade sucessfully !"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v10, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 136
    const/16 v10, 0x14

    if-ne v5, v10, :cond_3

    .line 137
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08005d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
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

    .line 150
    new-instance v0, Lcom/android/settings_ex/OPScreenBetterActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/OPScreenBetterActivity$2;-><init>(Lcom/android/settings_ex/OPScreenBetterActivity;)V

    .line 156
    .local v0, "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    invoke-static {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v4

    .line 157
    .local v4, "retVal":I
    if-eqz v4, :cond_1

    .line 164
    :cond_1
    return-void

    .line 130
    .end local v0    # "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    .end local v4    # "retVal":I
    :cond_2
    const-string v10, "Screen"

    const-string v11, "save ota_upgrade failly !"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    iget-object v10, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08005c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 251
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 253
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->finish()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 350
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 271
    add-int/lit8 v1, p2, -0x14

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    .line 272
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v2, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    invoke-virtual {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 274
    const/16 v1, 0x14

    if-ne p2, v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
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

    .line 299
    :cond_0
    :goto_1
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->mResetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 292
    const-string v1, "Screen"

    const-string v2, "onProgressChanged cMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->release()V

    .line 295
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cMgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 263
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 305
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 357
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 311
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

    .line 313
    iget v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity;->cb:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->save2ColorManager(I)V

    .line 315
    return-void
.end method
