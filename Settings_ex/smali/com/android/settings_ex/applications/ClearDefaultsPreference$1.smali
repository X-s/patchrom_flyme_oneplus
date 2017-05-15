.class Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;
.super Ljava/lang/Object;
.source "ClearDefaultsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ClearDefaultsPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$000(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 96
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 97
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$200(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->isDefaultBrowser(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$300(Lcom/android/settings_ex/applications/ClearDefaultsPreference;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$200(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .line 102
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$000(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$400(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$100(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 107
    iget-object v3, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # getter for: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$500(Lcom/android/settings_ex/applications/ClearDefaultsPreference;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f120021

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, "autoLaunchView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ClearDefaultsPreference$1;->this$0:Lcom/android/settings_ex/applications/ClearDefaultsPreference;

    # invokes: Lcom/android/settings_ex/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V
    invoke-static {v3, v0}, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->access$600(Lcom/android/settings_ex/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V

    .line 110
    .end local v0    # "autoLaunchView":Landroid/widget/TextView;
    .end local v2    # "userId":I
    :cond_1
    return-void

    .line 103
    .restart local v2    # "userId":I
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings_ex/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    const-string v4, "mUsbManager.clearDefaults"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
