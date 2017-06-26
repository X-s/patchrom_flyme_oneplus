.class public Lcom/oneplus/settings/OPSettingsActivity;
.super Landroid/app/Activity;
.source "OPSettingsActivity.java"


# instance fields
.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private switchToDashbord(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/app/Fragment;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 37
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 39
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 40
    if-lez p3, :cond_0

    .line 41
    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 43
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 45
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v2, 0x7f0c0c2a

    iput v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mInitialTitleResId:I

    .line 22
    const-class v2, Lcom/oneplus/settings/OPDashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/settings/OPSettingsActivity;->mInitialTitleResId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/settings/OPSettingsActivity;->switchToDashbord(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/app/Fragment;

    .line 26
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 27
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_0

    .line 28
    new-instance v0, Landroid/nfc/NdefMessage;

    const-string v2, "com.android.settings"

    invoke-static {v2}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    new-array v3, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 29
    .local v0, "msg":Landroid/nfc/NdefMessage;
    new-array v2, v5, [Landroid/app/Activity;

    invoke-virtual {v1, v0, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 31
    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    :cond_0
    return-void
.end method
