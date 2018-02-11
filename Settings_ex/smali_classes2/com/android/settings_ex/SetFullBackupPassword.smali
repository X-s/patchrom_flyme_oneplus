.class public Lcom/android/settings_ex/SetFullBackupPassword;
.super Landroid/app/Activity;
.source "SetFullBackupPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SetFullBackupPassword$1;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SetFullBackupPassword"


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancel:Lcom/oneplus/lib/widget/button/OPButton;

.field mConfirmNewPw:Landroid/widget/TextView;

.field mCurrentPw:Landroid/widget/TextView;

.field mNewPw:Landroid/widget/TextView;

.field mSet:Lcom/oneplus/lib/widget/button/OPButton;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings_ex/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SetFullBackupPassword$1;-><init>(Lcom/android/settings_ex/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SetFullBackupPassword"

    const-string/jumbo v2, "Unable to communicate with backup manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-string/jumbo v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 90
    const v1, 0x7f040190

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/SetFullBackupPassword;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 93
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    const v1, 0x7f0e010f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/SetFullBackupPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/SetFullBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 97
    const/16 v2, 0x2000

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 100
    :cond_0
    const v1, 0x7f1102e0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f1102e2

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f1102e4

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f1102e5

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mCancel:Lcom/oneplus/lib/widget/button/OPButton;

    .line 105
    const v1, 0x7f1102e6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mSet:Lcom/oneplus/lib/widget/button/OPButton;

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mCancel:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v2, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mSet:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v2, p0, Lcom/android/settings_ex/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/SetFullBackupPassword;->finish()V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
