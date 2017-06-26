.class Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/oneplus/settings/notification/OPNotificationAppList$Row;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

.field final synthetic val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;->this$1:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    iput-object p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 425
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;->this$1:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    iget-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "app_package"

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iget-object v4, v4, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "app_uid"

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iget v4, v4, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_settings_intent"

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v3, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "third_call_finish"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings_intent"

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iget-object v3, v3, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 435
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
