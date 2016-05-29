.class public Lcom/android/settings_ex/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# static fields
.field private static final ENV_SECONDARY_STORAGE:Ljava/lang/String; = "SECONDARY_STORAGE"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseExtSDCheckBox:Landroid/widget/CheckBox;

.field private mEraseExtSdCard:Z

.field private mEraseSDCheckBox:Landroid/widget/CheckBox;

.field private mEraseSdCard:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings_ex/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClearConfirm$1;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClearConfirm;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->doMasterClear()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/MasterClearConfirm;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClearConfirm;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/MasterClearConfirm;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClearConfirm;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSDCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/MasterClearConfirm;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClearConfirm;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSdCard:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/MasterClearConfirm;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MasterClearConfirm;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSDCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private doMasterClear()V
    .locals 6

    .prologue
    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSDCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.REASON"

    const-string v3, "MasterClearConfirm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSDCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "MasterClearConfirm"

    const-string v5, "--wipe_media"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/settings/RebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "MasterClearConfirm"

    const-string v5, "--delete_data"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/settings/RebootWipeUserdata;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v2, 0x7f0f00ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v2, 0x7f0f00ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSDCheckBox:Landroid/widget/CheckBox;

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSDCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSDCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings_ex/MasterClearConfirm$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/MasterClearConfirm$2;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v2, 0x7f0f00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSDCheckBox:Landroid/widget/CheckBox;

    .line 198
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSDCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSdCard:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    const-string v1, "SECONDARY_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "dev":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dev name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    if-nez v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSDCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseExtSDCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings_ex/MasterClearConfirm$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/MasterClearConfirm$3;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 237
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    .line 242
    iput-boolean v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    .line 243
    return-void

    :cond_0
    move v1, v2

    .line 237
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const v0, 0x7f04005a

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const v0, 0x7f040059

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 222
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method
