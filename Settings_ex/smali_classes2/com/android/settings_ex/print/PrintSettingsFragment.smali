.class public Lcom/android/settings_ex/print/PrintSettingsFragment;
.super Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Lcom/android/settings_ex/DialogCreatable;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/print/PrintSettingsFragment$1;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$2;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;,
        Lcom/android/settings_ex/print/PrintSettingsFragment$PrintSummaryProvider;
    }
.end annotation


# static fields
.field static final EXTRA_CHECKED:Ljava/lang/String; = "EXTRA_CHECKED"

.field static final EXTRA_PRINT_JOB_ID:Ljava/lang/String; = "EXTRA_PRINT_JOB_ID"

.field private static final EXTRA_PRINT_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

.field static final EXTRA_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_SERVICE_COMPONENT_NAME"

.field static final EXTRA_TITLE:Ljava/lang/String; = "EXTRA_TITLE"

.field private static final LOADER_ID_PRINT_JOBS_LOADER:I = 0x1

.field private static final LOADER_ID_PRINT_SERVICES:I = 0x2

.field private static final ORDER_LAST:I = 0x7ffffffe

.field private static final PRINT_JOBS_CATEGORY:Ljava/lang/String; = "print_jobs_category"

.field private static final PRINT_SERVICES_CATEGORY:Ljava/lang/String; = "print_services_category"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field public static final TAG:Ljava/lang/String; = "PrintSettingsFragment"


# instance fields
.field private mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mAddNewServiceButton:Landroid/widget/Button;

.field private mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mPrintServicesController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/Preference;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/print/PrintJobInfo;)Z
    .locals 1
    .param p0, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 560
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$1;

    invoke-direct {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment$1;-><init>()V

    .line 559
    sput-object v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 569
    new-instance v0, Lcom/android/settings_ex/print/PrintSettingsFragment$2;

    invoke-direct {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment$2;-><init>()V

    .line 568
    sput-object v0, Lcom/android/settings_ex/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createAddNewServiceIntentOrNull()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 258
    const-string/jumbo v2, "print_service_search_uri"

    .line 257
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "searchUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const/4 v1, 0x0

    return-object v1

    .line 262
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 244
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 245
    return-object v2

    .line 247
    :cond_0
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 248
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    const v2, 0x7f0e0b48

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 249
    const v2, 0x7f02011a

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 250
    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 251
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 252
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 253
    return-object v1
.end method

.method private static shouldShowToUser(Landroid/print/PrintJobInfo;)Z
    .locals 1
    .param p0, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 501
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 498
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startSubSettingsIfNeeded()V
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 273
    .local v1, "prereference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    .line 265
    .end local v1    # "prereference":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f0e0da0

    return v0
.end method

.method protected getIntentActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "android.settings.ACTION_PRINT_SETTINGS"

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x50

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    if-ne v2, p1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 283
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "addNewServiceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 286
    .restart local v0    # "addNewServiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "PrintSettingsFragment"

    const-string/jumbo v3, "Unable to start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 114
    const-string/jumbo v1, "print_jobs_category"

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 116
    const-string/jumbo v1, "print_services_category"

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 119
    new-instance v1, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;)V

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintJobsController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 122
    new-instance v1, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;)V

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 125
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;->onStart()V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    .line 129
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;->onStop()V

    .line 136
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 142
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 144
    .local v1, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 145
    const v5, 0x7f040077

    .line 144
    invoke-virtual {v4, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 146
    .local v2, "emptyView":Landroid/view/View;
    const v4, 0x7f1100c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 147
    .local v3, "textView":Landroid/widget/TextView;
    const v4, 0x7f0e0b42

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 150
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 151
    const v4, 0x7f110152

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    .line 152
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/print/PrintSettingsFragment;->setEmptyView(Landroid/view/View;)V

    .line 141
    return-void
.end method
