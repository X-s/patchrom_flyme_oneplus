.class public Lcom/oneplus/settings/OPHomeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPHomeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPHomeSettings$HomeAppPreference;,
        Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_SUPPORT_MANAGED_PROFILES:Ljava/lang/String; = "support_managed_profiles"

.field public static final HOME_PREFS:Ljava/lang/String; = "home_prefs"

.field public static final HOME_PREFS_DO_SHOW:Ljava/lang/String; = "do_show"

.field public static final HOME_SHOW_NOTICE:Ljava/lang/String; = "show"

.field static final REQUESTING_UNINSTALL:I = 0xa

.field static final TAG:Ljava/lang/String; = "HomeSettings"


# instance fields
.field private mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field mHomeClickListener:Landroid/view/View$OnClickListener;

.field private mHomeComponentSet:[Landroid/content/ComponentName;

.field private final mHomeFilter:Landroid/content/IntentFilter;

.field private mHomePackageReceiver:Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;

.field private mLauncherCategory:Lcom/android/settings_ex/ui/OPLauncherViewCategory;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefGroup:Landroid/preference/PreferenceGroup;

.field private mPreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowNotice:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 83
    iput-object v1, p0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .line 86
    new-instance v0, Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;-><init>(Lcom/oneplus/settings/OPHomeSettings;Lcom/oneplus/settings/OPHomeSettings$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mHomePackageReceiver:Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;

    .line 94
    new-instance v0, Lcom/oneplus/settings/OPHomeSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPHomeSettings$1;-><init>(Lcom/oneplus/settings/OPHomeSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/oneplus/settings/OPHomeSettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPHomeSettings$2;-><init>(Lcom/oneplus/settings/OPHomeSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPHomeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPHomeSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oneplus/settings/OPHomeSettings;->buildHomeActivitiesList()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPHomeSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPHomeSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mPrefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPHomeSettings;)Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPHomeSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/OPHomeSettings;Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPHomeSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPHomeSettings;)Lcom/android/settings_ex/ui/OPLauncherViewCategory;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPHomeSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mLauncherCategory:Lcom/android/settings_ex/ui/OPLauncherViewCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/OPHomeSettings;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPHomeSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/OPHomeSettings;)[Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPHomeSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/OPHomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPHomeSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private buildHomeActivitiesList()V
    .locals 18

    .prologue
    .line 261
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v14, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v14}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v12

    .line 265
    .local v12, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 266
    .local v2, "context":Landroid/content/Context;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .line 267
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 269
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/settings/OPHomeSettings;->mLauncherCategory:Lcom/android/settings_ex/ui/OPLauncherViewCategory;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 270
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/settings/OPHomeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mPrefs:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, "prefIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v9, "support_managed_profiles"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 277
    .local v17, "supportManagedProfilesExtra":Z
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/OPHomeSettings;->hasManagedProfile()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v17, :cond_4

    :cond_0
    const/16 v16, 0x1

    .line 279
    .local v16, "mustSupportManagedProfile":Z
    :goto_0
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v15, v7, :cond_7

    .line 280
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 281
    .local v11, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v8, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 282
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v3, "activityName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.oneplus.hydrogen.launcher"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.android.launcher3"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 291
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    aput-object v3, v7, v15

    .line 293
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 294
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 297
    .local v6, "name":Ljava/lang/CharSequence;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oneplus/settings/OPHomeSettings;->launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 299
    new-instance v1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f09043d

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/oneplus/settings/OPHomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V

    .line 311
    .local v1, "pref":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 314
    invoke-virtual {v3, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 315
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .line 316
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    iget-object v7, v7, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "launcher3"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 318
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mLauncherCategory:Lcom/android/settings_ex/ui/OPLauncherViewCategory;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->setLauncher(I)V

    .line 323
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 279
    .end local v1    # "pref":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "name":Ljava/lang/CharSequence;
    :cond_3
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 277
    .end local v3    # "activityName":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v15    # "i":I
    .end local v16    # "mustSupportManagedProfile":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 307
    .restart local v3    # "activityName":Landroid/content/ComponentName;
    .restart local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "name":Ljava/lang/CharSequence;
    .restart local v8    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "candidate":Landroid/content/pm/ResolveInfo;
    .restart local v15    # "i":I
    .restart local v16    # "mustSupportManagedProfile":Z
    :cond_5
    new-instance v1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/oneplus/settings/OPHomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V

    .restart local v1    # "pref":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    goto :goto_2

    .line 320
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mLauncherCategory:Lcom/android/settings_ex/ui/OPLauncherViewCategory;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/settings_ex/ui/OPLauncherViewCategory;->setLauncher(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 324
    .end local v1    # "pref":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "name":Ljava/lang/CharSequence;
    :catch_0
    move-exception v13

    .line 325
    .local v13, "e":Ljava/lang/Exception;
    const-string v7, "HomeSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem dealing with activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 329
    .end local v3    # "activityName":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    if-eqz v7, :cond_9

    .line 330
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    invoke-virtual {v7}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/app/Activity;->setResult(I)V

    .line 334
    :cond_8
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/oneplus/settings/OPHomeSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/oneplus/settings/OPHomeSettings$6;-><init>(Lcom/oneplus/settings/OPHomeSettings;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    :cond_9
    return-void
.end method

.method private hasManagedProfile()Z
    .locals 6

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 344
    .local v0, "context":Landroid/content/Context;
    const-string v5, "user"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPHomeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 345
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 346
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 347
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 348
    const/4 v5, 0x1

    .line 350
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 355
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 359
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v3}, Lcom/oneplus/settings/OPHomeSettings;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 361
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    .line 366
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method makeCurrentHome(Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V
    .locals 3
    .param p1, "newHome"    # Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setChecked(Z)V

    .line 122
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/oneplus/settings/OPHomeSettings$5;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/OPHomeSettings$5;-><init>(Lcom/oneplus/settings/OPHomeSettings;Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/oneplus/settings/OPHomeSettings$4;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPHomeSettings$4;-><init>(Lcom/oneplus/settings/OPHomeSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/OPHomeSettings$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPHomeSettings$3;-><init>(Lcom/oneplus/settings/OPHomeSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 210
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 227
    invoke-direct {p0}, Lcom/oneplus/settings/OPHomeSettings;->buildHomeActivitiesList()V

    .line 230
    const/16 v2, 0xa

    if-le p1, v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    if-nez v2, :cond_0

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/OPHomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/oneplus/settings/OPHomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .line 239
    .local v1, "pref":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    iget-boolean v2, v1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->isSystem:Z

    if-eqz v2, :cond_3

    .line 240
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPHomeSettings;->makeCurrentHome(Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V

    .line 251
    .end local v0    # "i":I
    .end local v1    # "pref":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/OPHomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 252
    iget-boolean v2, p0, Lcom/oneplus/settings/OPHomeSettings;->mShowNotice:Z

    if-eqz v2, :cond_1

    .line 253
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/settings/OPHomeSettings;->mShowNotice:Z

    .line 254
    invoke-static {}, Lcom/android/settings_ex/SettingsActivity;->requestHomeNotice()V

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->finishFragment()V

    .line 258
    :cond_2
    return-void

    .line 237
    .restart local v0    # "i":I
    .restart local v1    # "pref":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 375
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPHomeSettings;->addPreferencesFromResource(I)V

    .line 377
    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 378
    const-string v1, "home"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/oneplus/settings/OPHomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    .line 380
    new-instance v1, Lcom/android/settings_ex/ui/OPLauncherViewCategory;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings_ex/ui/OPLauncherViewCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/OPHomeSettings;->mLauncherCategory:Lcom/android/settings_ex/ui/OPLauncherViewCategory;

    .line 382
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/OPHomeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 383
    iget-object v1, p0, Lcom/oneplus/settings/OPHomeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 387
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "show"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/settings/OPHomeSettings;->mShowNotice:Z

    .line 390
    return-void

    :cond_0
    move v1, v2

    .line 387
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 409
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 410
    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPHomeSettings;->mHomePackageReceiver:Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 520
    move-object v2, p1

    check-cast v2, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .line 521
    .local v2, "prefs":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    iget v3, v2, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 522
    .local v0, "index":I
    iget-object v3, p0, Lcom/oneplus/settings/OPHomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .line 523
    .local v1, "pref":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    iget-boolean v3, v1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->isChecked:Z

    if-nez v3, :cond_0

    .line 524
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPHomeSettings;->makeCurrentHome(Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V

    .line 526
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 3
    .param p1, "emiter"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "onRadioButtonClicked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 517
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 394
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 396
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/oneplus/settings/OPHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPHomeSettings;->mHomePackageReceiver:Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    invoke-direct {p0}, Lcom/oneplus/settings/OPHomeSettings;->buildHomeActivitiesList()V

    .line 405
    return-void
.end method

.method uninstallApp(Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .prologue
    const/4 v3, 0x0

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->uninstallTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 215
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    .local v2, "uninstallIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    iget-boolean v4, p1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->isChecked:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v1, v3, 0xa

    .line 219
    .local v1, "requestCode":I
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/settings/OPHomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    return-void
.end method
