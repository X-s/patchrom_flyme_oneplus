.class Lcom/android/settings_ex/applications/ManageApplications$5;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageApplications;->showAppInstallLocationSettingDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 1700
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$5;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v3, 0x0

    .line 1702
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$5;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1706
    .local v0, "itemValues":[Ljava/lang/String;
    const-string v1, "device"

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1708
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$5;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1735
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1736
    return-void

    .line 1713
    :cond_0
    const-string v1, "sdcard"

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1715
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$5;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1720
    :cond_1
    const-string v1, "auto"

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1722
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$5;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1729
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$5;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
