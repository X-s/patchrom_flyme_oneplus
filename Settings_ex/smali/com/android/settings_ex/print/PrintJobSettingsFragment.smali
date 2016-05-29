.class public Lcom/android/settings_ex/print/PrintJobSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrintJobSettingsFragment.java"


# static fields
.field private static final EXTRA_PRINT_JOB_ID:Ljava/lang/String; = "EXTRA_PRINT_JOB_ID"

.field private static final MENU_ITEM_ID_CANCEL:I = 0x1

.field private static final MENU_ITEM_ID_RESTART:I = 0x2

.field private static final PRINT_JOB_MESSAGE_PREFERENCE:Ljava/lang/String; = "print_job_message_preference"

.field private static final PRINT_JOB_PREFERENCE:Ljava/lang/String; = "print_job_preference"


# instance fields
.field private mListDivider:Landroid/graphics/drawable/Drawable;

.field private mMessagePreference:Landroid/preference/Preference;

.field private mPrintJob:Landroid/print/PrintJob;

.field private mPrintJobId:Landroid/print/PrintJobId;

.field private mPrintJobPreference:Landroid/preference/Preference;

.field private final mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings_ex/print/PrintJobSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment$1;-><init>(Lcom/android/settings_ex/print/PrintJobSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/print/PrintJobSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintJobSettingsFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->updateUi()V

    return-void
.end method

.method private getPrintJob()Landroid/print/PrintJob;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJob:Landroid/print/PrintJob;

    return-object v0
.end method

.method private processArguments()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "printJobId":Ljava/lang/String;
    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    .line 158
    :cond_0
    return-void
.end method

.method private updateUi()V
    .locals 13

    .prologue
    const v3, 0x7f09077b

    const/4 v4, 0x3

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v7

    .line 170
    .local v7, "printJob":Landroid/print/PrintJob;
    if-nez v7, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    .line 240
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {v7}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v7}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v6

    .line 182
    .local v6, "info":Landroid/print/PrintJobInfo;
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v10, 0x7f090779

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v5

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 227
    :goto_2
    :pswitch_1
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getStateReason()Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "stateReason":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "print_job_message_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 185
    .end local v8    # "stateReason":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v7}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f09077a

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 195
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f09077c

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 200
    :pswitch_4
    invoke-virtual {v7}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_5

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f09077d

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3, v1}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 218
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 223
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 235
    .restart local v8    # "stateReason":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mListDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 215
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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->addPreferencesFromResource(I)V

    .line 76
    const-string v0, "print_job_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/preference/Preference;

    .line 77
    const-string v0, "print_job_message_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/preference/Preference;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f090776

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->processArguments()V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->setHasOptionsMenu(Z)V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v1

    .line 116
    .local v1, "printJob":Landroid/print/PrintJob;
    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {v1}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    const v3, 0x7f090778

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 123
    .local v0, "cancel":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 126
    .end local v0    # "cancel":Landroid/view/MenuItem;
    :cond_2
    invoke-virtual {v1}, Landroid/print/PrintJob;->isFailed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const/4 v3, 0x2

    const v4, 0x7f090777

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 129
    .local v2, "restart":Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 137
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJob;->cancel()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJob;->restart()V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->finish()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->updateUi()V

    .line 102
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintJobSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 94
    return-void
.end method
