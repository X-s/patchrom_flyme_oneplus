.class Lcom/oneplus/settings/notification/OPNotificationAppList$2;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
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

    .prologue
    .line 195
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$2;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$2;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$2;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/oneplus/settings/notification/OPNotificationAppList;->refreshDisplayedItems(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$100(Lcom/oneplus/settings/notification/OPNotificationAppList;Ljava/util/ArrayList;)V

    .line 199
    return-void
.end method
