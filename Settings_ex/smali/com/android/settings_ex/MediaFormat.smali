.class public Lcom/android/settings_ex/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalTextView:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInitiateTextView:Landroid/widget/TextView;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-instance v0, Lcom/android/settings_ex/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MediaFormat$1;-><init>(Lcom/android/settings_ex/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 151
    new-instance v0, Lcom/android/settings_ex/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MediaFormat$2;-><init>(Lcom/android/settings_ex/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MediaFormat;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0f00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0f00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const v0, 0x7f090503

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f090505

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const v0, 0x7f090504

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f090506

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 5

    .prologue
    const v4, 0x7f090504

    const v3, 0x7f090503

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0f00f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    const v1, 0x7f090501

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public static isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 4
    .param p0, "volumeObj"    # Landroid/os/storage/StorageVolume;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 71
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, "resourcesObj":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0904e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 82
    .local v0, "isUicc":Z
    goto :goto_0
.end method

.method public static isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 4
    .param p0, "volumeObj"    # Landroid/os/storage/StorageVolume;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    .local v1, "resourcesObj":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0904e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 67
    .local v0, "isUsb":Z
    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 112
    const v0, 0x7f090562

    .line 114
    .local v0, "explanationResId":I
    const v0, 0x7f090562

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const v0, 0x7f090507

    .line 122
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const v0, 0x7f090508

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 139
    :cond_1
    if-nez p2, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->finish()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    .line 227
    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    .line 228
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storage_volume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 233
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    .line 234
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    .line 247
    :cond_0
    return-void
.end method
