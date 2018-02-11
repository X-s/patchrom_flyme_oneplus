.class public Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/settings_ex/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatConfirm.java"


# static fields
.field public static final EXTRA_FORGET_UUID:Ljava/lang/String; = "forget_uuid"

.field public static final EXTRA_FORMAT_PRIVATE:Ljava/lang/String; = "format_private"


# instance fields
.field private mFormatPrivate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->finish()V

    .line 36
    return-void

    .line 38
    :cond_0
    const v0, 0x7f0401b1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "format_private"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 41
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->setIllustrationType(I)V

    .line 44
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    if-eqz v0, :cond_2

    .line 45
    new-array v0, v3, [Ljava/lang/String;

    const v2, 0x7f0e08ec

    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->setHeaderText(I[Ljava/lang/String;)V

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 46
    const v1, 0x7f0e08ed

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->setBodyText(I[Ljava/lang/String;)V

    .line 54
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0e08f0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b03f1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 49
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    const v2, 0x7f0e08ee

    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->setHeaderText(I[Ljava/lang/String;)V

    .line 50
    new-array v0, v1, [Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 50
    const v1, 0x7f0e08ef

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->setBodyText(I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onNavigateNext()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string/jumbo v1, "format_private"

    iget-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->mFormatPrivate:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string/jumbo v1, "forget_uuid"

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "forget_uuid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;->finishAffinity()V

    .line 59
    return-void
.end method
