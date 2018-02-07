.class Lcom/oneplus/settings/notification/OPNotificationAppList$5;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;->onPostExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPNotificationAppList;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get0(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-get0(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$5;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->-wrap0(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    .line 108
    return-void
.end method
