.class Lcom/oneplus/settings/notification/OPNotificationAppList$3;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;->refreshDisplayedItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

.field final synthetic val$position:I

.field final synthetic val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;I)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    iput-object p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iput p3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 239
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 240
    .local v0, "enable":Z
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v3, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->ledDisabled:Z

    .line 241
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotificationBackend:Lcom/android/settings_ex/notification/NotificationBackend;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/android/settings_ex/notification/NotificationBackend;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    iget-object v3, v3, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/settings_ex/notification/NotificationBackend;->setLedEnabled(Ljava/lang/String;Z)Z

    .line 242
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->val$position:I

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->val$row:Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$300(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return v2

    .line 240
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
