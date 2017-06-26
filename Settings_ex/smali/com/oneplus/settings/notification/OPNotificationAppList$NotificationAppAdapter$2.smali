.class Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$2;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$2;->this$1:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$2;->this$1:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    iget-object v3, v3, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getValue(Landroid/content/Context;)I

    move-result v0

    .line 351
    .local v0, "value":I
    if-nez v0, :cond_0

    move v0, v1

    .line 352
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$2;->this$1:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    iget-object v3, v3, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;
    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/widget/button/OPSwitch;

    move-result-object v3

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/oneplus/widget/button/OPSwitch;->setChecked(Z)V

    .line 353
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$2;->this$1:Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;

    iget-object v1, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->setValue(Landroid/content/Context;I)V

    .line 354
    return-void

    :cond_0
    move v0, v2

    .line 351
    goto :goto_0

    :cond_1
    move v1, v2

    .line 352
    goto :goto_1
.end method
