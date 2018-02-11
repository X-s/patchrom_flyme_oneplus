.class public Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AppInfoBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppInfoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "errorCode"    # I

    .prologue
    .line 248
    new-instance v1, Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;-><init>()V

    .line 249
    .local v1, "dialogFragment":Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string/jumbo v2, "moveError"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 253
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 239
    .local v2, "id":I
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "moveError"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, "errorCode":I
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/AppInfoBase;

    invoke-virtual {v3, v2, v1}, Lcom/android/settings_ex/applications/AppInfoBase;->createDialog(II)Landroid/app/AlertDialog;

    move-result-object v0

    .line 241
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 242
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_0
    return-object v0
.end method
