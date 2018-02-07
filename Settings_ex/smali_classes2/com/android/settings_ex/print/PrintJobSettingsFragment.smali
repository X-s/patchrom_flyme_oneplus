.class public Lcom/android/settings_ex/print/PrintJobSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrintJobSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/print/PrintJobSettingsFragment$1;
    }
.end annotation


# static fields
.field private static final EXTRA_PRINT_JOB_ID:Ljava/lang/String; = "EXTRA_PRINT_JOB_ID"

.field private static final MENU_ITEM_ID_CANCEL:I = 0x1

.field private static final MENU_ITEM_ID_RESTART:I = 0x2

.field private static final PRINT_JOB_MESSAGE_PREFERENCE:Ljava/lang/String; = "print_job_message_preference"

.field private static final PRINT_JOB_PREFERENCE:Ljava/lang/String; = "print_job_preference"


# instance fields
.field private mMessagePreference:Landroid/support/v7/preference/Preference;

.field private mPrintJobId:Landroid/print/PrintJobId;

.field private mPrintJobPreference:Landroid/support/v7/preference/Preference;

.field private final mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private mPrintManager:Landroid/print/PrintManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/print/PrintJobSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->updateUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings_ex/print/PrintJobSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment$1;-><init>(Lcom/android/settings_ex/print/PrintJobSettingsFragment;)V

    .line 54
    iput-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 45
    return-void
.end method

.method private getPrintJob()Landroid/print/PrintJob;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object v0

    return-object v0
.end method

.method private processArguments()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "printJobId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    .line 162
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    goto :goto_0
.end method

.method private updateUi()V
    .locals 12

    .prologue
    const v5, 0x7f0e0b25

    const/4 v4, 0x3

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v7

    .line 178
    .local v7, "printJob":Landroid/print/PrintJob;
    if-nez v7, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    .line 180
    return-void

    .line 183
    :cond_0
    invoke-virtual {v7}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    .line 185
    return-void

    .line 188
    :cond_2
    invoke-virtual {v7}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v6

    .line 190
    .local v6, "info":Landroid/print/PrintJobInfo;
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    :pswitch_0
    iget-object v9, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    .line 219
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    .line 220
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v2

    move v5, v4

    .line 219
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v10, v11

    .line 218
    const v0, 0x7f0e0b23

    invoke-virtual {p0, v0, v10}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 235
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/print/PrintJobInfo;->getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 236
    .local v8, "status":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "print_job_message_preference"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 175
    return-void

    .line 193
    .end local v8    # "status":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-virtual {v7}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_4

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    new-array v1, v11, [Ljava/lang/Object;

    .line 195
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0e0b24

    .line 194
    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    new-array v1, v11, [Ljava/lang/Object;

    .line 198
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 197
    invoke-virtual {p0, v5, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 203
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    new-array v1, v11, [Ljava/lang/Object;

    .line 204
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0e0b26

    .line 203
    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 208
    :pswitch_4
    invoke-virtual {v7}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    new-array v1, v11, [Ljava/lang/Object;

    .line 210
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0e0b27

    .line 209
    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    new-array v1, v11, [Ljava/lang/Object;

    .line 213
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 212
    invoke-virtual {p0, v5, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 226
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f020130

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    goto/16 :goto_1

    .line 231
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    goto/16 :goto_1

    .line 242
    .restart local v8    # "status":Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 223
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x4e

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 121
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v1

    .line 122
    .local v1, "printJob":Landroid/print/PrintJob;
    if-nez v1, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    invoke-virtual {v1}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    const v3, 0x7f0e0b22

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 129
    .local v0, "cancel":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 132
    .end local v0    # "cancel":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {v1}, Landroid/print/PrintJob;->isFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    const v3, 0x7f0e0b21

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    const/4 v4, 0x2

    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 135
    .local v2, "restart":Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 118
    .end local v2    # "restart":Landroid/view/MenuItem;
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->addPreferencesFromResource(I)V

    .line 80
    const-string/jumbo v1, "print_job_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    .line 81
    const-string/jumbo v1, "print_job_message_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 84
    const-string/jumbo v2, "print"

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getUserId()I

    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0e0b20

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->processArguments()V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->setHasOptionsMenu(Z)V

    .line 93
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    .line 143
    .local v0, "printJob":Landroid/print/PrintJob;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 159
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 146
    :pswitch_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->cancel()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    .line 148
    return v2

    .line 152
    :pswitch_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->restart()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    .line 154
    return v2

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 105
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->updateUi()V

    .line 103
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 113
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 111
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setEnabled(Z)V

    .line 97
    return-void
.end method
