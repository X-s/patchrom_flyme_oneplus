.class public Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendlyWarningDialogFragment"
.end annotation


# static fields
.field static final KEY_COMPONENT:Ljava/lang/String; = "c"

.field static final KEY_LABEL:Ljava/lang/String; = "l"


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationAccessSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/NotificationAccessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/NotificationAccessSettings;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->this$0:Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 119
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "l"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "label":Ljava/lang/String;
    const-string/jumbo v4, "c"

    .line 122
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 125
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 126
    const/4 v6, 0x0

    aput-object v2, v5, v6

    const v6, 0x7f0e0e59

    .line 125
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "summary":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->this$0:Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-static {v5}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->-get0(Lcom/android/settings_ex/notification/NotificationAccessSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 131
    new-instance v5, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;-><init>(Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;Landroid/content/ComponentName;)V

    .line 130
    const v6, 0x7f0e0e5a

    .line 127
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 141
    new-instance v5, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$2;-><init>(Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;)V

    .line 140
    const v6, 0x7f0e0e5b

    .line 127
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "l"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    return-object p0
.end method
