.class public Lcom/android/settings_ex/print/PrintSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings_ex/DialogCreatable;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field static final EXTRA_ADD_PRINTERS_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

.field static final EXTRA_ADD_PRINTERS_TITLE:Ljava/lang/String; = "EXTRA_ADD_PRINTERS_TITLE"

.field static final EXTRA_CHECKED:Ljava/lang/String; = "EXTRA_CHECKED"

.field static final EXTRA_ENABLE_WARNING_MESSAGE:Ljava/lang/String; = "EXTRA_ENABLE_WARNING_MESSAGE"

.field static final EXTRA_ENABLE_WARNING_TITLE:Ljava/lang/String; = "EXTRA_ENABLE_WARNING_TITLE"

.field static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "EXTRA_PREFERENCE_KEY"

.field static final EXTRA_PRINT_JOB_ID:Ljava/lang/String; = "EXTRA_PRINT_JOB_ID"

.field private static final EXTRA_PRINT_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

.field static final EXTRA_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_SERVICE_COMPONENT_NAME"

.field static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_SETTINGS_COMPONENT_NAME"

.field static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "EXTRA_SETTINGS_TITLE"

.field static final EXTRA_TITLE:Ljava/lang/String; = "EXTRA_TITLE"

.field private static final LOADER_ID_PRINT_JOBS_LOADER:I = 0x1

.field private static final PRINT_JOBS_CATEGORY:Ljava/lang/String; = "print_jobs_category"

.field private static final PRINT_SERVICES_CATEGORY:Ljava/lang/String; = "print_services_category"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

.field private final mHandler:Landroid/os/Handler;

.field private mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroid/preference/PreferenceCategory;

.field private mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

.field private final mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 560
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$3;

    invoke-direct {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 105
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Lcom/android/settings_ex/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 107
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/print/PrintSettingsFragment$1;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$2;

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$2;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

    .line 452
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/print/PrintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private startSubSettingsIfNeeded()V
    .locals 4

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 290
    .local v1, "prereference":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 21

    .prologue
    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "print_services_category"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-nez v17, :cond_2

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 208
    .local v6, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.printservice.PrintService"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x84

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 213
    .local v11, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 214
    .local v10, "installedServiceCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_4

    .line 215
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 217
    .local v9, "installedService":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 220
    .local v12, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 221
    .local v16, "title":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v12, v8}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 229
    const-class v17, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 230
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 232
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 233
    .local v14, "serviceEnabled":Z
    if-eqz v14, :cond_3

    .line 234
    const v17, 0x7f09076e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    :goto_2
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 240
    .local v7, "extras":Landroid/os/Bundle;
    const-string v17, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v17, "EXTRA_CHECKED"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v17, "EXTRA_TITLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v13

    .line 247
    .local v13, "printServiceInfo":Landroid/printservice/PrintServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 249
    .local v4, "applicationLabel":Ljava/lang/CharSequence;
    const-string v17, "EXTRA_ENABLE_WARNING_TITLE"

    const v18, 0x7f090768

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v17, "EXTRA_ENABLE_WARNING_MESSAGE"

    const v18, 0x7f090769

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v13}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v15

    .line 255
    .local v15, "settingsClassName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 256
    const-string v17, "EXTRA_SETTINGS_TITLE"

    const v18, 0x7f09076c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v17, "EXTRA_SETTINGS_COMPONENT_NAME"

    new-instance v18, Landroid/content/ComponentName;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-virtual {v13}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "addPrinterClassName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 265
    const-string v17, "EXTRA_ADD_PRINTERS_TITLE"

    const v18, 0x7f09076d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v17, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    new-instance v18, Landroid/content/ComponentName;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_1
    const-string v17, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 214
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 202
    .end local v3    # "addPrinterClassName":Ljava/lang/String;
    .end local v4    # "applicationLabel":Ljava/lang/CharSequence;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v8    # "i":I
    .end local v9    # "installedService":Landroid/content/pm/ResolveInfo;
    .end local v10    # "installedServiceCount":I
    .end local v11    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "preference":Landroid/preference/PreferenceScreen;
    .end local v13    # "printServiceInfo":Landroid/printservice/PrintServiceInfo;
    .end local v14    # "serviceEnabled":Z
    .end local v15    # "settingsClassName":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_0

    .line 236
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v8    # "i":I
    .restart local v9    # "installedService":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "installedServiceCount":I
    .restart local v11    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "preference":Landroid/preference/PreferenceScreen;
    .restart local v14    # "serviceEnabled":Z
    .restart local v16    # "title":Ljava/lang/String;
    :cond_3
    const v17, 0x7f09076f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 277
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "installedService":Landroid/content/pm/ResolveInfo;
    .end local v12    # "preference":Landroid/preference/PreferenceScreen;
    .end local v14    # "serviceEnabled":Z
    .end local v16    # "title":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v17

    if-nez v17, :cond_5

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_5
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 134
    const-string v0, "print_jobs_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    .line 136
    const-string v0, "print_services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Lcom/android/settings_ex/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 143
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "print_service_search_uri"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "searchUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const v2, 0x7f090770

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 169
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 170
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 172
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 299
    .local v1, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_PRINT_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 305
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 307
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 159
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 150
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->updateServicesPreferences()V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    .line 153
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 178
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040046

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, "emptyView":Landroid/view/View;
    const v4, 0x7f0f0026

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 181
    .local v2, "textView":Landroid/widget/TextView;
    const v4, 0x7f09076a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 185
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 186
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_ex/UserSpinnerAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    .line 187
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    if-eqz v4, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400d6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    .line 190
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserSpinnerAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 191
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 192
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/print/PrintSettingsFragment;->setPinnedHeaderView(Landroid/view/View;)V

    .line 194
    :cond_0
    return-void
.end method
