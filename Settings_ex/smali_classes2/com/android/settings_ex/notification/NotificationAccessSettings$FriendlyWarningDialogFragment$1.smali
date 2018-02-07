.class Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "NotificationAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

.field final synthetic val$cn:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    .param p2, "val$cn"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->this$0:Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->-get2(Lcom/android/settings_ex/notification/NotificationAccessSettings;)Lcom/android/settings_ex/utils/ServiceListing;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/utils/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->this$0:Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->-get1(Lcom/android/settings_ex/notification/NotificationAccessSettings;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->this$0:Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->-get0(Lcom/android/settings_ex/notification/NotificationAccessSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->-wrap0(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method
