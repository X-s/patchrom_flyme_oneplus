.class public Lcom/android/settings_ex/print/PrintSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Lcom/android/settings_ex/DialogCreatable;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


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

.field private static final ORDER_LAST:I = 0x3e8

.field private static final PRINT_JOBS_CATEGORY:Ljava/lang/String; = "print_jobs_category"

.field private static final PRINT_SERVICES_CATEGORY:Ljava/lang/String; = "print_services_category"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field public static final TAG:Ljava/lang/String; = "PrintSettingsFragment"


# instance fields
.field private mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

.field private mAddNewServiceButton:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroid/preference/PreferenceCategory;

.field private mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

.field private final mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 615
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$3;

    invoke-direct {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
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

    .line 507
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/print/PrintSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private createAddNewServiceIntentOrNull()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "print_service_search_uri"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "searchUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const/4 v1, 0x0

    .line 320
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private newAddServicePreferenceOrNull()Landroid/preference/Preference;
    .locals 3

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 302
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 303
    const/4 v1, 0x0

    .line 311
    :goto_0
    return-object v1

    .line 305
    :cond_0
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 306
    .local v1, "preference":Landroid/preference/Preference;
    const v2, 0x7f0c0909

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 307
    const v2, 0x7f02006f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 308
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 309
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 310
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    goto :goto_0
.end method

.method private startSubSettingsIfNeeded()V
    .locals 4

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 331
    .local v1, "prereference":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 24

    .prologue
    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "print_services_category"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    if-nez v20, :cond_3

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 214
    .local v8, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 216
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.printservice.PrintService"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x84

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 221
    .local v13, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    .line 222
    .local v12, "installedServiceCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v12, :cond_5

    .line 223
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 225
    .local v11, "installedService":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 228
    .local v15, "preference":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 229
    .local v19, "title":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v15, v10}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 237
    const-class v20, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 238
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 240
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 241
    .local v17, "serviceEnabled":Z
    if-eqz v17, :cond_4

    .line 242
    const v20, 0x7f0c0907

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    :goto_2
    invoke-virtual {v11, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 248
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 249
    invoke-virtual {v15, v7}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :cond_0
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 253
    .local v9, "extras":Landroid/os/Bundle;
    const-string v20, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v20, "EXTRA_CHECKED"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    const-string v20, "EXTRA_TITLE"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v16

    .line 260
    .local v16, "printServiceInfo":Landroid/printservice/PrintServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 262
    .local v5, "applicationLabel":Ljava/lang/CharSequence;
    const-string v20, "EXTRA_ENABLE_WARNING_TITLE"

    const v21, 0x7f0c0901

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v20, "EXTRA_ENABLE_WARNING_MESSAGE"

    const v21, 0x7f0c0902

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {v16 .. v16}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v18

    .line 268
    .local v18, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 269
    const-string v20, "EXTRA_SETTINGS_TITLE"

    const v21, 0x7f0c0905

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v20, "EXTRA_SETTINGS_COMPONENT_NAME"

    new-instance v21, Landroid/content/ComponentName;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "addPrinterClassName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 278
    const-string v20, "EXTRA_ADD_PRINTERS_TITLE"

    const v21, 0x7f0c0906

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v20, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    new-instance v21, Landroid/content/ComponentName;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_2
    const-string v20, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 208
    .end local v4    # "addPrinterClassName":Ljava/lang/String;
    .end local v5    # "applicationLabel":Ljava/lang/CharSequence;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v11    # "installedService":Landroid/content/pm/ResolveInfo;
    .end local v12    # "installedServiceCount":I
    .end local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v16    # "printServiceInfo":Landroid/printservice/PrintServiceInfo;
    .end local v17    # "serviceEnabled":Z
    .end local v18    # "settingsClassName":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_0

    .line 244
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v10    # "i":I
    .restart local v11    # "installedService":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "installedServiceCount":I
    .restart local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "preference":Landroid/preference/PreferenceScreen;
    .restart local v17    # "serviceEnabled":Z
    .restart local v19    # "title":Ljava/lang/String;
    :cond_4
    const v20, 0x7f0c0908

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 290
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "installedService":Landroid/content/pm/ResolveInfo;
    .end local v15    # "preference":Landroid/preference/PreferenceScreen;
    .end local v17    # "serviceEnabled":Z
    .end local v19    # "title":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v20

    if-nez v20, :cond_7

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    :cond_6
    :goto_3
    return-void

    .line 293
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->newAddServicePreferenceOrNull()Landroid/preference/Preference;

    move-result-object v3

    .line 294
    .local v3, "addNewServicePreference":Landroid/preference/Preference;
    if-eqz v3, :cond_6

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 137
    const v0, 0x7f0c0bc4

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x50

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    if-ne v2, p1, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 359
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 361
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v0    # "addNewServiceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 362
    .restart local v0    # "addNewServiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "PrintSettingsFragment"

    const-string v3, "Unable to start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 145
    const-string v0, "print_jobs_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    .line 147
    const-string v0, "print_services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Lcom/android/settings_ex/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 154
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
    .line 339
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/UserAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 340
    .local v1, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_PRINT_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 346
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 348
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
    .line 353
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 170
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 161
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->updateServicesPreferences()V

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    .line 164
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 175
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 177
    .local v1, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040057

    invoke-virtual {v5, v6, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 179
    .local v2, "emptyView":Landroid/view/View;
    const v5, 0x7f120026

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 180
    .local v3, "textView":Landroid/widget/TextView;
    const v5, 0x7f0c0903

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 182
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 183
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 184
    const v5, 0x7f1200a9

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    .line 185
    iget-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 193
    const-string v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 194
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings_ex/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_ex/UserAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

    .line 195
    iget-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

    if-eqz v5, :cond_1

    .line 196
    const v5, 0x7f040118

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/print/PrintSettingsFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    .line 197
    iget-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings_ex/UserAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    iget-object v5, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 200
    :cond_1
    return-void
.end method
