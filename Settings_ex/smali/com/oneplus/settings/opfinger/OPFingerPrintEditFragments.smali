.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;
    }
.end annotation


# static fields
.field private static final DELETED_MESSAGE:I = 0x2

.field private static final DELETED_MESSAGE_FAILED:I = 0x3

.field private static final DELETING_MESSAGE:I = 0x1

.field private static final KEY_OPFINGER_DELETE:Ljava/lang/String; = "opfingerprint_delete"

.field private static final KEY_OPFINGER_EDIT:Ljava/lang/String; = "key_opfinger_edit"

.field private static final KEY_OPFINGER_RENAME:Ljava/lang/String; = "opfingerprint_rename"

.field private static final SHOW_RENAME_DIALOG_MESSAGE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "OPFingerPrintEditFragments"


# instance fields
.field private mDeltePreference:Landroid/preference/Preference;

.field private mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

.field private mOPFingerId:I

.field private mOPFingerName:Ljava/lang/String;

.field private mOPFingerPrintDBManager:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

.field private mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRenamePreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 67
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/fingerprints/service/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
    .param p1, "x1"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 46
    iget v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerId:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/opfinger/OPFingerDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenamePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "key_opfinger_edit"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    .line 108
    const-string v0, "opfingerprint_rename"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenamePreference:Landroid/preference/Preference;

    .line 109
    const-string v0, "opfingerprint_delete"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeltePreference:Landroid/preference/Preference;

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenamePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintDBManager:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

    .line 112
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-direct {v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    .line 113
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "opfinger_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerName:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "opfinger_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerId:I

    .line 102
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 103
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->addPreferencesFromResource(I)V

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDetach()V

    .line 199
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->release()I

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 154
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "key":Ljava/lang/String;
    const-string v1, "opfingerprint_rename"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 170
    :cond_1
    const-string v1, "opfingerprint_delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->initViews()V

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method

.method public showRenameDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04008e

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 204
    .local v2, "renameView":Landroid/view/View;
    const v3, 0x7f0f0196

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 205
    .local v1, "renameEdit":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 207
    new-instance v3, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$4;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$4;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090a40

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09021e

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090ba0

    new-instance v5, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 237
    .local v0, "mRenameDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 238
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;

    invoke-direct {v4, p0, v1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    return-void
.end method
